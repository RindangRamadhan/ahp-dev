<!DOCTYPE html>
<html lang="en">

<head>
    <title>PT Andall Hasa Prima</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
    <link rel="icon" href="../assets/img/favicon.png" />
    <link rel="stylesheet" href="../assets/libraries/bootstrap/css/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="../assets/libraries/font-awesome/css/font-awesome.min.css" type="text/css" />
    <link rel="stylesheet" href="../assets/libraries/css/animate.min.css" type="text/css" />
    <link rel="stylesheet" href="../assets/libraries/slick/slick.css" type="text/css" />
    <link rel="stylesheet" href="../assets/css/variables.css" type="text/css" />
    <link rel="stylesheet" href="../assets/css/navbar.css" type="text/css" />
    <link rel="stylesheet" href="../assets/css/main.scss" type="text/css" />
    <link rel="stylesheet" href="../assets/css/header.css" type="text/css" />
    <link rel="stylesheet" href="../assets/css/footer.css" type="text/css" />
    <link rel="stylesheet" href="../assets/css/home.css" type="text/css" />
    <link rel="stylesheet" href="../assets/css/our-values.css" type="text/css" />
    <link rel="stylesheet" href="../assets/css/product-list.css" type="text/css" />
    <link rel="stylesheet" href="../assets/css/contact.css" type="text/css" />
    <link rel="stylesheet" href="../assets/css/carousel.css" type="text/css">
    <link rel="stylesheet" href="../assets/css/news.css" type="text/css">
    <!-- <link rel="stylesheet" href="../assets/css/style.css" type="text/css"> -->
    <script src="../assets/libraries/js/jquery-3.3.1.min.js"></script>
</head>

<body>
    <script>
        $.ajax({
            url: "canvas.html",
            method: "POST",
            async: false,
            cache: false,
            success: function (result) {
                document.write(result);
            }
        });
    </script>
    <div class="site-overlay"></div>
    <div id="wrapper">
       @extends('layouts.header')
        <!-- Section 1 -->
        <div class="container-fluid banner-product-top">
            <div class="row">
                <div class="col-md-12 reset-col">
                    <div class="banner-box">
                        <div class="image-item">
                            <img src="../assets/img/banner-news.jpg" alt="" class="img-responsive image-bg">
                            <div class="overlay"></div>
                        </div>

                        <div class="col-md-12">
                            <div class="banner-title">
                                <h2 class="wow fadeIn" data-wow-delay=".4">News (Seputar Pertanian) </h2>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>
        <section class="section-news">
            <div class="container-fluid">
                <div class="row">
                    <script>
                        $.ajax({
                            url: 'sidebar-left.html',
                            method: 'POST',
                            async: false,
                            cache: false,
                            success: function (result) {
                                document.write(result);
                            },
                        });
                    </script>
                    <div class="col-md-12 reset-col">
                        <div class="col-md-9 col-sm-8 news-content">

                            <div class="product-list news-page">
                                <div class="container-fluid">
                                    <div class="row">

                                        <div class="col-md-12 reset-col wrap-gallery">
                                            <div class="col-md-4 col-sm-6 pl-loop">
                                                <a href="news-detail.html">
                                                    <div class="post-module">
                                                        <div class="thumbnail">
                                                            <img src="../assets/img/news2.jpg" class="img-responsive" />
                                                            <div class="category">Panen Raya</div>
                                                        </div>
                                                        <div class="post-content">

                                                            <h1 class="title">Petani lampung hasilkan 50 ton bawang
                                                                merah</h1>
                                                            <h2 class="sub_title">
                                                                Lorem ipsum dolor sit amet consectetur adipisicing
                                                                elit.
                                                                Enim vitae cumque vero quis aliquid, iure facilis,
                                                                blanditiis debitis quod officiis ad amet recusandae
                                                                iusto excepturi eaque, hic cum ullam quae!
                                                            </h2>
                                                            <button class="btn btn-info">Read More</button>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="col-md-4 col-sm-6 pl-loop">
                                                <a href="news-detail.html">
                                                    <div class="post-module">
                                                        <div class="thumbnail">
                                                            <img src="../assets/img/news2.jpg" class="img-responsive" />
                                                            <div class="category">Panen Raya</div>
                                                        </div>
                                                        <div class="post-content">

                                                            <h1 class="title">Petani lampung hasilkan 50 ton bawang
                                                                merah</h1>
                                                            <h2 class="sub_title">
                                                                Lorem ipsum dolor sit amet consectetur adipisicing
                                                                elit.
                                                                Enim vitae cumque vero quis aliquid, iure facilis,
                                                                blanditiis debitis quod officiis ad amet recusandae
                                                                iusto excepturi eaque, hic cum ullam quae!
                                                            </h2>
                                                            <button class="btn btn-info">Read More</button>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="col-md-4 col-sm-6 pl-loop">
                                                <a href="news-detail.html">
                                                    <div class="post-module">
                                                        <div class="thumbnail">
                                                            <img src="../assets/img/news2.jpg" class="img-responsive" />
                                                            <div class="category">Panen Raya</div>
                                                        </div>
                                                        <div class="post-content">

                                                            <h1 class="title">Petani lampung hasilkan 50 ton bawang
                                                                merah</h1>
                                                            <h2 class="sub_title">
                                                                Lorem ipsum dolor sit amet consectetur adipisicing
                                                                elit.
                                                                Enim vitae cumque vero quis aliquid, iure facilis,
                                                                blanditiis debitis quod officiis ad amet recusandae
                                                                iusto excepturi eaque, hic cum ullam quae!
                                                            </h2>
                                                            <button class="btn btn-info">Read More</button>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="col-md-4 col-sm-6 pl-loop">
                                                <a href="news-detail.html">
                                                    <div class="post-module">
                                                        <div class="thumbnail">
                                                            <img src="../assets/img/news2.jpg" class="img-responsive" />
                                                            <div class="category">Panen Raya</div>
                                                        </div>
                                                        <div class="post-content">

                                                            <h1 class="title">Petani lampung hasilkan 50 ton bawang
                                                                merah</h1>
                                                            <h2 class="sub_title">
                                                                Lorem ipsum dolor sit amet consectetur adipisicing
                                                                elit.
                                                                Enim vitae cumque vero quis aliquid, iure facilis,
                                                                blanditiis debitis quod officiis ad amet recusandae
                                                                iusto excepturi eaque, hic cum ullam quae!
                                                            </h2>
                                                            <button class="btn btn-info">Read More</button>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="col-md-4 col-sm-6 pl-loop">
                                                <a href="news-detail.html">
                                                    <div class="post-module">
                                                        <div class="thumbnail">
                                                            <img src="../assets/img/news2.jpg" class="img-responsive" />
                                                            <div class="category">Panen Raya</div>
                                                        </div>
                                                        <div class="post-content">

                                                            <h1 class="title">Petani lampung hasilkan 50 ton bawang
                                                                merah</h1>
                                                            <h2 class="sub_title">
                                                                Lorem ipsum dolor sit amet consectetur adipisicing
                                                                elit.
                                                                Enim vitae cumque vero quis aliquid, iure facilis,
                                                                blanditiis debitis quod officiis ad amet recusandae
                                                                iusto excepturi eaque, hic cum ullam quae!
                                                            </h2>
                                                            <button class="btn btn-info">Read More</button>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="col-md-4 col-sm-6 pl-loop">
                                                <a href="news-detail.html">
                                                    <div class="post-module">
                                                        <div class="thumbnail">
                                                            <img src="../assets/img/news2.jpg" class="img-responsive" />
                                                            <div class="category">Panen Raya</div>
                                                        </div>
                                                        <div class="post-content">

                                                            <h1 class="title">Petani lampung hasilkan 50 ton bawang
                                                                merah</h1>
                                                            <h2 class="sub_title">
                                                                Lorem ipsum dolor sit amet consectetur adipisicing
                                                                elit.
                                                                Enim vitae cumque vero quis aliquid, iure facilis,
                                                                blanditiis debitis quod officiis ad amet recusandae
                                                                iusto excepturi eaque, hic cum ullam quae!
                                                            </h2>
                                                            <button class="btn btn-info">Read More</button>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>

                                        </div>

                                        <div class="col-md-12 paging">
                                            <ul>
                                                <li>
                                                    <nav class="text-center">
                                                        <ul class="pagination" role="navigation">
                                                            <li role="presentation"><a role="button" href="#"
                                                                    aria-label="Previous"><i class="fa fa-chevron-left"
                                                                        aria-hidden="true"></i><span class="sr-only">previous</span></a></li>
                                                            <li class="active" role="presentation"><a role="button"
                                                                    href="#" aria-label="Page #{i}">1</a></li>
                                                            <li role="presentation"><a role="button" href="#"
                                                                    aria-label="Page #{i}">2</a></li>
                                                            <li role="presentation"><a role="button" href="#"
                                                                    aria-label="Page #{i}">3</a></li>
                                                            <li role="presentation"><a role="button" href="#"
                                                                    aria-label="Page #{i}">...</a></li>
                                                            <li role="presentation"><a role="button" href="#"
                                                                    aria-label="Next"><i class="fa fa-chevron-right"
                                                                        aria-hidden="true"></i><span class="sr-only">next</span></a></li>
                                                        </ul>
                                                    </nav>
                                                </li>
                                            </ul>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <script>
                            $.ajax({
                                url: 'news-sidebar.html',
                                method: 'POST',
                                async: false,
                                cache: false,
                                success: function (result) {
                                    document.write(result);
                                },
                            });
                        </script>
                    </div>
                </div>
            </div>

        </section>

    </div>
    @extends('layouts.footer')
    <script src="../assets/libraries/js/jquery.easing.min.js"></script>
    <script src="../assets/libraries/bootstrap/js/bootstrap.min.js"></script>
    <script src="../assets/libraries/pushy/js/pushy.min.js"></script>
    <script src="../assets/libraries/slick/slick.min.js"></script>
    <script src="../assets/libraries/js/jquery.touchSwipe.min.js"></script>
    <script src="../assets/libraries/jquery-mobile-custom/jquery.mobile.custom.min.js"></script>
    <script src="../assets/js/main.js"></script>
</body>

</html>