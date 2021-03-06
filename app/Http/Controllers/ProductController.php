<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Gulma;
use App\Product;
use App\ProdukFaq;
use App\ProductCategory;
use App\ProductGroup;
use App\TentangKami;
use App\OurProductCategory;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $product = Product::inRandomOrder()->paginate(3);
        $product_kategori = ProductCategory::get();
        $product_group = ProductGroup::get();
        $pagination = $product->links();
        return view('product-herbisida', [
            'product' => $product,
            'productKategori' => $product_kategori,
            'productGroup' => $product_group,
            'pagination' => $pagination
        ]);
    }

    public function kategoriProduk($id) {
        $product = Product::with(['kelompokProduk'])->where('kategori_id', $id)->paginate(6);
        $productCategorys = ProductCategory::all();
        $namaKategori = ProductCategory::find($id)->category_name;
        $productGroup = ProductGroup::get();
        $ourProductCategorys = OurProductCategory::get();
        $tentangKami = TentangKami::first();
        $pagination = $product->links();

        return view('product-category', [
            'product' => $product,
            'namaKategori' => $namaKategori,
            'productCategorys' => $productCategorys,
            'productGroup' => $productGroup,
            'ourProductCategorys' => $ourProductCategorys,
            'tentangKami' => $tentangKami,
            'pagination' => $pagination
        ]);
    }
    
    public function detailProduk($id) {
        $product = Product::find($id);
        $implementProduct = Gulma::where('produk_id', $id)->first();
        $productGroup = ProductGroup::get();
        $ourProductCategorys = OurProductCategory::get();
        $productCategorys = ProductCategory::all();
        $productFaq = ProdukFaq::where('produk_id', $id)->get();
        $tentangKami = TentangKami::first();

        return view('product-detail', [
            'product' => $product,
            'productCategorys' => $productCategorys,
            'ourProductCategorys' => $ourProductCategorys,
            'implementProduct' => $implementProduct,
            'productFaq' => $productFaq,
            'productCategorys' => $productCategorys,
            'tentangKami' => $tentangKami
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
