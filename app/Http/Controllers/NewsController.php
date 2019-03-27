<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\News;
use App\ProductCategory;
use App\TentangKami;

class NewsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $productCategorys = ProductCategory::get();
        $tentangKami = TentangKami::first();
        $news = News::inRandomOrder()->paginate(3);
        $beritaTerbaru = News::orderBy('updated_at', 'desc')->inRandomOrder()->limit(2)->get();
        $pagination = $news->links();

        return view('news', [
            'news' => $news,
            'beritaTerbaru' => $beritaTerbaru,
            'pagination' => $pagination,
            'productCategorys' => $productCategorys,
            'tentangKami' => $tentangKami
        ]);
    }

    public function detail($id) {
        $productCategorys = ProductCategory::get();
        $tentangKami = TentangKami::first();
        $news = News::inRandomOrder()->paginate(3);
        $details = News::find($id);
        $beritaTerbaru = News::orderBy('updated_at', 'desc')->inRandomOrder()->limit(2)->get();

        return view('news-detail', [
            'news' => $news,
            'details' => $details,
            'beritaTerbaru' => $beritaTerbaru,
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
