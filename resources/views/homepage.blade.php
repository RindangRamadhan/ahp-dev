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
						PT. Andall Hasa Prima didirikan di Bandar Lampung pada tanggal 23
						Agustus 1999 oleh 3 orang
						pendiri yaitu: Ir. Poedjoasmoro, Zakaria Halim dan Ir. Achmad Lutfi. Bidang Usaha PT.
						Andall Hasa Prima mencakup;
						Bidang Perdagangan umum, pengembangan pertanian dan pengadaan industri. Aktifitas perseroan
						saat ini adalah sebagai
						distributor pestisida, pemegang merk pestisida, benih dan alat alat pertanian. PT Andall
						Hasa Prima merupakan
						distributor pestisida dan importir alat-alat pertanian yang kian melebarkan sayap
						menjangkau berbagai pasar bidang
						pertanian di sejumlah daerah dan kota di Indonesia
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
				<h5 class="section-title">Beralih ke Produk Kami</h5>
				<div class="border-devide">
					<hr class="first-dot">
					<hr class="second-dot">
				</div>
				<a href="#">
					<img src="../assets/img/why-1.jpg" class="img-responsive img-abs hidden-sm hidden-xs" alt="">
				</a>
				<div class="clearfix"></div>
				<div class="col-md-12 reset-col">
					<div class="col-md-6 lparagraph">
						<div class="col-md-12 reset-col paragraph">
							<p class="section-desc">
								Teknik pertanian merupakan pendekatan teknik (engineering)
								secara luas dalam bidang pertanian
								yang sangat dibutuhkan untuk melakukan transformasi sumberdaya alam secara efisien
								dan efektif untuk pemanfaatannya
								oleh manusia. Dalam sistematika keilmuan, bidang teknik pertanian
								tetap bertumpu pada bidang ilmu
								teknik untuk memcahkan berbagai permasalahan di bidang pertanian.
							</p>
							<p class="section-desc">
								Oleh karena itu teknologi pertanian sangat dibutuhkan demi mensejahterakan
								kehidupan petani dan untuk memenuhi
								kebutuhan akan produk hasil pertanian dalam skala yang besar.</p>
						</div>
					</div>
					<div class="col-md-6 rparagraph reset-col">
						<a href="#">
								<img src="../assets/img/why-2.png" class="img-responsive" alt="">
						</a>
					</div>
				</div>
				<div class="clearfix"></div>
				<div class="col-md-12 reset-col">
					<div class="col-md-6 col-md-push-6 reset-col rparagraph2">
							<h1 class="bg-name">benefit</h1>
							<div class="col-md-12 reset-col paragraph">
								<p class="section-desc">
									Dampak positif penggunaan teknologi pertanian seperti pengolahan lahan yang lebih
									mudah karena tidak dikerakan lagi
									secara manual melainkan dengan mesin. Produk hasil pertanian yang awalnya mudah
									rusak bisa dia atasi dengan teknologi
									pengolahan hasil pertanian. Adanya teknologi juga bisa menjamin kegiatan pertanian
									yang lebih pasti tanpa adanya
									kekhawatiran akan gagal panen dan kerusakan pada lahan pertanian.
								</p>
							</div>
							<div class="col-md-12 reset-col wrap-btn-detail">
								<a href="about-us.html" class="btn-detail">selengkapnya <span class="plus-mark">+</span></a>
							</div>
					</div>
					<div class="col-md-6 col-md-pull-6 reset-col lparagraph2 hidden-xs hidden-sm">
						<a href="#">
							<img src="../assets/img/why-3.jpg" class="img-responsive pull-right" alt="">
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
                <div class="inner"><img src="../assets/img/partners/1.png"></div>
                <div class="inner"><img src="../assets/img/partners/10.png"></div>
                <div class="inner"><img src="../assets/img/partners/11.png"></div>
                <div class="inner"><img src="../assets/img/partners/2-1.png"></div>
                <div class="inner"><img src="../assets/img/partners/3.png"></div>
                <div class="inner"><img src="../assets/img/partners/4.png"></div>
                <div class="inner"><img src="../assets/img/partners/5.png"></div>
                <div class="inner"><img src="../assets/img/partners/6-1.png"></div>
                <div class="inner"><img src="../assets/img/partners/7-1.png"></div>
                <div class="inner"><img src="../assets/img/partners/8.png"></div>
                <div class="inner"><img src="../assets/img/partners/9.png"></div>
            </div>
        </div>
    </div>
</section>




<div class="container-fluid">
    <div class="row news">
        <div class="col-md-12">
            <h3 class="gtitle">News &amp; updates</h3>
        </div>
        <div class="col-md-12 reset-col">
            <div class="col-md-4 updates">
                <a href="#">
                    <img src="../assets/img/news1.jpg" alt="">
                    <h5 class="ndate">Our Team / 01 February 2019</h5>
                    <h4 class="ntitle">Nullam Ligula Tristique Egestas Aenean Nu</h4>
                    <p class="ndesc">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vivamus sagittis
                        lacus vel augue laoreet rutrum faucibus dolor auctor. Nullam id dolor id nibh ultricies
                        vehicula.</p>
                </a>
            </div>
            <div class="col-md-4 updates">
                <a href="#">
                    <img src="../assets/img/news2.jpg" alt="">
                    <h5 class="ndate">Panen Bawang Melimpah / 01 February 2019</h5>
                    <h4 class="ntitle">Nullam Ligula Tristique Egestas Aenean Nu</h4>
                    <p class="ndesc">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vivamus sagittis
                        lacus vel augue laoreet rutrum faucibus dolor auctor. Nullam id dolor id nibh ultricies
                        vehicula.</p>
                </a>

            </div>
            <div class="col-md-4 updates unews">
                <h5 class="utitle pull-left">NEWS</h5>
                <h5 class="uallapdate pull-right"><a href="#">selengkapnya <i class="fa fa-long-arrow-right"
                            aria-hidden="true"></i></a></h5>
                <div class="clearfix"></div>
                <div class="col-md-12 reset-col loop-list">
                    <a href="#">
                        <div class="col-md-5 reset-col"><span class="unews-date">01 February 2019</span></div>
                        <div class="col-md-7 reset-col"><span class="unews-desc">Commodo Ipsum Euismod Parturient
                                Dolor Fermentum Bibendum Parturient Commodo</span></div>
                    </a>
                </div>
                <div class="col-md-12 reset-col loop-list">
                    <a href="#">
                        <div class="col-md-5 reset-col"><span class="unews-date">02 February 2019</span></div>
                        <div class="col-md-7 reset-col"><span class="unews-desc">Consectetur Vulputate Mattis
                            </span></div>
                    </a>
                </div>
                <div class="col-md-12 reset-col loop-list">
                    <a href="#">
                        <div class="col-md-5 reset-col"><span class="unews-date">03 February 2019</span></div>
                        <div class="col-md-7 reset-col"><span class="unews-desc">Mollis Purus Vulputate Bibendum
                                Consectetur Etiam Nibh Ridiculus Dolor</span></div>
                    </a>
                </div>
                <div class="col-md-12 reset-col loop-list">
                    <a href="#">
                        <div class="col-md-5 reset-col"><span class="unews-date">03 February 2019</span></div>
                        <div class="col-md-7 reset-col"><span class="unews-desc">Inceptos Tellus Ridiculus
                                Sollicitudin</span></div>
                    </a>
                </div>
                <div class="col-md-12 reset-col loop-list">
                    <a href="#">
                        <div class="col-md-5 reset-col"><span class="unews-date">04 February 2019</span></div>
                        <div class="col-md-7 reset-col"><span class="unews-desc">Venenatis Dapibus Fringilla Porta
                                Fusce Tristique Fringilla</span></div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection