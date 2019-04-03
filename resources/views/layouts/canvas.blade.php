<nav class="pushy pushy-left">
    <ul>
        <li class="pushy-link">
            <a href="{{ url('/') }}">Home</a>
        </li>
        <li class="pushy-submenu">
            <a href="#">Our Product</a>
            <ul>
                @foreach ($ourProductCategorys as $category)
                    <li><a href="{{ url('/our-product-category/'.$category->id) }}">{{ $category->category_name }}</a></li>
                @endforeach            
            </ul>
        </li>
        <li class="pushy-submenu">
            <a href="#">Other Product</a>
            <ul>
                @foreach ($productCategorys as $category)
                    <li><a href="{{ url('/product-category/'.$category->id) }}">{{ $category->category_name }}</a></li>
                @endforeach         
            </ul>
        </li>
        <li class="pushy-submenu">
            <a href="#">About Us</a>
            <ul>
                <li><a href="{{ url('/about-us') }}">Profile</a></li>
                <li><a href="{{ url('/news')}}">News</a></li>         
            </ul>
        </li>
        <li class="pushy-link"><a href="{{ url('/contact') }}">CONTACT US</a></li>
        <li class="pushy-link"><a href="{{ url('/search') }}">SEARCH <i class="fa fa-search pull-right"
                    aria-hidden="true"></i></a></li>
    </ul>
</nav>
<div class="clearfix"></div>