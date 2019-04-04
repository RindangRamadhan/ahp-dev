<style>
    .title {
        font-size: 50px;
        color: #636b6f;
        font-family: 'Raleway', sans-serif;
        font-weight: 100;
        display: block;
        text-align: center;
        margin: 20px 0 10px 0px;
    }

    .links {
        text-align: center;
        margin-bottom: 20px;
    }

    .links > a {
        color: #636b6f;
        padding: 0 25px;
        font-size: 12px;
        font-weight: 600;
        letter-spacing: .1rem;
        text-decoration: none;
        text-transform: uppercase;
    }
</style>

<div class="title">
    PT. Andall Hasa Prima
</div>

<!-- Small boxes (Stat box) -->
<div class="row">
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-aqua">
            <div class="inner">
                <h3>{{ number_format($produk, 0, ',', '.') }}</h3>

                <p>Other Product</p>
            </div>
            <div class="icon">
                <i class="fa fa-cubes"></i>
            </div>
            <a href="{{ url('/admin/auth/products') }}" class="small-box-footer">Selengkapnya <i class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-green">
            <div class="inner">
                <h3>{{ number_format($ourProduk, 0, ',', '.') }}</h3>

                <p>Our Product</p>
            </div>
            <div class="icon">
                <i class="fa fa-cubes"></i>
            </div>
            <a href="{{ url('/admin/auth/our-product') }}" class="small-box-footer">Selengkapnya <i class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-yellow">
            <div class="inner">
                <h3>{{ number_format($news, 0, ',', '.') }}</h3>

                <p>Berita</p>
            </div>
            <div class="icon">
                <i class="fa fa-newspaper-o"></i>
            </div>
            <a href="{{ url('/admin/auth/news') }}" class="small-box-footer">Selengkapnya <i class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-red">
            <div class="inner">
                <h3>{{ number_format($pengunjung, 0, ',', '.') }}</h3>

                <p>Pengunjung</p>
            </div>
            <div class="icon">
                <i class="fa fa-area-chart"></i>
            </div>
            <a href="{{ url('/admin/auth/pengunjung') }}" class="small-box-footer">Selengkapnya <i class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <!-- ./col -->
</div>
<!-- /.row -->