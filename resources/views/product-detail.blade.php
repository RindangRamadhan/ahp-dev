@extends('layouts.app-header')

@section('content')
  <section class="product-detail">
    <div class="container product-content">
      <div class="row">
      <div class="col-md-12 product-image-detail">
        <div col-md-12 reset-col>
          <img src="{{ url('/storage/'.$product->gambar) }}" class="img-responsive" />
        </div>
      </div>
      <div class="col-md-12 reset-col desc-loop">
        <h1 class="dl-title">Data Teknis</h1>
        <div id="no-more-tables">
        <table class="col-md-12 reset-col table-bordered table-condensed cf">
          <thead class="cf">
          <tr>
            <th>Bahan Aktif</th>
            <th>Bentuk Formulasi</th>
            <th>Sifat Formulasi</th>
            <th>Isi Kemasan</th>
          </tr>
          </thead>
          <tbody>
          <tr>
            <td data-title="Bahan Aktif">
              {{ $product->product_ingredients }}
            </td>
            <td data-title="Bentuk Formulasi">
              {{ $product->product_formulation }}
            </td>
            <td data-title="Sifat Formulasi">
              @if($product->sifat_formulasi)
                {{ $product->sifat_formulasi }}
              @else
                -
              @endif
            </td>
            <td data-title="Isi Kemasan" style="padding-left: 25px !important">
              {!! $product->product_package !!}
            </td>
          </tr>
          </tbody>
        </table>
        </div>
      </div>
      <div class="col-md-8 col-md-offset-2 reset-col desc-loop">
        <h1 class="dl-title">Tujuan Penggunaan</h1>
        {!! $product->product_use !!}
      </div>
      <div class="col-md-12 reset-col desc-loop">
        <div class="content">
        <h1 class="ribbon">Manfaat Penggunaan</h1>
        <br />
        <ul class="ribbon-content">
          {!! $product->manfaat !!}
        </ul>
        </div>
      </div>
      <div class="col-md-12 reset-col desc-loop">
        <h1 class="dl-title">Petunjuk Penggunaan</h1>
        <div id="no-more-tables">          
          {!! $product->product_use !!}
        </div>
      </div>
      <div class="col-md-12 reset-col desc-loop">
        <div class="col-md-12 reset-col gallery-slider">
        <h4>Beberapa jenis gulma yang diberantas oleh Badai 160 SL :</h4>
        <div class="gallery gallery-responsive portfolio_slider">
          <div class="inner"><img src="../assets/img/gulma/g1.jpg"></div>
          <div class="inner"><img src="../assets/img/gulma/g2.jpg"></div>
          <div class="inner"><img src="../assets/img/gulma/g3.jpg"></div>
          <div class="inner"><img src="../assets/img/gulma/g4.jpg"></div>
          <div class="inner"><img src="../assets/img/gulma/g5.jpg"></div>
          <div class="inner"><img src="../assets/img/gulma/g6.jpg"></div>
          <div class="inner"><img src="../assets/img/gulma/g7.jpg"></div>
          <div class="inner"><img src="../assets/img/gulma/g8.jpg"></div>
        </div>
        </div>
      </div>
      </div>
    </div>
  </section>
  <section>
    <div class="container">
      <div class="row">
        <div class="col-md-12 product-faq">
          <h4 class="title">Beberapa pertanyaan seputar Badai 160 SL :</h4>
          <div class="panel-group" id="accordion">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h4 data-toggle="collapse" data-parent="#accordion" href="#collapse1" class="panel-title expand">
                  <a href="#">Apakah aman apabila terkena kulit ?</a>
                </h4>
              </div>
              <div id="collapse1" class="panel-collapse collapse in">
                <div class="panel-body">
                  Sangat aman, dikarenakan sudah diformulasi tidak berbahaya untuk kesehatan
                  manusia. <br>
                  Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                  sed do eiusmod tempor incididunt ut labore et dolore magna
                  aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                  ullamco laboris nisi ut aliquip ex ea commodo consequat.
                </div>
              </div>
            </div>
            <div class="panel panel-default">
              <div class="panel-heading">
                <h4 data-toggle="collapse" data-parent="#accordion" href="#collapse2" class="panel-title expand">
                  <a href="#">Dimana saya bisa membeli produk ini ?</a>
                </h4>
              </div>
              <div id="collapse2" class="panel-collapse collapse">
                <div class="panel-body">
                  Produk Badai 160 SL sudah tersedia di seluruh outlet kami. <br>
                  Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                  sed do eiusmod tempor incididunt ut labore et dolore magna
                  aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                  ullamco laboris nisi ut aliquip ex ea commodo consequat.
                </div>
              </div>
            </div>
            <div class="panel panel-default">
              <div class="panel-heading">
                <h4 data-toggle="collapse" data-parent="#accordion" href="#collapse3" class="panel-title expand">
                  <a href="#">Bagaimana cara penggunaan Badai 160 SL ketika musim hujan ?</a>
                </h4>
              </div>
              <div id="collapse3" class="panel-collapse collapse">
                <div class="panel-body">
                  Produk Badai 160 SL sudah tersedia di seluruh outlet kami. <br>
                  Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                  sed do eiusmod tempor incididunt ut labore et dolore magna
                  aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                  ullamco laboris nisi ut aliquip ex ea commodo consequat.
                </div>
              </div>
            </div>
            <div class="panel panel-default">
              <div class="panel-heading">
                <h4 data-toggle="collapse" data-parent="#accordion" href="#collapse4" class="panel-title expand">
                  <a href="#">Dimana saya bisa membeli produk ini ?</a>
                </h4>
              </div>
              <div id="collapse4" class="panel-collapse collapse">
                <div class="panel-body">
                  Produk Badai 160 SL sudah tersedia di seluruh outlet kami. <br>
                  Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                  sed do eiusmod tempor incididunt ut labore et dolore magna
                  aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                  ullamco laboris nisi ut aliquip ex ea commodo consequat.
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
@endsection