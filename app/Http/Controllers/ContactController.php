<?php

namespace App\Http\Controllers;
use App\Contact;
use Illuminate\Http\Request;
use Mail;
use App\TentangKami;

class ContactController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tentangKami = TentangKami::first();
        return view('contact', [
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

    public function sendEmail(Request $request) {

         // validation from form
         $this->validate($request, [
            'nama' => 'require',
            'email' => 'require|email',
            'nomor_telephon' => 'require',
            'subject' => 'require',
            'pesan' => 'require'
        ]);
        Contact::create([
            'nama' => $request->c_name,
            'email' => $request->c_email,
            'nomor_telephon' => $request->c_phone_number,
            'subject' => $request->c_subject,
            'pesan' =>$request->c_message
        ]);
        
        Mail::send('email', [
            'nama' => $request->c_name,
            'email' => $request->c_email,
            'nomor_telephon' => $request->c_phone_number,
            'pesan' => $request->c_message
        ], function($message) use ($request) {
            $message->subject($request->c_subject);
            $message->from($request->c_email);
            $message->to('khoirulgeong123@gmail.com');
        });
        return back();
    }
}
