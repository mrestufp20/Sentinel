<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Buku;

class BukuController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $bukus = Buku::latest()->get();
      return view('buku.index', compact('bukus'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('buku.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
      $this->validate($request,[
          'judul' => 'required',
          'penerbit' => 'required',
          'tanggal' => 'required',
      ]);

       $buku = new Buku();
       $buku->judul = $request->judul;
       $buku->penerbit = $request->penerbit;
       $buku->tanggal = $request->tanggal;
       $buku->save();
       return redirect()->route('buku.index');
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
      $buku = Buku::find($id);
      return view('buku.edit', compact('buku'));
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
      $this->validate($request,[
          'judul' => 'required',
          'penerbit' => 'required',
          'tanggal' => 'required',
      ]);

       $buku = Buku::find($id);
       $buku->judul = $request->judul;
       $buku->penerbit = $request->penerbit;
       $buku->tanggal = $request->tanggal;
       $buku->save();
       return redirect()->route('buku.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
      Buku::find($id)->delete();
      return redirect()->back();
    }
}
