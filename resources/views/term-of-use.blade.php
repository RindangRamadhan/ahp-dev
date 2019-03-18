<!DOCTYPE html>
<html lang="en">

<head>
    <title>PT Andall Hasa Prima</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
    <link rel="icon" href="../assets/img/favicon.png">
    <link rel="stylesheet" href="../assets/libraries/bootstrap/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="../assets/libraries/font-awesome/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="../assets/libraries/css/animate.min.css" type="text/css">
    <link rel="stylesheet" href="../assets/libraries/slick/slick.css" type="text/css">
    <link rel="stylesheet" href="../assets/css/variables.css" type="text/css">
    <link rel="stylesheet" href="../assets/css/navbar.css" type="text/css">
    <link rel="stylesheet" href="../assets/css/main.scss" type="text/css">
    <link rel="stylesheet" href="../assets/css/header.css" type="text/css">
    <link rel="stylesheet" href="../assets/css/footer.css" type="text/css">
    <link rel="stylesheet" href="../assets/css/home.css" type="text/css">
    <link rel="stylesheet" href="../assets/css/our-values.css" type="text/css">
    <!-- <link rel="stylesheet" href="../assets/css/style.css" type="text/css"> -->
    <script src="../assets/libraries/js/jquery-3.3.1.min.js"></script>
</head>

<body>
    <script>
        $.ajax({
            url: 'canvas.html',
            method: 'POST',
            async: false,
            cache: false,
            success: function (result) {
                document.write(result);
            },
        });
    </script>
    <div class="site-overlay"></div>
    <div id="wrapper">
    @extends('layouts.header')
        <section class="privacy-policy">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h5 class="page-name">Terms of Use</h5>
                        <h5 class="info-update">
                            Last Updated: 10 February 2019</span>
                        </h5>
                        <p>
                            {!! $termOfUse->deskripsi !!}
                        </p>
                        <button class="btn btn-print" type="submit">
                            Print Document
                        </button>
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
    <!-- <script src="../assets/libraries/jquery-mobile-custom/jquery.mobile.custom.min.js"></script> -->
    <script src="../assets/js/main.js"></script>
</body>

</html>