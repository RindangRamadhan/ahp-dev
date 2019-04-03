<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\OurProduct;
use App\Product;
use App\OurProductCategory;
use App\ProductCategory;
use App\TentangKami;

class SearchProductController extends Controller
{
    public function index() {
        $OurProduct = OurProduct::inRandomOrder()->get();
        $Product = Product::inRandomOrder()->get();
        $productCategorys = ProductCategory::all();
        $ourProductCategorys = OurProductCategory::all();
        $tentangKami = TentangKami::first();

        return view('search', [
            'otherProducts' => $OurProduct,
            'products' => $Product,
            'productCategorys' => $productCategorys,
            'ourProductCategorys' => $ourProductCategorys,
            'tentangKami' => $tentangKami,
        ]);
    }

    public function search(Request $request) {
        $OurProduct = OurProduct::where('product_name', 'like', '%'.$request->s.'%')->get();
        $Product = Product::where('product_name', 'like', '%'.$request->s.'%')->get();
        $productCategorys = ProductCategory::all();
        $ourProductCategorys = OurProductCategory::all();
        $tentangKami = TentangKami::first();

        return view('search', [
            'otherProducts' => $OurProduct,
            'products' => $Product,
            'productCategorys' => $productCategorys,
            'ourProductCategorys' => $ourProductCategorys,
            'tentangKami' => $tentangKami,
        ]);
    }
}
