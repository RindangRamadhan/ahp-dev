<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
            </button>
            <a class="navbar-brand page-scroll" href="{{ url('/') }}"><img src="{{ asset('assets/img/AHP-white-logo.png') }}" alt=""></a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li class="active dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Our Product</a>
                    <ul class="dropdown-menu">
                        <i class="fa fa-caret-up"></i>
                        @foreach ($productCategorys as $category)
                            <li><a href="{{ url('/product-category/'.$category->id) }}">{{ $category->category_name }}</a></li>
                        @endforeach
                    </ul>
                </li>
                <li class="active dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Others Product</a>
                    <ul class="dropdown-menu">
                        <i class="fa fa-caret-up"></i>
                        @foreach ($productCategorys as $category)
                            <li><a href="{{ url('/product-category/'.$category->id) }}">{{ $category->category_name }}</a></li>
                        @endforeach
                    </ul>
                </li>
                <li class="active dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">About Us</a>
                    <ul class="dropdown-menu">
                        <i class="fa fa-caret-up"></i>
                        <li><a href="{{ url('/about-us') }}">Profile</a></li>
                        <li><a href="{{ url('/news')}}">News</a></li>
                    </ul>
                </li>
                <li>
                    <a href="{{ url('/contact') }}">CONTACT</a>
                </li>
                <li class="phone-contact">
                    <a href="tel:+6285269141777"><img src="{{ asset('assets/img/home/phone-icon.png') }}" alt="">
                        <h5><span>0852-6914-1777</span></h5>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>