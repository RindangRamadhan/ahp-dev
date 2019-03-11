@extends('layouts.app-about')

@section('content')
    <div class="site-overlay"></div>
    <div id="wrapper">
	    @extends('layouts.header')

        <div class="container-fluid  section-pages-banner">
            <div class="row">
                <div class="col-md-12">
                    <div class="banner-box">
                        <div class="image-item">
                            <img src="../assets/img/banner-contact.jpg" alt="" class="img-responsive image-bg">
                            <div class="overlay"></div>
                        </div>
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="banner-title">
                                        <h2 class="wow fadeIn" data-wow-delay=".4">CONTACT US</h2>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="container section-contact-us-content section-contact">
            <div class="row">
                <div class="col-lg-12 wrap-side-content reset-col wow fadeIn" data-wow-delay=".4">
                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12 left-content">
                        <div class="col-md-12 title-left">
                            <hr>
                            <h4 class="wow fadeIn" data-wow-delay=".4">INFO</h4>
                            <h3 class="c-title wow fadeIn" data-wow-delay=".4">CONTACT US</h3>
                            <p class="c-desc">Anda dapat mengunjungi kami untuk informasi lebih lanjut. Lorem ipsum
                                dolor sit amet, consectetur adipiscing elit. Nunc bibendum
                                nibh eu consequat efficitur. Nam in nibh purus. Proin pretium enim nec urna vulputate,
                                vel cursus turpis pharetra. Nullam id convallis purus.
                            </p>
                        </div>
                        <div class="col-md-12 detail-contact wow fadeIn" data-wow-delay=".3">
                            <hr>
                            <h4>ADDRESS</h4>
                            <p>
                                Main Office :
                                <br> <a href="#urlgooglepmap" target="_blank">Jl. Raya Hajimena No.6 Pemanggilan Natar
                                    Lampung Selatan 35362</a>
                            </p>
                        </div>
                        <div class="col-md-12 detail-contact wow fadeIn" data-wow-delay=".4">
                            <hr>
                            <h4>OFFICE SUPPORT</h4>
                            <p>

                                CS Support : <a href="tel:+0721784985">0721-784985</a>
                                <br>WhatsApp : <a href="tel:+6285269141777">0852-6914-1777</a>
                            </p>
                        </div>
                        <div class="col-md-12 detail-contact wow fadeIn" data-wow-delay=".4">
                            <hr>
                            <h4>MARKETING SUPPORT</h4>
                            <p>
                                CS Support : <a href="tel:+0721784985">0721-784985</a>
                                <br>WhatsApp : <a href="tel:+6285269141777">0852-6914-1777</a>
                            </p>
                        </div>
                        <div class="col-md-12 detail-contact wow fadeIn" data-wow-delay=".2">
                            <hr>
                            <h4>EMAIL ADDRESS</h4>
                            <p>
                                Mail Info : <a href="mailto:ptandallhasaprima@gmail.com"> ptandallhasaprima@gmail.com</a>
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-1 col-md-1"></div>
                    <div class="col-lg-5 col-md-11 col-sm-11">
                        <div class="col-md-12 title-right">
                            <hr>
                            <h4 class="wow fadeIn" data-wow-delay=".4">CONTACT</h4>
                            <h3 class="wow fadeIn" data-wow-delay=".4">FORM</h3>
                        </div>
                        <div class="col-md-12 form-contact wow fadeIn" data-wow-delay=".4">
                            <div class="form-group">
                                <label class="sr-only" for="c_name">Name</label>
                                <input type="text" id="c_name" class="form-control" name="c_name" placeholder="Name">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="c_email">Email</label>
                                <input type="text" id="c_email" class="form-control" name="c_email" placeholder="E-mail">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="c_email">Telephone</label>
                                <input type="text" id="c_email" class="form-control" name="c_email" placeholder="Phone Number">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="c_subject">Subject</label>
                                <input type="text" id="c_subject" class="form-control" name="c_subject" placeholder="Subject">
                            </div>
                            <div class="form-group">
                                <textarea class="form-control" id="c_message" name="c_message" rows="7" placeholder="Message"></textarea>
                            </div>
                            <button type="button" class="btn btn-default" data-wow-delay=".4s">
                                SUBMIT <i class="wow fadeIn fa fa-paper-plane"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div id="location" class="row maps">
                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15890.440529497198!2d105.199782!3d-5.323348!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e40cf74685955e1%3A0x550d08e170d92719!2sJl.+Raya+H.+Mena.+No.6%2C+Natar%2C+Kabupaten+Lampung+Selatan%2C+Lampung+35362%2C+Indonesia!5e0!3m2!1sen!2sus!4v1550166442335"
                    width="100%" height="100%" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>
        </div>
    </div>
@endsection