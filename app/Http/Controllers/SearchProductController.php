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
        $OurProduct = OurProduct::inRandomOrder()->paginate(4);
        $Product = Product::inRandomOrder()->paginate(4);
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
