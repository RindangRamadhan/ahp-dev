@extends('layouts.app-about')

@section('content')
  <div class="site-overlay"></div>
  <div id="wrapper">
    @extends('layouts.header')

    <section class="about-us-page">
      <div class="container-fluid">
        <div class="container">
          <div class="row">
            <div class="col-md-12 content">
              <div class="col-md-5 reset-col">
                <h5 class="section-title">About us</h5>
                <div class="border-devide">
                  <hr class="first-dot">
                  <hr class="second-dot">
                </div>
              </div>
              <div class="col-md-7 reset-col paragraph">
                <p class="content-desc">
                  {!! $tentangKami->deskripsi !!}
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <div class="clearfix"></div>
    <section class="vision">
      <div class="container">
        <div class="row">
          <div class="col-md-12 content">
            <div class="col-md-12 reset-col">
              <div class="col-md-5 reset-col lparagraph">
                <h5 class="section-title">Our Vision</h5>
                <div class="border-devide">
                  <hr class="first-dot">
                  <hr class="second-dot">
                </div>
                <p class="section-desc">
                  {{ strip_tags($visi->deskripsi) }}
                </p>
              </div>
              <div class="col-md-7 rparagraph reset-col">
                <img src="../assets/img/Office.jpg" class="img-responsive" alt="">
              </div>
            </div>
            <div class="clearfix"></div>
            <div class="col-md-12 reset-col">
              <div class="col-md-5 col-md-push-7 reset-col rparagraph2">
                <h5 class="section-title">Our Mision</h5>
                <div class="border-devide">
                  <hr class="first-dot">
                  <hr class="second-dot">
                </div>
                <p class="section-desc">
                  {{ strip_tags($misi->deskripsi) }}
                </p>
              </div>
              <div class="col-md-7 col-md-pull-5 reset-col lparagraph2">
                <img src="../assets/img/home/pabrik.jpg" class="img-responsive pull-right" alt="">
              </div>
              <div class="clearfix"></div>
              <!-- <div class="col-md-12 list-content reset-col">
                <h4 class="l-title">We can help your harvest develop:</h4>
                <ul class="col-md-3 col-sm-6">
                  <li>Activities of daily living </li>
                  <li>Balance &amp; coordination </li>
                  <li>Early motor milestones </li>
                  <li>Fine &amp; gross motor skills</li>
                </ul>
                <ul class="col-md-3 col-sm-6">
                  <li>Flexibility </li>
                  <li>Mobility </li>
                  <li>Motor planning </li>
                  <li>Play skills</li>
                </ul>
                <ul class="col-md-3 col-sm-6">
                  <li>Strength &amp; endurance </li>
                  <li>Range of motion </li>
                  <li>Sensory processing </li>
                  <li>Social interaction</li>
                </ul>
                <ul class="col-md-3 col-sm-6">
                  <li>Speech &amp; language </li>
                  <li>Postural control &amp; alignment</li>
                  <li>Early motor milestones </li>
                </ul>
              </div> -->
            </div>

          </div>
        </div>
      </div>
    </section>
    <!-- <div class="clearfix"></div>
    <section>
      <div class="col-md-12 about-content">
        <div class="col-md-12 reset-col ac-head">
          <h5 class="section-title">Our <span class="red-title">Team</span></h5>
          <div class="border-devide">
            <hr class="first-dot">
            <hr class="second-dot">
          </div>
          <p class="section-desc">At Andall Hasa Prima our goal is assisting farmers to use
            step-by-step
            exercise guides, for them to apply it on their farming problems outside solutions
            sessions.
            moreover, we will provide farmers with consultation, knowledge, tools. Lorem ipsum dolor, sit
            amet consectetur adipisicing elit. Nesciunt sint doloremque voluptates quam asperiores ad,
            excepturi fugit. Quo quis cum tempore recusandae perspiciatis, quod, enim iste architecto nulla
            assumenda delectus.</p>
        </div>
        <div class="clearfix"></div>
        <div class="col-md-12 reset-col ac-mission">
          <div class="col-md-4 col-sm-6 reset-col">
            <div class="col-xs-7 reset-col acm-numbers"><img src="../assets/img/Team/team2.jpg" class="img-responsive"
                alt=""></div>
            <div class="col-xs-5 reset-col acm-desc">
              <h6>Nama Lengkap</h6>
              <h5>CEO &amp; SEO</h5>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. In dolore maiores, obcaecati
                nam saepe
                officiis nulla illo.</p>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 reset-col">
            <div class="col-xs-7 reset-col acm-numbers"><img src="../assets/img/Team/team1.jpg" class="img-responsive"
                alt=""></div>
            <div class="col-xs-5 reset-col acm-desc">
              <h6>Nama Lengkap</h6>
              <h5>Komisaris</h5>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. In dolore maiores, obcaecati
                nam saepe
                officiis nulla illo.</p>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 reset-col">
            <div class="col-xs-7 reset-col acm-numbers"><img src="../assets/img/Team/team3.jpg" class="img-responsive"
                alt=""></div>
            <div class="col-xs-5 reset-col acm-desc">
              <h6>Nama Lengkap</h6>
              <h5>Komisaris</h5>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. In dolore maiores, obcaecati
                nam saepe
                officiis nulla illo.</p>
            </div>
          </div>
        </div>
      </div>
    </section> -->
    <div class="clearfix"></div>
    <section class="story">
      <div class="container">
        <div class="row">
          <div class="col-md-12 clear-xs">
            <div class="col-md-12 reset-col story-content">
              <div class="col-md-5 reset-col rcontent">
                <h5 class="section-title">Our Family</h5>
                <div class="border-devide">
                  <hr class="first-dot">
                  <hr class="second-dot">
                </div>
                <p class="section-desc">Selalu memberikan yang terbaik.</p>

                <div id="testimonial-slider" class="carousel slide" data-ride="carousel">
                  <div class="carousel-inner">
                    @foreach($testimonials as $testi)
                    @if($loop->first)
                    <div class="item active">                                            
                      <img class="quote-left" src="../assets/img/quote-left.png" alt="">
                      <img class="quote-right" src="../assets/img/quote-right.png" alt="">
                      <div class="col-md-12 reset-col setup-quote">
                        <div class="quotes-desc">
                          <p>" {{ $testi->pesan }} "</p>
                        </div>
                      </div>
                      <div class="col-md-12 reset-col people-quote">
                        @if($testi->jenis_kelamin == 1)
                          <img class="img-responsive img-circle" src="../assets/img/Avatar L.png" alt="">
                        @else
                          <img class="img-responsive img-circle" src="../assets/img/Avatar P.png" alt="">
                        @endif
                        <h5 class="people-name">{{ $testi->nama }}</h5>
                      </div>
                    </div>
                    @else
                    <div class="item">                                            
                      <img class="quote-left" src="../assets/img/quote-left.png" alt="">
                      <img class="quote-right" src="../assets/img/quote-right.png" alt="">
                      <div class="col-md-12 reset-col setup-quote">
                        <div class="quotes-desc">
                          <p>" {{ $testi->pesan }} "</p>
                        </div>
                      </div>
                      <div class="col-md-12 reset-col people-quote">
                        @if($testi->jenis_kelamin == 1)
                          <img class="img-responsive img-circle" src="../assets/img/Avatar L.png" alt="">
                        @else
                          <img class="img-responsive img-circle" src="../assets/img/Avatar P.png" alt="">
                        @endif
                        <h5 class="people-name">{{ $testi->nama }}</h5>
                      </div>
                    </div>
                    @endif
                    @endforeach
                  </div>
                </div>
                <div class="custom-control">
                  <a class="left" href="#testimonial-slider" data-slide="prev">
                    <i class="fa fa-long-arrow-left" aria-hidden="true" style="font-size: 25px; color: #b7b7b7"></i>
                  </a>
                  <span class="num"></span>
                  <a class="right active" href="#testimonial-slider" data-slide="next">
                    <i class="fa fa-long-arrow-right" aria-hidden="true" style="font-size: 25px; color: #88c07c"></i>
                  </a>
                </div>
              </div>
              <div class="col-md-7 reset-col lcontent">
                <div id="story-slider" class="carousel slide" data-ride="carousel">
                  <div class="carousel-inner">
                    <div class="item active">
                      <img src="../assets/img/Team/IMG_0072.jpg" class="img-responsive" alt="Team">
                    </div>
                    <div class="item">
                      <img src="../assets/img/Team/IMG_0192.jpg" class="img-responsive" alt="Team">
                    </div>
                    <div class="item">
                      <img src="../assets/img/Team/IMG_4915_2.jpg" class="img-responsive" alt="Team">
                    </div>
                    <div class="item">
                      <img src="../assets/img/Team/IMG_5506.jpg" class="img-responsive" alt="Team">
                    </div>
                  </div>
                </div>
                <div class="custom-control">
                  <a class="left" href="#story-slider" data-slide="prev">
                    <i class="fa fa-long-arrow-left" aria-hidden="true"></i>
                  </a>
                  <span class="num"></span>
                  <a class="right active" href="#story-slider" data-slide="next">
                    <i class="fa fa-long-arrow-right" aria-hidden="true"></i>
                  </a>
                </div>
              </div>
              <div class="clearfix"></div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="services">
      <div class="container-fluid">
        <div class="container">
          <div class="row">
            <div class="col-md-12 content">
              <div class="col-md-5 reset-col">
                <h5 class="section-title">Our Services</h5>
                <div class="border-devide">
                  <hr class="first-dot">
                  <hr class="second-dot">
                </div>
              </div>
              <div class="col-md-7 reset-col paragraph">
                <p class="content-desc">
                  Andall Hasa Prima services...
                </p>
              </div>
              <!-- <div class="col-md-12 reset-col">
                <div class="col-md-6 list-content reset-col">
                  <h4 class="l-title">Consultation</h4>
                  <ul class="col-md-11">
                    <li>
                      <h5 class="list-title">Online consultation</h5>
                      <p class="list-desc">we offer different types of online consultations
                        according to your needs, via emails and live audio/video/ texting
                        chats.</p>
                    </li>
                    <li>
                      <h5 class="list-title">Onsite consultation </h5>
                    </li>
                    <li>
                      <h5 class="list-title">On-site evaluation at advanced communication center</h5>
                      <p>Andall Hasa Prima and through its partner advanced communication center
                        offers
                        farmers in
                        the Indonesia a team of experienced and licensed
                        our staffs for onsite evaluation.</p>
                    </li>
                    <li>
                      <h5 class="list-title">Therasuit program </h5>
                    </li>
                    <li>
                      <h5 class="list-title">Early intervention</h5>
                    </li>
                  </ul>
                </div>
                <div class="col-md-6 list-content reset-col">
                  <h4 class="l-title">Program</h4>
                  <ul class="col-md-11">
                    <li>
                      <h5 class="list-title">Weekly lessons</h5>
                      <p>We provide weekly exercises tailored to your harvest needs by offering
                        more than 100 image and video exercises.</p>
                    </li>
                    <li>
                      <h5 class="list-title"> Support group</h5>
                      <p>Online community/forum where farmers can share experiences with other
                        farmers and our staffs.</p>
                    </li>
                  </ul>
                </div>
              </div> -->
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
@endsection