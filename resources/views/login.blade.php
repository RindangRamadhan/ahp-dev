<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- <meta name="csrf-token" content="{{ csrf_token() }}"> -->

        <title>PT Andall Hasa Prima</title>

        <!-- Styles Login-->
        <link href="{{ asset('css/login.css') }}" rel="stylesheet">
    </head>
    <body>
    <div class="container">
        <div id="login" class="login">
            <form action="{{ admin_base_path('auth/login') }}" method="POST">
            @csrf
                <div class="login-icon-field">
                    <img src="{{ asset('assets/img/logo.png') }}" alt="" width="100%">
                </div>
                <div class="login-form">
                    <div class="username-row row">
                        <label for="username_input">
                        <svg version="1.1" class="user-icon" x="0px" y="0px" viewBox="-255 347 100 100" xml:space="preserve" height="36px" width="30px">
                            <path class="user-path" d="M-203.7,350.3c-6.8,0-12.4,6.2-12.4,13.8c0,4.5,2.4,8.6,5.4,11.1c0,0,2.2,1.6,1.9,3.7c-0.2,1.3-1.7,2.8-2.4,2.8c-0.7,0-6.2,0-6.2,0
                            c-6.8,0-12.3,5.6-12.3,12.3v2.9v14.6c0,0.8,0.7,1.5,1.5,1.5h10.5h1h13.1h13.1h1h10.6c0.8,0,1.5-0.7,1.5-1.5v-14.6v-2.9
                            c0-6.8-5.6-12.3-12.3-12.3c0,0-5.5,0-6.2,0c-0.8,0-2.3-1.6-2.4-2.8c-0.4-2.1,1.9-3.7,1.9-3.7c2.9-2.5,5.4-6.5,5.4-11.1
                            C-191.3,356.5-196.9,350.3-203.7,350.3L-203.7,350.3z"/>
                        </svg>
                        </label>
                        <!-- <input type="text" id="username_input" class="username-input" placeholder="Username" /> -->
                        <input type="input" id="username" class="form-control" placeholder="{{ trans('admin.username') }}" name="username" value="{{ old('username') }}">
                    </div>
                    @if($errors->has('username'))
                        @foreach($errors->get('username') as $message)
                            <label class="control-label" for="inputError">{{$message}}</label><br>
                        @endforeach
                    @endif
                    <div class="password-row row">
                        <label for="password_input">
                        <svg version="1.1" class="password-icon" x="0px" y="0px" viewBox="-255 347 100 100" height="36px" width="30px">
                            <path class="key-path" d="M-191.5,347.8c-11.9,0-21.6,9.7-21.6,21.6c0,4,1.1,7.8,3.1,11.1l-26.5,26.2l-0.9,10h10.6l3.8-5.7l6.1-1.1
                            l1.6-6.7l7.1-0.3l0.6-7.2l7.2-6.6c2.8,1.3,5.8,2,9.1,2c11.9,0,21.6-9.7,21.6-21.6C-169.9,357.4-179.6,347.8-191.5,347.8z"/>
                        </svg>
                        </label>
                        <input type="password" id="password" class="form-control" placeholder="{{ trans('admin.password') }}" name="password">
                    </div>
                    @if($errors->has('password'))
                        @foreach($errors->get('password') as $message)
                            <label class="control-label" for="inputError">{{$message}}</label><br>
                        @endforeach
                    @endif
                </div>
                <div class="call-to-action">
                    <input type="hidden" name="_token" value="{{ csrf_token() }}">
                    <button id="login-button" type="submit">Log In</button>
                    <div class="form-links">
                        <a href="/" target="blank"> &copy; 2019 | PT.Andall Hasa Prima</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>

<script src="{{ asset('assets/libraries/js/jquery-3.3.1.min.js') }}"></script>
<script src="{{ asset('js/velocity.min.js') }}"></script>
<script src="{{ asset('js/velocity.ui.min.js') }}"></script>

<script type="text/javascript">
    function slideUpIn() {
        $("#login").velocity("transition.slideUpIn", 1250);
    }
    function slideLeftIn() {
        $(".row").delay(500).velocity("transition.slideLeftIn", {stagger: 500});
    }

    $(document).ready(function(e){
        slideUpIn();
        slideLeftIn();

        $("#login-button").on("click", function () {
        let username = $("#username").val();
        let password = $("#password").val();

            if(username == "") {
                $(".username-row").velocity("callout.shake");
                $("#errorUser").text("Username Harus Diisi");
            }
            if(password == "") {
                $(".password-row").velocity("callout.shake");
                $("#errorPassword").text("Password Harus Diisi");
            }
        });
    });
</script>
</html>
