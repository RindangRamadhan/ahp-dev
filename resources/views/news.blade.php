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
            <div class="news-page">
              <div class="container-fluid">
                <div class="row">
                  <div class="col-md-12 reset-col wrap-gallery">
                    @foreach ($news as $data)
                    <div class="col-md-4 col-sm-6 pl-loop">
                      <a href="{{ url('/news/'.$data->id) }}">
                        <div class="post-module">
                          <div class="thumbnail" style="height: 200px !important">
                            <img src="{{ url('../storage/'.$data->image) }}" class="img-responsive" />
                            <div class="category">{{ date('d, M, Y', strtotime($data->created_at)) }}</div>
                          </div>
                          <div class="post-content">
                            <h1 class="title" style="font-size: 15px; height: 50px !important">
                              {{ $data->title }}
                            </h1>
                            <h2 class="sub_title" style="height: 75px !important">
                              {{ strip_tags(substr($data->description, 0, 120)) }}...
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
            </div>
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