@extends('layouts.app-header')

@section('content')
<div class="container-fluid banner-product-top">
<div class="row">
  <div class="col-md-12 reset-col">
    <div class="banner-box">
    <div class="image-item">
      <img src="../assets/img/banner-news.jpg" alt="" class="img-responsive image-bg">
      <div class="overlay"></div>
    </div>

    <div class="col-md-12">
      <div class="banner-title">
      <h2 class="wow fadeIn" data-wow-delay=".4">Berita (Seputar Pertanian) </h2>
      </div>
    </div>
    </div>
  </div>
</div>

<section class="section-news">
  <div class="container-fluid">
    <div class="row">  
    <div class="col-md-12 reset-col">
      
      <div class="col-md-9 col-sm-9 news-content">
        <img src="{{ url('../storage/'.$details->image) }}" class="img-responsive" alt="">
        <h4><span class="title-news"> {{ $details->title }}</span></h4>
        {!! $details->description !!}
        <p class="sumber-news">
          <span> Sumber <a href="{{ $details->source }}" target="blank" style="color: blue">{{ $details->title }}</a> </span>
        </p>
      </div>   
      <div class="col-md-3 col-sm-3 sidebar-right">
      @include('news-sidebar')
      </div>     
    </div>
    </div>
  </div>
</section>
</div>
@endsection