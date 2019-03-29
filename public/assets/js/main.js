/*============================================================================================Toggle Nav Mobile*/
$(document).ready(function () {
    if ($(window).width() < 960) {
        $('.nav a').on('click', function () {
            $('.navbar-toggle').click()
        });
    }
});
/*============================================================================================MatchHeight*/
$('.sh').matchHeight();

$(".get-image").each(function () {
    var dataImg = $(this).data("image");
    $(this).css("background-image", "url('" + dataImg + "')");
});

(function ($) {
    "use strict";
    $(document).on('click', 'a.page-scroll', function (event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: ($($anchor.attr('href')).offset().top - 50)
        }, 1500, 'easeOutQuad');
        event.preventDefault();
    });

    $('body').scrollspy({
        target: '.navbar-fixed-top',
        offset: 51

    });

    $('.navbar-collapse ul li a').click(function () {
        $('.navbar-toggle:visible').click();
    });

    $('#mainNav').affix({
        offset: {
            top: 100
        }
    })
})(jQuery);

$(window).scroll(function () {
    if ($(".navbar").length > 0) {
        if ($(".navbar").offset().top > 51) {
            $(".navbar-fixed-top").addClass("top-nav-collapse");
            $('.navbar-brand img').attr('src', '../assets/img/AHP-dark-logo.png');
        } else {
            $(".navbar-fixed-top").removeClass("top-nav-collapse");
            $('.navbar-brand img').attr('src', '../assets/img/AHP-white-logo.png');
        }
    }
});
/////// Slick Product
$('.gallery-responsive').slick({
    dots: false,
    infinite: true,
    speed: 300,
    slidesToShow: 7,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 2000,
    responsive: [{
            breakpoint: 1024,
            settings: {
                slidesToShow: 5,
                slidesToScroll: 1,
                infinite: true,
                dots: false
            }
        },
        {
            breakpoint: 600,
            settings: {
                slidesToShow: 3,
                slidesToScroll: 1
            }
        },
        {
            breakpoint: 480,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1
            }
        }
        // You can unslick at a given breakpoint now by adding:
        // settings: "unslick"
        // instead of a settings object
    ]
});









var $item = $(".carousel-item");
var $wHeight = $(window).height();

$item.height($wHeight);
$item.addClass("full-screen");


$(window).on("resize", function () {
    $wHeight = $(window).height();
    $item.height($wHeight);
});

///////// Product List
$(document).ready(function () {

    $(".filter-button").click(function () {
        var value = $(this).attr('data-filter');

        if (value == "all") {
            //$('.filter').removeClass('hidden');
            $('.filter').show('1000');
        } else {
            //            $('.filter[filter-item="'+value+'"]').removeClass('hidden');
            //            $(".filter").not('.filter[filter-item="'+value+'"]').addClass('hidden');
            $(".filter").not('.' + value).hide('1000');
            $('.filter').filter('.' + value).show('1000');

        }
    });

    if ($(".filter-button").removeClass("active")) {
        $(this).removeClass("active");
    }
    $(this).addClass("active");

});

// Animate

// $(window).load(function () {
//     $(".post-module").hover(function () {
//         $(this)
//             .find(".description")
//             .stop()
//             .animate({
//                     height: "toggle",
//                     opacity: "toggle"
//                 },
//                 300
//             );
//     });
// });


// Carousel
$('#carousel-example-generic').carousel({
    interval: 30000
});
$('.carousel').carousel({
    interval: 10000 * 10
});

/// Banner Carousel
$("#carousel-example-generic").swipe({
    swipe: function (
        event,
        direction,
        distance,
        duration,
        fingerCount,
        fingerData
    ) {
        if (direction == "left") $(this).carousel("next");
        if (direction == "right") $(this).carousel("prev");
    },
    allowPageScroll: "vertical"
});
