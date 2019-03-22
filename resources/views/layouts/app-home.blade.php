<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>PT Andall Hasa Prima</title>

    <!-- Styles -->
    <link rel="icon" href="../assets/img/favicon.png">
    <link rel="stylesheet" href="../assets/libraries/bootstrap/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="../assets/libraries/font-awesome/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="../assets/libraries/css/animate.min.css" type="text/css">
    <link rel="stylesheet" href="../assets/libraries/slick/slick.css" type="text/css">
    <link rel="stylesheet" href="../assets/libraries/slick/slick-theme.css" type="text/css">
    <link rel="stylesheet" href="../assets/css/style.css" type="text/css">
</head>
<body id="homepage">
  <div class="site-overlay"></div>
	@extends('layouts.header-home')

	<main class="py-4">
		@yield('content')
	</main>
	
	@extends('layouts.footer')
</body>

	<!-- Scripts -->
	<script src="{{ asset('assets/libraries/js/jquery-3.3.1.min.js') }}"></script>
	<script src="{{ asset('assets/libraries/js/jquery.easing.min.js') }}"></script>
	<script src="{{ asset('assets/libraries/bootstrap/js/bootstrap.min.js') }}"></script>
	<script src="{{ asset('assets/libraries/pushy/js/pushy.min.js') }}"></script>
	<script src="{{ asset('assets/libraries/slick/slick.js') }}"></script>
	<script src="{{ asset('assets/libraries/js/jquery.touchSwipe.min.js') }}"></script>
	<!-- <script src="{{ asset('assets/libraries/jquery-mobile-custom/jquery.mobile.custom.min.js') }}"></script> -->
	<script src="{{ asset('assets/js/main.js') }}"></script>
	@yield('scripts')
  <!-- Download Katalog -->
  <script>
    $(document).ready(function(e){
        $("#btnDownload").on("click", function () {
            let nama_lengkap = $("#nama_lengkap").val();
            let perusahaan = $("#perusahaan").val();
            let email = $("#email").val();
            let no_telp = $("#phone-number").val();

            $.post('{{ route('downloadKatalog') }}',{'_token': $('meta[name=csrf-token]').attr('content'), nama_lengkap:nama_lengkap, perusahaan:perusahaan, email:email, no_telp:no_telp}, function(data){
              if(data == 200) {
                $("#btnPdf").click();

                
                $("#nama_lengkap").val('');
                $("#perusahaan").val('');
                $("#email").val('');
                $("#phone-number").val('');
              }
            });
        })
    });
</script>
</html>
