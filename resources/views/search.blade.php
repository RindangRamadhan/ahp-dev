@extends('layouts.app-header')

@section('content')
    <div class="container-fluid banner-product-top">
      <div class="row">
        <div class="col-md-12 reset-col">
          <div class="banner-box">
            <div class="image-item">
              <img src="../assets/img/banner-search.jpg" alt="" class="img-responsive image-bg">
              <div class="overlay"></div>
            </div>
            <div class="col-md-12">
              <div class="banner-title">
                <h2 class="wow fadeIn" data-wow-delay=".4">Search Product </h2>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="clearfix"></div>

    <section class="product-list news-page">
      <div class="container-fluid">
          <div class="col-md-12 col-xs-12 reset-col" style="height:60px;">
            <form class="search-container" style="padding-top: 0px" method="GET" action="{{ route('searchProduk') }}">
              <input type="text" name="s" id="search-bar" placeholder="Tulis kata pencarian anda ...">
              <a href="#"><img class="search-icon" src="http://www.endlessicons.com/wp-content/uploads/2012/12/search-icon.png"></a>
            </form>
          </div>
          
          <!-- START PRODUCTS -->
          <div class="col-md-12 col-xs-12 reset-col">
            @foreach ($products as $data)
            <div class="col-sm-4 col-xs-6 product-caption-animate size4 sh">
              <a href="{{ url('/product-detail/'.$data->id) }}">
                <figure class="snip0016">
                  <img src="{{ url('../storage/'.$data->gambar) }}" alt="Product" />
                  <figcaption>
                  <h2><span>{{ $data->product_name }}</span></h2>
                  <p>{{ strip_tags($data->product_formulation) }}</p>
                  </figcaption>
                </figure>
              </a>
            </div>
            @endforeach
            @foreach($otherProducts as $data)
            <div class="col-sm-4 col-xs-6 product-caption-animate size4 sh">
              <a href="{{ url('/our-product-detail/'.$data->id) }}">
                <figure class="snip0016">
                  <img src="{{ url('../storage/'.$data->gambar) }}" alt="Product" />
                  <figcaption>
                  <h2><span>{{ $data->product_name }}</span></h2>
                  <p>{{ strip_tags($data->product_formulation) }}</p>
                  </figcaption>
                </figure>
              </a>
            </div>
            @endforeach
          </div>
          <!-- END PRODUCTS -->
      </div>
    </section>
@endsection