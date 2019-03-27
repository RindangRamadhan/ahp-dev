<div class="col-xs-12 reset-col happening-now">
  <div class="col-xs-12 reset-col weather-title">
    <a href="#"><span class="ibukota">TERBARU</span><i class="fa fa-info-circle pull-right" aria-hidden="true"></i></a>
    <div class="clearfix"></div>
  </div>
  <div class="col-xs-12 reset-col content-list">
    @foreach ($beritaTerbaru as $data)
    <div class="col-xs-12 reset-col content-loop">
      <div class="col-xs-4 reset-col info">
        <h5 class="hours">{{ date('H:i', strtotime($data->updated_at)) }}</h5>
        <a href="{{ url('/news/'.$data->id) }}" class="category">{{ substr($data->title, 0, 15) }} ...</a>
      </div>
      <div class="col-xs-8 reset-col title-list">
        <a href="{{ url('/news/'.$data->id) }}" class="news-title">
          {{ strip_tags(substr($data->description, 0, 100)) }} ...
        </a>
      </div>
    </div>
    @endforeach
  </div>
  <div class="col-xs-12 reset-col view-more">
    <a href="#" class="btn-view-more">
      VIEW MORE <i class="fa fa-angle-double-right" aria-hidden="true"></i>
    </a>
  </div>
</div>

<div class="col-xs-12 reset-col populars">
  <div class="col-xs-12 reset-col populars-title">
    <span>POPULAR</span>
    <div class="controls pull-right hidden-xs">
      <a href="#sliderpopular" data-slide="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
      <a href="#sliderpopular" data-slide="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
    </div>
    <div class="clearfix"></div>
  </div>
  <div class="col-xs-12 populars-slider">
    <div id="sliderpopular" class="carousel slide" data-ride="carousel">
      <div class="carousel-inner">
        @foreach ($news as $data)
          @if($loop->first)
            <div class="item active">
              <div class="row">
                  <a href="{{ url('/news/'.$data->id) }}">
                    <div class="col-xs-12 reset-col col-item">
                      <img src="{{ url('../storage/'.$data->image) }}" class="img-responsive" alt="">
                      <h5 class="titles">{{ strip_tags(substr($data->description, 0, 50)) }} ...</h5>
                      <h6 class="dates">{{ date('d, M, Y', strtotime($data->created_at)) }}</h6>
                    </div>
                  </a>
              </div>
            </div>
          @else
            <div class="item">
              <div class="row">
                  <a href="{{ url('/news/'.$data->id) }}">
                    <div class="col-xs-12 reset-col col-item">
                      <img src="{{ url('../storage/'.$data->image) }}" class="img-responsive" alt="">
                      <h5 class="titles">{{ strip_tags(substr($data->description, 0, 50)) }} ...</h5>
                      <h6 class="dates">{{ date('d, M, Y', strtotime($data->created_at)) }}</h6>
                    </div>
                  </a>
              </div>
            </div>
          @endif
        @endforeach
      </div>
    </div>
  </div>
</div>