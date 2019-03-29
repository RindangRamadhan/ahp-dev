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
        <h4>Implementasi Produk {{  $product->product_name }} :</h4>
        <div class="gallery gallery-responsive portfolio_slider">
        @if($implementProduct)
          @foreach($implementProduct->pictures as $data)
          <div class="inner"><img src="{{url('/storage/'.$data) }}"></div>
          @endforeach
        @endif
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
          <h4 class="title">Beberapa pertanyaan seputar {{ $product->product_name }} :</h4>
          <div class="panel-group" id="accordion">
            @foreach($productFaq as $data)            
            <div class="panel panel-default">
              <div class="panel-heading">
                <h4 data-toggle="collapse" data-parent="#accordion" href="#{{ $data->id }}" class="panel-title expand">
                  <a href="#">{{ $data->pertanyaan }}</a>
                </h4>
              </div>
              @if($loop->first)
              <div id="{{ $data->id }}" class="panel-collapse collapse in">
                <div class="panel-body">
                {{ $data->penjelasan }}
                </div>
              </div>
              @else
              <div id="{{ $data->id }}" class="panel-collapse collapse">
                <div class="panel-body">
                {{ $data->penjelasan }}
                </div>
              </div>
              @endif
            </div>
            @endforeach
          </div>
        </div>
      </div>
    </div>
  </section>
@endsection