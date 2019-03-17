@extends('layouts.app-home')

@section('content')
<header class="banner get-image" data-image="{{ asset('assets/img/product/Alpha 16 Super.jpg') }}">
    <!-- <div class="overlay"></div> -->
	<section>
		<div class="carousel fade-carousel slide" data-ride="carousel" data-interval="30000" id="homecarousel">
			<ol class="carousel-indicators">
				<li data-target="#homecarousel" data-slide-to="0" class="active"></li>
				<li data-target="#homecarousel" data-slide-to="1"></li>
				<li data-target="#homecarousel" data-slide-to="2"></li>
			</ol>

			<div class="carousel-inner">
				<div class="item slides active">
					<div class="slide-1"></div>
					<div class="hero">
						<hgroup>
							<h1>PT ANDALL HASA PRIMA</h1>
							<h3>Your Agrochemicals Solution</h3>
						</hgroup>
							<a href="{{ url('/about-us') }}" class="btn btn-hero btn-lg" style="z-index:1000;">
								Learn More
							</a>
					</div>
				</div>
				<div class="item slides">
					<div class="slide-2"></div>
					<div class="hero">
							<hgroup>
								<h1>Produk Kami</h1>
								<h3>Hadirkan solusi dengan produk terbaik</h3>
							</hgroup>
							<a href="product-herbisida.html" class="btn btn-hero btn-lg" style="z-index:1000;">
								See All Product
							</a>
					</div>
				</div>
				<div class="item slides">
					<div class="slide-3"></div>
					<div class="hero">
						<hgroup>
							<h1>Modern Machine</h1>
							<h3>Mengoptimalkan hasil dengan mesin berteknologi mutakhir</h3>
						</hgroup>
							<a href="product-herbisida.html" class="btn btn-hero btn-lg" style="z-index:1000;">
								See All Alsintan
							</a>
					</div>
				</div>
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
						<a href="about-us.html" class="btn-detail">selengkapnya <span class="plus-mark">+</span></a>
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
                    <p class="section-desc">Produk yang kami jual adalah produk dengan kualitas terbaik & sudah
                        teruji di masayarakat luas. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Sint
                        nisi est nam consequatur neque perferendis vitae rerum doloribus, exercitationem maiores,
                        omnis incidunt! Provident corrupti excepturi magnam quisquam temporibus aliquid velit.</p>
                </div>
                <div class="col-md-12 reset-col wrap-btn-detail">
                    <a href="product-herbisida.html" class="btn-detail">selengkapnya <span class="plus-mark">+</span></a>
                </div>
            </div>
            <div class="clearfix"></div>
            <div class="col-md-12 reset-col pp-tabs">
                <ul id="tabs" class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#new" role="tab" data-toggle="tab">New</a></li>
                    <li role="presentation"><a href="#offers" role="tab" data-toggle="tab">Offers</a></li>
                    <li role="presentation"><a href="#best-sellers" role="tab" data-toggle="tab">Best Sellers</a></li>
                </ul>
                <br>
                <div class="tab-content">
                    <!-- New -->
                    <div role="tabpanel" class="tab-pane fade in active" id="new">
                        <div class="col-md-12 reset-col">
                            <div class="col-sm-3 col-xs-6 product-caption-animate">
                                <a href="product-detail.html">
                                    <figure class="snip0016">
                                        <img src="../assets/img/new-product/Alat Tanam Benih.jpg" alt="Product" />
                                        <figcaption>
                                            <h2>Product <span>Herbisida</span></h2>
                                            <p>Untuk hasil yang maksimal. Lorem ipsum dolor<p>
                                        </figcaption>
                                    </figure>
                                </a>
                            </div>
                            <div class="col-sm-3 col-xs-6 product-caption-animate">
                                <a href="product-detail.html">
                                    <figure class="snip0016">
                                        <img src="../assets/img/new-product/Andall.jpg" alt="Product" />
                                        <figcaption>
                                            <h2>Product <span>Herbisida</span></h2>
                                            <p>Untuk hasil yang maksimal. Lorem ipsum dolor<p>
                                        </figcaption>
                                    </figure>
                                </a>
                            </div>
                            <div class="col-sm-3 col-xs-6 product-caption-animate">
                                <a href="product-detail.html">
                                    <figure class="snip0016">
                                        <img src="../assets/img/new-product/Kingdom.jpg" alt="Product" />
                                        <figcaption>
                                            <h2>Product <span>Herbisida</span></h2>
                                            <p>Untuk hasil yang maksimal. Lorem ipsum dolor<p>
                                        </figcaption>
                                    </figure>
                                </a>
                            </div>
                            <div class="col-sm-3 col-xs-6 product-caption-animate">
                                <a href="product-detail.html">
                                    <figure class="snip0016">
                                        <img src="../assets/img/new-product/Kovinplus.jpg" alt="Product" />
                                        <figcaption>
                                            <h2>Product <span>Herbisida</span></h2>
                                            <p>Untuk hasil yang maksimal. Lorem ipsum dolor<p>
                                        </figcaption>
                                    </figure>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-12 reset-col">
                            <div class="col-sm-4 col-xs-6 product-caption-animate">
                                <a href="product-detail.html">
                                    <figure class="snip0016">
                                        <img src="../assets/img/new-product/Mesin Tajuk.jpg" alt="Product" />
                                        <figcaption>
                                            <h2>Product <span>Herbisida</span></h2>
                                            <p>Untuk hasil yang maksimal. Lorem ipsum dolor sit, amet consectetur
                                                adipisicing elit. Itaque dignissimos alias repellat consectetur
                                                quis fugit dicta
                                                commodi odit repellendus, eaque veritatis aliquam aliquid
                                                distinctio consequatur laudantium porro inventore, illum
                                                minima.<p>
                                        </figcaption>
                                    </figure>
                                </a>
                            </div>
                            <div class="col-sm-4 col-xs-6 product-caption-animate">
                                <a href="product-detail.html">
                                    <figure class="snip0016">
                                        <img src="../assets/img/new-product/Meszine.jpg" alt="Product" />
                                        <figcaption>
                                            <h2>Product <span>Herbisida</span></h2>
                                            <p>Untuk hasil yang maksimal. Lorem ipsum dolor sit, amet consectetur
                                                adipisicing elit. Itaque dignissimos alias
                                                repellat consectetur quis fugit dicta
                                                commodi odit repellendus, eaque veritatis aliquam aliquid
                                                distinctio consequatur laudantium porro inventore, illum
                                                minima.<p>
                                        </figcaption>
                                    </figure>
                                </a>
                            </div>
                            <div class="col-sm-4 col-xs-6 product-caption-animate">
                                <a href="product-detail.html">
                                    <figure class="snip0016">
                                        <img src="../assets/img/new-product/Nampan.jpg" alt="Product" />
                                        <figcaption>
                                            <h2>Product <span>Herbisida</span></h2>
                                            <p>Untuk hasil yang maksimal. Lorem ipsum dolor sit, amet consectetur
                                                adipisicing elit. Itaque dignissimos alias
                                                repellat consectetur quis fugit dicta
                                                commodi odit repellendus, eaque veritatis aliquam aliquid
                                                distinctio consequatur laudantium porro inventore, illum
                                                minima.<p>
                                        </figcaption>
                                    </figure>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-12 reset-col">
                            <div class="col-sm-3 col-xs-6 product-caption-animate">
                                <a href="product-detail.html">
                                    <figure class="snip0016">
                                        <img src="../assets/img/new-product/Noweed.jpg" alt="Product" />
                                        <figcaption>
                                            <h2>Product <span>Herbisida</span></h2>
                                            <p>Untuk hasil yang maksimal. Lorem ipsum dolor<p>
                                        </figcaption>
                                    </figure>
                                </a>
                            </div>
                            <div class="col-sm-3 col-xs-6 product-caption-animate">
                                <a href="product-detail.html">
                                    <figure class="snip0016">
                                        <img src="../assets/img/new-product/Pupuk Urea 2.jpg" alt="Product" />
                                        <figcaption>
                                            <h2>Product <span>Herbisida</span></h2>
                                            <p>Untuk hasil yang maksimal. Lorem ipsum dolor<p>
                                        </figcaption>
                                    </figure>
                                </a>
                            </div>
                            <div class="col-sm-3 col-xs-6 product-caption-animate">
                                <a href="product-detail.html">
                                    <figure class="snip0016">
                                        <img src="../assets/img/new-product/Pupuk Urea.jpg" alt="Product" />
                                        <figcaption>
                                            <h2>Product <span>Herbisida</span></h2>
                                            <p>Untuk hasil yang maksimal. Lorem ipsum dolor<p>
                                        </figcaption>
                                    </figure>
                                </a>
                            </div>
                            <div class="col-sm-3 col-xs-6 product-caption-animate">
                                <a href="product-detail.html">
                                    <figure class="snip0016">
                                        <img src="../assets/img/new-product/Quail Up.jpg" alt="Product" />
                                        <figcaption>
                                            <h2>Product <span>Herbisida</span></h2>
                                            <p>Untuk hasil yang maksimal. Lorem ipsum dolor<p>
                                        </figcaption>
                                    </figure>
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- Offers -->
                    <div role="tabpanel" class="tab-pane fade" id="offers">
                        <div class="col-sm-3 col-xs-6 product-caption-animate">
                            <a href="product-detail.html">
                                <figure class="snip0016">
                                    <img src="../assets/img/new-product/Sati Gold.jpg" alt="Product" />
                                    <figcaption>
                                        <h2>Product <span>Herbisida</span></h2>
                                        <p>Untuk hasil yang maksimal. Lorem ipsum dolor<p>
                                    </figcaption>
                                </figure>
                            </a>
                        </div>
                        <div class="col-sm-3 col-xs-6 product-caption-animate">
                            <a href="product-detail.html">
                                <figure class="snip0016">
                                    <img src="../assets/img/new-product/Sinartop.jpg" alt="Product" />
                                    <figcaption>
                                        <h2>Product <span>Herbisida</span></h2>
                                        <p>Untuk hasil yang maksimal. Lorem ipsum dolor<p>
                                    </figcaption>
                                </figure>
                            </a>
                        </div>
                        <div class="col-sm-3 col-xs-6 product-caption-animate">
                            <a href="product-detail.html">
                                <figure class="snip0016">
                                    <img src="../assets/img/new-product/Spare Parts Elc.jpg" alt="Product" />
                                    <figcaption>
                                        <h2>Product <span>Herbisida</span></h2>
                                        <p>Untuk hasil yang maksimal. Lorem ipsum dolor<p>
                                    </figcaption>
                                </figure>
                            </a>
                        </div>
                        <div class="col-sm-3 col-xs-6 product-caption-animate">
                            <a href="product-detail.html">
                                <figure class="snip0016">
                                    <img src="../assets/img/new-product/Spare Parts Manual.jpg" alt="Product" />
                                    <figcaption>
                                        <h2>Product <span>Herbisida</span></h2>
                                        <p>Untuk hasil yang maksimal. Lorem ipsum dolor<p>
                                    </figcaption>
                                </figure>
                            </a>
                        </div>
                        <div class="col-sm-3 col-xs-6 product-caption-animate">
                            <a href="product-detail.html">
                                <figure class="snip0016">
                                    <img src="../assets/img/new-product/Spare Parts Tajuk.jpg" alt="Product" />
                                    <figcaption>
                                        <h2>Product <span>Herbisida</span></h2>
                                        <p>Untuk hasil yang maksimal. Lorem ipsum dolor<p>
                                    </figcaption>
                                </figure>
                            </a>
                        </div>
                        <div class="col-sm-3 col-xs-6 product-caption-animate">
                            <a href="product-detail.html">
                                <figure class="snip0016">
                                    <img src="../assets/img/new-product/Sprayer Alpha 16 Electric.jpg" alt="Product" />
                                    <figcaption>
                                        <h2>Product <span>Herbisida</span></h2>
                                        <p>Untuk hasil yang maksimal. Lorem ipsum dolor<p>
                                    </figcaption>
                                </figure>
                            </a>
                        </div>
                        <div class="col-sm-3 col-xs-6 product-caption-animate">
                            <a href="product-detail.html">
                                <figure class="snip0016">
                                    <img src="../assets/img/new-product/Sprayer Alpha 16 Super.jpg" alt="Product" />
                                    <figcaption>
                                        <h2>Product <span>Herbisida</span></h2>
                                        <p>Untuk hasil yang maksimal. Lorem ipsum dolor<p>
                                    </figcaption>
                                </figure>
                            </a>
                        </div>
                        <div class="col-sm-3 col-xs-6 product-caption-animate">
                            <a href="product-detail.html">
                                <figure class="snip0016">
                                    <img src="../assets/img/new-product/Sprayer Alpha 16.jpg" alt="Product" />
                                    <figcaption>
                                        <h2>Product <span>Herbisida</span></h2>
                                        <p>Untuk hasil yang maksimal. Lorem ipsum dolor<p>
                                    </figcaption>
                                </figure>
                            </a>
                        </div>
                    </div>
                    <!-- Best Sellers -->
                    <div role="tabpanel" class="tab-pane fade" id="best-sellers">
                        <div class="col-sm-4 col-xs-6 product-caption-animate">
                            <a href="product-detail.html">
                                <figure class="snip0016">
                                    <img src="../assets/img/new-product/Timber.jpg" alt="Product" />
                                    <figcaption>
                                        <h2>Product <span>Herbisida</span></h2>
                                        <p>Untuk hasil yang maksimal. Lorem ipsum dolor sit, amet consectetur
                                            adipisicing elit. Itaque dignissimos alias
                                            repellat consectetur quis fugit dicta
                                            commodi odit repellendus, eaque veritatis aliquam aliquid distinctio
                                            consequatur laudantium porro inventore, illum
                                            minima.<p>
                                    </figcaption>
                                </figure>
                            </a>
                        </div>
                        <div class="col-sm-4 col-xs-6 product-caption-animate">
                            <a href="product-detail.html">
                                <figure class="snip0016">
                                    <img src="../assets/img/new-product/Tin Acet.jpg" alt="Product" />
                                    <figcaption>
                                        <h2>Product <span>Herbisida</span></h2>
                                        <p>Untuk hasil yang maksimal. Lorem ipsum dolor sit, amet consectetur
                                            adipisicing elit. Itaque dignissimos alias
                                            repellat consectetur quis fugit dicta
                                            commodi odit repellendus, eaque veritatis aliquam aliquid distinctio
                                            consequatur laudantium porro inventore, illum
                                            minima.<p>
                                    </figcaption>
                                </figure>
                            </a>
                        </div>
                        <div class="col-sm-4 col-xs-6 product-caption-animate">
                            <a href="product-detail.html">
                                <figure class="snip0016">
                                    <img src="../assets/img/new-product/Tuntas.jpg" alt="Product" />
                                    <figcaption>
                                        <h2>Product <span>Herbisida</span></h2>
                                        <p>Untuk hasil yang maksimal. Lorem ipsum dolor sit, amet consectetur
                                            adipisicing elit. Itaque dignissimos alias
                                            repellat consectetur quis fugit dicta
                                            commodi odit repellendus, eaque veritatis aliquam aliquid distinctio
                                            consequatur laudantium porro inventore, illum
                                            minima.<p>
                                    </figcaption>
                                </figure>
                            </a>
                        </div>
                        <div class="col-sm-4 col-xs-6 product-caption-animate">
                            <a href="product-detail.html">
                                <figure class="snip0016">
                                    <img src="../assets/img/new-product/Viaron.jpg" alt="Product" />
                                    <figcaption>
                                        <h2>Product <span>Herbisida</span></h2>
                                        <p>Untuk hasil yang maksimal. Lorem ipsum dolor sit, amet consectetur
                                            adipisicing elit. Itaque dignissimos alias
                                            repellat consectetur quis fugit dicta
                                            commodi odit repellendus, eaque veritatis aliquam aliquid distinctio
                                            consequatur laudantium porro inventore, illum
                                            minima.<p>
                                    </figcaption>
                                </figure>
                            </a>
                        </div>
                        <div class="col-sm-4 col-xs-6 product-caption-animate">
                            <a href="product-detail.html">
                                <figure class="snip0016">
                                    <img src="../assets/img/new-product/Zaparis.jpg" alt="Product" />
                                    <figcaption>
                                        <h2>Product <span>Herbisida</span></h2>
                                        <p>Untuk hasil yang maksimal. Lorem ipsum dolor sit, amet consectetur
                                            adipisicing elit. Itaque dignissimos alias
                                            repellat consectetur quis fugit dicta
                                            commodi odit repellendus, eaque veritatis aliquam aliquid distinctio
                                            consequatur laudantium porro inventore, illum
                                            minima.<p>
                                    </figcaption>
                                </figure>
                            </a>
                        </div>
                        <div class="col-sm-4 col-xs-6 product-caption-animate">
                            <a href="product-detail.html">
                                <figure class="snip0016">
                                    <img src="../assets/img/new-product/Ziphos.jpg" alt="Product" />
                                    <figcaption>
                                        <h2>Product <span>Herbisida</span></h2>
                                        <p>Untuk hasil yang maksimal. Lorem ipsum dolor sit, amet consectetur
                                            adipisicing elit. Itaque dignissimos alias
                                            repellat consectetur quis fugit dicta
                                            commodi odit repellendus, eaque veritatis aliquam aliquid distinctio
                                            consequatur laudantium porro inventore, illum
                                            minima.<p>
                                    </figcaption>
                                </figure>
                            </a>
                        </div>
                    </div>

                </div>
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
                        <form class="form-vertical" role="form">
                            <div class="form-group col-sm-6">
                                <label for="input-fn" class="control-label">Nama Lengkap (*)</label>
                                <input type="text" class="form-control" id="input-fn" placeholder="">
                            </div>
                            <div class="form-group col-sm-6">
                                <label for="input-ln" class="control-label">Perusahaan</label>
                                <input type="text" class="form-control" id="input-ln" placeholder="">
                            </div>
                            <div class="form-group col-sm-12">
                                <label for="input-email" class="control-label">E-mail</label>
                                <input type="text" class="form-control" id="input-email" placeholder="">
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
                                    <input class="form-control" id="phone-number" name="phone-number" type="text"
                                        maxlength="14" placeholder="___- ____ - ____">
                                </div>
                            </div>
                        </form>
                        <div class="col-md-12 text-center">
                            <button class="btn btn-default btn-submit" type="submit">
                                Download Katalog
                            </button>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="col-md-6 reset-col rcontent">
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


<section class="container-fluid" id="product-promo">
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
            <div class="gallery gallery-responsive partners_slider">
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
                    <div class="col-md-6 updates">
                        <a href="#">
                            <img src="{{ url('../storage/'.$data->image) }}" alt="">
                            <h5 class="ndate">{{ date('d/m/Y', strtotime($data->created_at)) }}</h5>
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
                <h5 class="uallapdate pull-right"><a href="#">selengkapnya <i class="fa fa-long-arrow-right"
                            aria-hidden="true"></i></a></h5>
                <div class="clearfix"></div>
                @foreach ($news as $data)
                <div class="col-md-12 reset-col loop-list">
                    <a href="#">
                        <div class="col-md-5 reset-col">
                            <span class="unews-date">
                                {{ date('d/m/Y', strtotime($data->created_at)) }}
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