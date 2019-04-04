@extends('layouts.app-header')

@section('content')  
  <div class="product-category">
  <!-- Section 2 -->
  <?php $i = 1; ?>
  @foreach($product as $data)
    @if ($loop->first)
      <section class="s-dark">
        <div class="container clear-xs">
          <div class="col-md-12 text-center">
            <h2 class="title">{{ $data->product_name }}</h2>
            <p class="desc">
              {{ $data->product_formulation }}
            </p>
            <div class="links">
              <a href="{{ url('/product-detail/'.$data->id) }}">
                Selengkapnya ...
              </a>
            </div>
          </div>
          <div class="col-md-12 product-img">
            <a href="{{ url('/product-detail/'.$data->id) }}">
              <img class="img-responsive" src="{{ url('/storage/'.$data->gambar) }}" alt="">
            </a>
          </div>
        </div>
      </section>
    @else    
      <!-- Section 3 -->
      <section class="s-product">
          @if ($i++ == 1)
              <div class="col-md-12 product-loop">
                <div class="product-box box">
                  <h2 class="title">{{ $data->product_name }}</h2>
                  <p class="desc">
                    {{ $data->product_formulation }}
                  </p>
                  <div class="links">
                    <a href="{{ url('/product-detail/'.$data->id) }}">
                      Selengkapnya ...
                    </a>
                  </div>
                  <a href="{{ url('/product-detail/'.$data->id) }}">
                    <img class="img-responsive" src="{{ url('/storage/'.$data->gambar) }}" alt="">
                  </a>
                </div>
              </div>
          @else
              <div class="col-md-6 product-loop">
                <div class="product-box box c-black">
                  <h2 class="title">{{ $data->product_name }}</h2>
                  <p class="desc">
                    {{ $data->product_formulation }}
                  </p>
                  <div class="links">
                    <a href="{{ url('/product-detail/'.$data->id) }}">
                      Selengkapnya ...
                    </a>
                  </div>
                  <a href="{{ url('/product-detail/'.$data->id) }}">
                    <img class="img-responsive" src="{{ url('/storage/'.$data->gambar) }}" alt="">
                  </a>
                </div>
              </div>
          @endif 
      </section> 
    @endif
  @endforeach
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
  <div class="clearfix"></div>
@endsection