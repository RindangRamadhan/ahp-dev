@extends('layouts.app-header')

@section('content')  
  <div class="container-fluid banner-product-top">
    <div class="row">
      <div class="col-md-12 reset-col">
        <div class="banner-box">
          <div class="image-item">
          <img src="../assets/img/banner-seed.png" alt="" class="img-responsive image-bg">
          <div class="overlay"></div>
          </div>

          <div class="col-md-12">
          <div class="banner-title">
            <h2 class="wow fadeIn" data-wow-delay=".4">{!! $namaKategori !!}</h2>
          </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <section class="product-list">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-12 wrap-gallery">
          @foreach($product as $data)
            <div class="col-md-3 col-sm-6 pl-loop">
              <a href="{{ url('/our-product-detail/'.$data->id) }}">
                <div class="post-module">
                  <div class="thumbnail sh">
                    <img src="{{ url('/storage/'.$data->gambar) }}" class="img-responsive" />
                  </div>
                  <div class="post-content">
                    <div class="category">{{ $data->kelompokProduk->group_name }}</div>
                    <h1 class="title">{{ $data->product_name }}</h1>
                    <h2 class="sub_title">
                      {{ $data->product_formulation }}
                    </h2>
                    <button class="btn btn-info">Baca Selengkapnya ...</button>
                  </div>
                </div>
              </a>
            </div>
          @endforeach
        </div>

        <div class="col-md-12 paging">
          <ul>
            <li>
              <nav class="text-center">
                <ul class="pagination" role="navigation">
                  {{ $pagination }}
                </ul>
              </nav>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </section>
@endsection