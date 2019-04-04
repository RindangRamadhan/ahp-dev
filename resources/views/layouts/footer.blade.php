<!-- <div class="container-fluid footer">
    <div class="row">
        <div class="col-md-12 reset-col">
            <div class="col-md-6 about-footer">
                <h5>PT ANDALL HASA PRIMA</h5>
                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit molestiae, cumque
                    reiciendis ullam, repellat id quasi dolor aperiam repudiandae, pariatur tempore voluptatum?
                    Ipsum omnis, molestiae facere maiores enim iure ullam.</p>
            </div>
            <div class="col-md-3 col-sm-6">
                <h5>Join Us</h5>
                <ul>
                    <li> <a href="#" target="_blank"><i class="fa fa-instagram"></i> Instagram</a></li>
                    <li> <a href="#" target="_blank"><i class="fa fa-facebook"></i> Facebook</a></li>
                    <li> <a href="https://www.youtube.com/channel/UCLVUi4UzjxhPfk0TlYnirYQ" target="_blank"><i class="fa fa-youtube"></i>
                            Youtube</a></li>
                </ul>
            </div>
            <div class="col-md-3 col-sm-6">
                <h5>Our Values</h5>
                <ul>
                    <li> <a href="privacy-policy.html" target="_blank">Privacy Policy</a></li>
                    <li><a href="privacy-policy.html" target="_blank">Term of Use</a></li>
                    <li><a href="privacy-policy.html" target="_blank">FAQ</a></li>
                </ul>
            </div>
            <div class="clearfix"></div>
            <div class="col-md-12 reset-col rcontent">
                <div class="rights">
                    <p>&copy; 2019 Andall Hasa Prima. All rights reserved.</p>
                </div>
            </div>
        </div>
    </div>

</div> -->
<!-- Modal Search-->
<div class="modal fade" id="ModalSearch" tabindex="-1" role="dialog" aria-labelledby="ModalSuccessLabel" aria-hidden="true">
    <div class="modal-dialog modal-md m-success">
        <div class="col-sm-12">
            <div class="col-sm-12 m-header">
                <h3 class="m-title">Pencarian <i class="fa fa-search"></i></h3>
                <p class="desc">
                    Masukkan kata kunci yang relevan untuk memudahkan pencarian anda
                </p>
            </div>
            <div class="clearfix"></div>
            <form class="form-vertical" role="form">
                <div class="form-group col-sm-12">
                    <input type="text" class="form-control" id="input-email" placeholder="ketik kata kunci" required=""
                        autofocus="">
                </div>
                <div class="col-sm-12 m-footer">
                    <button class="btn btn-login btn-block" type="submit">Mulai</button>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="clearfix"></div>
<div class="container-fluid footer">
    <div class="row">
        <div class="col-lg-12 reset-col">
            <div class="col-lg-12 reset-col less-footer">
                <a href="#" id="less-footer-toggle" class="less-footer-button">
                    <span class="text-footer-less">CONNECT WITH US</span>
                </a>
            </div>
            <div class="clearfix"></div>
            <div class="col-md-4 col-sm-6 col-xs-6 hd-x540 foot-logo">
                <a href="#"><img src="{{ asset('assets/img/logo.png') }}" alt="" class="img-responsive"></a>
                <p>&copy; 2019 PT ANDALL HASA PRIMA - All rights reserved
                </p>
                <p>created by <a href="#" target="_blank"><i>AHP IT</i></a></p>
            </div>

            <div class="col-md-2 col-sm-3 col-xs-6 x-540-50 get-apps center-m">
                <h2 class="title">SOCIAL MEDIA</h2>
                <ul class="list-unstyled">
                    <li><a href="https://www.facebook.com/andallhasaprimalampung/" target="blank"><i class="fa fa-facebook" aria-hidden="true"></i> <span>Facebook</span></a></li>
                    <li><a href="https://twitter.com/andallhasaprima" target="blank"><i class="fa fa-twitter" aria-hidden="true"></i> <span>Twitter</span></a></li>
                    <li><a href="https://www.instagram.com/ahplampung/" target="blank"><i class="fa fa-instagram" aria-hidden="true"></i> <span>Instagram</span></a></li>
                </ul>
            </div>
            <div class="col-md-2 col-sm-3 col-xs-6 x-540-50 get-apps center-m">
                <h2 class="title">Sitemap</h2>
                <ul class="list-unstyled">
                    <li> <a href="{{ url('/privacy-policy') }}">Privacy Policy</a></li>
                    <li><a href="{{ url('/term-of-use')}}">Term of Use</a></li>
                    <li><a href="{{ url('/faq')}}">FAQ</a></li>
                </ul>
            </div>
            <div class="col-md-4 col-sm-12 get-apps clear-x">
                <h2 class="title">ABOUT US</h2>
                {!! $tentangKami->deskripsi !!}
            </div>
<div class="clearfix"></div>
            <div class="col-md-12 foot-logo v-x540">
                <a href="#"><img src="{{ asset('assets/img/logo.png') }}" alt="" class="img-responsive"></a>
                <p>&copy; 2019 PT ANDALL HASA PRIMA - All rights reserved
                </p>
                <p>created by <a href="#" target="_blank"><i>AHP IT</i></a></p>
            </div>

        </div>
    </div>
</div>