@extends('layouts.app-header')

@section('content')  
  <!-- <div class="container-fluid banner-product-top">
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
  </div> -->
  
  <!-- <section class="product-list">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-12 wrap-gallery">
          @foreach($product as $data)
            <div class="col-md-3 col-sm-6 pl-loop">
              <a href="{{ url('/product-detail/'.$data->id) }}">
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
  </section> -->

  <div class="product-category">
    <section class="s-dark">
        <div class="container clear-xs">
            <div class="border-box">
                <span>Life Time Warranty</span>
            </div>
            <div class="col-md-12 text-center">
                <h2 class="title">iPhone XR from $449. iPhone XS from $699.*</h2>
                <p class="desc">And now, stop by an Apple Store and get iPhone XR from $18.99/mo.
                    <br> when you trade
                    in
                    your
                    current
                    iPhone.*
                </p>
                <div class="links">
                    <a href="#">
                        Buy Now >
                    </a>
                    <a href="#">
                        Contact Us >
                    </a>
                </div>
            </div>
        </div>
    </section>
    <div class="divider"></div>
    <!-- Section 2 -->
    <section class="s-dark">
        <div class="container clear-xs">
            <div class="col-md-12 text-center">
                <h2 class="title">ALPHA 16-EL</h2>
                <p class="desc">Kapasitas 16 liter, menggunakan tenaga baterai. <br>
                    Hasil semprot merata, cara pemakaian mudah & hemat tenaga.
                </p>
                <div class="links">
                    <a href="#">
                        Learn More >
                    </a>
                    <a href="#">
                        Buy Now >
                    </a>
                </div>
            </div>
            <div class="col-md-12 product-img">
                <a href="#">
                    <img class="img-responsive" src="../assets/img/product/Alat Tanam Benih.png" alt="">
                </a>
            </div>
        </div>
    </section>
    <div class="divider"></div>
    <!-- Section 3 -->
    <section class="s-product">
        <div class="container-fluid">
         <div class="col-md-12">
            <div class="col-md-12 product-loop">
                <div class="product-box box">
                    <h2 class="title">MacBook Air</h2>
                    <p class="desc">Kapasitas 16 liter, menggunakan tenaga baterai. <br>
                        Hasil semprot merata, cara pemakaian mudah & hemat tenaga.
                    </p>
                    <div class="links">
                        <a href="#">
                            Learn More >
                        </a>
                        <a href="#">
                            Buy >
                        </a>
                    </div>
                    <a href="#">
                        <img class="img-responsive" src="../assets/img/product/Sprayer Alpha 16 Electric.png" alt="Product">
                    </a>
                </div>
              </div>
            </div>
            <div class="col-md-12">
                <div class="col-md-6 product-loop">
                    <div class="product-box box c-black">
                        <h2 class="title">Watch Series</h2>
                        <p class="desc">Kapasitas 16 liter, menggunakan tenaga baterai. <br>
                            Hasil semprot merata, cara pemakaian mudah & hemat tenaga.
                        </p>
                        <div class="links">
                            <a href="#">
                                Learn More >
                            </a>
                            <a href="#">
                                Buy >
                            </a>
                        </div>
                        <a href="#">
                            <img class="img-responsive" src="../assets/img/product/Timber.jpg" alt="Product">
                        </a>
                    </div>
                </div>
                <div class="col-md-6 product-loop">
                    <div class="product-box box">
                        <h2 class="title">ALPHA 16-EL</h2>
                        <p class="desc">Kapasitas 16 liter, menggunakan tenaga baterai. <br>
                            Hasil semprot merata, cara pemakaian mudah & hemat tenaga.
                        </p>
                        <div class="links">
                            <a href="#">
                                Learn More >
                            </a>
                            <a href="#">
                                Buy >
                            </a>
                        </div>
                        <a href="#">
                            <img class="img-responsive" src="../assets/img/product/Zaparis.png" alt="Product">
                        </a>
                    </div>
                </div>
                <div class="col-md-6  product-loop">
                    <div class="product-box box c-blue">
                        <h2 class="title">ALPHA 16-EL</h2>
                        <p class="desc">Kapasitas 16 liter, menggunakan tenaga baterai. <br>
                            Hasil semprot merata, cara pemakaian mudah & hemat tenaga.
                        </p>
                        <div class="links">
                            <a href="#">
                                Learn More >
                            </a>
                            <a href="#">
                                Buy >
                            </a>
                        </div>
                        <a href="#">
                            <img class="img-responsive" src="../assets/img/product/Bestari.png" alt="Product">
                        </a>
                    </div>
                </div>
                <div class="col-md-6  product-loop">
                    <div class="product-box box c-red">
                        <h2 class="title">ALPHA 16-EL</h2>
                        <p class="desc">Kapasitas 16 liter, menggunakan tenaga baterai. <br>
                            Hasil semprot merata, cara pemakaian mudah & hemat tenaga.
                        </p>
                        <div class="links">
                            <a href="#">
                                Learn More >
                            </a>
                            <a href="#">
                                Buy >
                            </a>
                        </div>
                        <a href="#">
                            <img class="img-responsive" src="../assets/img/product/Spare Parts Tajuk.png" alt="Product">
                        </a>
                    </div>
                </div>
                <div class="col-md-6  product-loop">
                    <div class="product-box box c-blue">
                        <h2 class="title">ALPHA 16-EL</h2>
                        <p class="desc">Kapasitas 16 liter, menggunakan tenaga baterai. <br>
                            Hasil semprot merata, cara pemakaian mudah & hemat tenaga.
                        </p>
                        <div class="links">
                            <a href="#">
                                Learn More >
                            </a>
                            <a href="#">
                                Buy >
                            </a>
                        </div>
                        <a href="#">
                            <img class="img-responsive" src="../assets/img/product/Tin Acet.png" alt="Product">
                        </a>
                    </div>
                </div>
                <div class="col-md-6  product-loop">
                    <div class="product-box box c-white">
                        <h2 class="title">ALPHA 16-EL</h2>
                        <p class="desc">Kapasitas 16 liter, menggunakan tenaga baterai. <br>
                            Hasil semprot merata, cara pemakaian mudah & hemat tenaga.
                        </p>
                        <div class="links">
                            <a href="#">
                                Learn More >
                            </a>
                            <a href="#">
                                Buy >
                            </a>
                        </div>
                        <a href="#">
                            <img class="img-responsive" src="../assets/img/product/Viaron.jpg" alt="Product">
                        </a>
                    </div>
                </div>
            </div>
    </section>   
    <div class="clearfix"></div>
  </div>
@endsection