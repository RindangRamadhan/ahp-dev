<?php

namespace App\Http\Controllers;

use App\DownloadKatalog;
use Illuminate\Http\Request;

class DownloadKatalogController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
    
    public function downloadKatalog(Request $request)
    {
        $this->validate($request, [
            'nama_lengkap'	=> 'required',
            'email'   		=> 'required',
            'no_telp' 		=> 'required',
        ]);
        
        DownloadKatalog::create([
            'nama_lengkap'	=> $request->nama_lengkap,
            'perusahaan'	=> $request->perusahaan,
            'email'			=> $request->email,
            'no_telp'		=> $request->no_telp,
        ]);

        return response(200);
    }
}
