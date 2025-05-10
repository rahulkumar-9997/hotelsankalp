@yield('meta')
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>@yield('title')</title>
<meta name="description" content="@yield('description')">
<meta name="keywords" content="@yield('keywords')">
<link rel="canonical" href="{{ url()->current() }}" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="csrf-token" content="{{ csrf_token() }}">
<link rel="shortcut icon" type="image/x-icon" href="{{asset('fronted/hotelsankalp-img/logo/fav-png.png')}}">
<!-- CSS here -->
<link rel="stylesheet" href="{{asset('fronted/css/bootstrap.min.css')}}">
<link rel="stylesheet" href="{{asset('fronted/css/animate.min.css')}}">
<link rel="stylesheet" href="{{asset('fronted/css/magnific-popup.css')}}">
<link rel="stylesheet" href="{{asset('fronted/fontawesome/css/all.min.css')}}">
<link rel="stylesheet" href="{{asset('fronted/css/dripicons.css')}}">
<link rel="stylesheet" href="{{asset('fronted/css/slick.css')}}">
<link rel="stylesheet" href="{{asset('fronted/css/meanmenu.css')}}">
<link rel="stylesheet" href="{{asset('fronted/css/default.css')}}?v={{ time() }}">
<link rel="stylesheet" href="{{asset('fronted/css/style.css')}}?v={{ time() }}">
<link rel="stylesheet" href="{{asset('fronted/css/responsive.css')}}?v={{ time() }}">
<link rel="stylesheet" href="{{asset('fronted/css/hotel-sankalp.css')}}?v={{ time() }}">
<link rel="stylesheet" href="{{asset('fronted/css/jquery.fancybox.min.css')}}">
<script src="https://www.google.com/recaptcha/api.js" async defer></script>
