@extends('layouts.app-home')

@section('content')
<header class="banner get-image" data-image="">
  <!-- <div class="overlay"></div> -->
  <section>
    <div class="carousel fade-carousel slide" data-ride="carousel" data-interval="30000" id="homecarousel">
      <ol class="carousel-indicators">
        <li data-target="#homecarousel" data-slide-to="0" class="active"></li>
        <li data-target="#homecarousel" data-slide-to="1"></li>
        <li data-target="#homecarousel" data-slide-to="2"></li>
      </ol>

      <div class="carousel-inner">
        @foreach($banner as $data)
          @if($loop->first)
          <div class="item slides active get-image" data-image="{{ url('/storage/'.$data->foto)}}" >
            <div class=""></div>
            <div class="hero">
              <hgroup>
                <h1>{{$data->title}}</h1>
                <h3>{{$data->sub_title}}</h3>
              </hgroup>
                <a href="{{ url('/'.$data->url) }}" class="btn btn-hero btn-lg" style="z-index:1000;">
                  {{$data->button}}
                </a>
            </div>
          </div>
          @else
          <div class="item slides get-image" data-image="{{ url('/storage/'.$data->foto)}}" >
            <div class=""></div>
            <div class="hero">
              <hgroup>
                <h1>{{$data->title}}</h1>
                <h3>{{$data->sub_title}}</h3>
              </hgroup>
                <a href="{{ url('/'.$data->url) }}" class="btn btn-hero btn-lg" style="z-index:1000;">
                  {{$data->button}}
                </a>
            </div>
          </div>
          @endif
        @endforeach
      </div>
    </div>
  </section>
  <a href="#scrolldirect" class="btn-scroll page-scroll hidden-xs">
    <img src="../assets/img/home/scrolldown.gif" alt="" class="img-responsive">
    <h6>scroll for more info</h6>
  </a>
</header>
<section class="about-us" id="scrolldirect">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <h5 class="section-name">About Us</h5>
        <h5 class="section-title">PT Andall Hasa Prima</h5>
        <div class="border-devide">
          <hr class="first-dot">
          <hr class="second-dot">
        </div>
        <div class="col-md-8 col-md-offset-2 col-sm-12 paragraph">
          <p class="section-desc">
            {{ strip_tags($tentangKami->deskripsi) }}
          </p>
        </div>
        <div class="col-md-12 reset-col wrap-btn-detail">
            <a href="{{url('/about-us')}}" class="btn-detail">selengkapnya <span class="plus-mark">+</span></a>
        </div>
      </div>
    </div>
  </div>
</section>
<section class="benefit">
  <div class="container">
    <div class="row">
      <div class="col-md-12 content">
        <h5 class="section-name">benefit</h5>
        <h5 class="section-title">{{ $benefits->title }}</h5>
        <div class="border-devide">
          <hr class="first-dot">
          <hr class="second-dot">
        </div>
        <a href="#">
          <img src="{{ url('../storage/'.$benefits->image1) }}" class="img-responsive img-abs hidden-sm hidden-xs" alt="">
        </a>
        <div class="clearfix"></div>
        <div class="col-md-12 reset-col">
          <div class="col-md-6 lparagraph">
            <div class="col-md-12 reset-col paragraph">
              <p class="section-desc">
                {{ strip_tags($benefits->benefit1) }}
              </p>
            </div>
          </div>
          <div class="col-md-6 rparagraph reset-col">
            <a href="#">
                <img src="{{ url('../storage/'.$benefits->image2) }}" class="img-responsive" alt="">
            </a>
          </div>
        </div>
        <div class="clearfix"></div>
        <div class="col-md-12 reset-col">
          <div class="col-md-6 col-md-push-6 reset-col rparagraph2">
              <h1 class="bg-name">benefit</h1>
              <div class="col-md-12 reset-col paragraph">
                <p class="section-desc">
                  {{ strip_tags($benefits->benefit2) }}
                </p>
              </div>
              <div class="col-md-12 reset-col wrap-btn-detail">
                <a href="about-us.html" class="btn-detail">selengkapnya <span class="plus-mark">+</span></a>
              </div>
          </div>
          <div class="col-md-6 col-md-pull-6 reset-col lparagraph2 hidden-xs hidden-sm">
            <a href="#">
              <img src="{{ url('../storage/'.$benefits->image3) }}" class="img-responsive pull-right" alt="">
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="container-fluid" id="product-promo">
  <div class="row product-promo">
    <div class="col-sm-12 content-loop reset-col">
      <div class="pp-content">
        <h5 class="section-name">Product</h5>
        <h5 class="section-title">Best Quality & Inovation</h5>
        <div class="border-devide">
          <hr class="first-dot">
          <hr class="second-dot">
        </div>
        <div class="col-md-8 col-md-offset-2 col-sm-12 paragraph">
          <p class="section-desc">
          {!! $mainProduct->deskripsi !!}
          </p>
        </div>
        <div class="col-md-12 reset-col wrap-btn-detail">
          <a href="product-herbisida.html" class="btn-detail">selengkapnya <span class="plus-mark">+</span></a>
        </div>
      </div>
      <div class="clearfix"></div>
      <div class="col-md-12 reset-col pp-tabs">
        <ul id="tabs" class="nav nav-tabs" role="tablist">
        @foreach ($productGroups as $group)
          @if ($loop->first)
            <li role="presentation" class="active"><a href="#{{ str_replace(' ', '', $group->group_name) }}" role="tab" data-toggle="tab">{{ $group->group_name }}</a></li>
          @else
            <li role="presentation"><a href="#{{ str_replace(' ', '', $group->group_name) }}" role="tab" data-toggle="tab">{{ $group->group_name }}</a></li>
          @endif
        @endforeach
        </ul>
        <br>
        <!-- tab-content -->
        <div class="tab-content">                    
          @foreach ($productGroups as $group)
          @if ($loop->first)
          <div role="tabpanel" class="tab-pane fade in active" id="{{ str_replace(' ', '', $group->group_name) }}">
          <div class="col-md-12 reset-col">
          <?php $i = 1; ?>
          @foreach ($products as $data)
          @if($group->id == $data->kelompok_id)
          @if ($i++ < 13)
          @if($i > 5 && $i < 9)
          <div class="col-sm-4 col-xs-6 product-caption-animate size4 sh">
            <a href="{{ url('/product-detail/'.$data->id) }}">
            <figure class="snip0016">
              <img src="{{ url('../storage/'.$data->gambar) }}" alt="Product" />
              <figcaption>
              <h2>Product <span>{{ $data->product_name }}</span></h2>
              <p>{{ strip_tags($data->product_formulation) }}</p>
              </figcaption>
            </figure>
            </a>
          </div>
          @else
          <div class="col-sm-3 col-xs-6 product-caption-animate size3 sh">
            <a href="{{ url('/product-detail/'.$data->id) }}">
            <figure class="snip0016">
              <img src="{{ url('../storage/'.$data->gambar) }}" alt="Product" />
              <figcaption>
              <h2>Product <span>{{ $data->product_name }}</span></h2>
              <p>{{ strip_tags($data->product_formulation) }}</p>
              </figcaption>
            </figure>
            </a>
          </div>
          @endif
          @endif
          @endif
          @endforeach
          </div>
          </div>
          @else
          <div role="tabpanel" class="tab-pane fade" id="{{ str_replace(' ', '', $group->group_name) }}">
          <div class="col-md-12 reset-col">
          <?php $i = 1; ?>
          @foreach ($products as $data)
          @if($group->id == $data->kelompok_id)
          @if ($i++ < 13)
          @if($i > 5 && $i < 9)
          <div class="col-sm-4 col-xs-6 product-caption-animate size4 sh">
            <a href="{{ url('/product-detail/'.$data->id) }}">
            <figure class="snip0016">
              <img src="{{ url('../storage/'.$data->gambar) }}" alt="Product" />
              <figcaption>
              <h2>Product <span>{{ $data->product_name }}</span></h2>
              <p>{{ strip_tags($data->product_formulation) }}</p>
              </figcaption>
            </figure>
            </a>
          </div>
          @else
          <div class="col-sm-3 col-xs-6 product-caption-animate size3 sh">
            <a href="{{ url('/product-detail/'.$data->id) }}">
            <figure class="snip0016">
              <img src="{{ url('../storage/'.$data->gambar) }}" alt="Product" />
              <figcaption>
              <h2>Product <span>{{ $data->product_name }}</span></h2>
              <p>{{ strip_tags($data->product_formulation) }}</p>
              </figcaption>
            </figure>
            </a>
          </div>
          @endif
          @endif
          @endif
          @endforeach
          </div>
          </div>
          @endif
          @endforeach
        </div>
        <!-- /tab-content -->
      </div>
    </div>
  </div>
</section>

<div class="clearfix"></div>

<section class="s-katalog">
  <div class="container-fluid">
    <div class="col-md-12 bg-setup get-image" data-image="../assets/img/home/brosur.jpg">
      <div class="col-md-12 katalog-content">
        <div class="col-md-6 reset-col lcontent">
          <div class="col-md-12 form-box">
            <h5 class="title">Download Katalog Produk</h5>
            <form class="form-vertical" role="form" id="formDownload">
              <div class="form-group col-sm-6">
                <label for="input-fn" class="control-label">Nama Lengkap (*)</label>
                <input type="text" name="nama_lengkap" id="nama_lengkap" class="form-control" id="input-fn" required >
              </div>
              <div class="form-group col-sm-6">
                <label for="input-ln" class="control-label">Perusahaan</label>
                <input type="text" name="perusahaan" id="perusahaan" class="form-control" id="input-ln" >
              </div>
              <div class="form-group col-sm-12">
                <label for="input-email" class="control-label">E-mail</label>
                <input type="email" name="email" id="email" class="form-control" id="input-email" required >
              </div>
              <div class="form-group col-sm-12">
                <label for="input-phone" class="control-label">Nomor Telepon (*)</label>
                <div class="input-group" id="input-phone">
                  <span class="input-group-btn">
                    <select class="btn select-code">
                      <option>+ 62</option>
                      <option>+ 21</option>
                    </select>
                  </span>
                  <input class="form-control" id="phone-number" name="no_telp" type="text"
                    maxlength="14" placeholder="___- ____ - ____" required>
                </div>
              </div>
              
              <div class="col-md-12 text-center">
                <button class="btn btn-default btn-submit" type="submit">
                  Download Katalog
                </button>
              </div>
            </form>
          </div>
          <div class="clearfix"></div>
        </div>
        <div class="col-md-6 reset-col rcontent hidden-xs hidden-sm">
          <h5 class="title">It’s time for join Us</h5>
          <p class="desc">Try our products and see the result. Lorem ipsum dolor sit, amet consectetur
            adipisicing elit.
            Itaque dignissimos alias
            repellat consectetur quis fugit dicta
            commodi odit repellendus, eaque veritatis aliquam aliquid distinctio consequatur laudantium
            porro inventore,
            illum
            minima. </p>
          <p class="desc">Try our products and see the result. Lorem ipsum dolor sit, amet consectetur
            adipisicing elit.
            Itaque dignissimos alias
            repellat consectetur quis fugit dicta
            commodi odit repellendus, eaque veritatis aliquam aliquid distinctio consequatur laudantium
            porro inventore,
            illum
            minima. </p>
        </div>
      </div>
    </div>
  </div>
</section>


<section class="container-fluid hidden-sm" id="product-promo">
  <div class="row product-promo our-partners">
    <div class="col-sm-12 content-loop reset-col">
      <div class="pp-content">
        <h5 class="section-title">Our Partners</h5>
        <div class="border-devide">
          <hr class="first-dot">
          <hr class="second-dot">
        </div>
      </div>
    </div>
    <div class="col-md-12 reset-col gallery-slider">
      <div class="gallery partners_slider">
        @foreach ($ourPartners as $ourPartner)
        <div class="inner"><img src="{{ url('../storage/'.$ourPartner->logo) }}"></div>
        @endforeach
      </div>
    </div>
  </div>
</section>

<div class="container-fluid">
  <div class="row news">
    <div class="col-md-12">
      <h3 class="gtitle">News &amp; Updates</h3>
    </div>
    <div class="col-md-12 reset-col">
      <div class="col-md-8 updates">
        <div class="col-md-12">                    
        @foreach ($news as $data)
          <div class="col-md-6 col-sm-6 updates">
            <a href="{{ url('/news/'.$data->id) }}">
              <img src="{{ url('../storage/'.$data->image) }}" alt="" class="sh">
              <h5 class="ndate">{{ date('d, M, Y', strtotime($data->created_at)) }}</h5>
              <h4 class="ntitle">{{ $data->title }}</h4>
              <p class="ndesc">
                {{ strip_tags(substr($data->description, 0, 140)) }}
              </p>
            </a>
          </div>
        @endforeach
        </div>
      </div>
      <div class="col-md-4 updates unews">
        <h5 class="utitle pull-left">NEWS</h5>
        <h5 class="uallapdate pull-right"><a href="{{ url('/news') }}">selengkapnya <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a></h5>
        <div class="clearfix"></div>
        @foreach ($news as $data)
        <div class="col-md-12 reset-col loop-list">
          <a href="{{ url('/news/'.$data->id) }}">
            <div class="col-md-5 reset-col">
              <span class="unews-date">
                {{ date('d, M, Y', strtotime($data->created_at)) }}
              </span>
            </div>
            <div class="col-md-7 reset-col">
              <span class="unews-desc">
                {{ strip_tags(substr($data->description, 0, 100)) }}
              </span>
            </div>
          </a>
        </div>
        @endforeach
      </div>
    </div>
  </div>
</div>
@endsection