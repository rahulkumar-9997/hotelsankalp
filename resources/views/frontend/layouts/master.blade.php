<!doctype html>
<html lang="zxx">
	<head>
		@include('frontend.layouts.headcss')
		<!-- Google tag (gtag.js) -->
		<script async src="https://www.googletagmanager.com/gtag/js?id=G-MW9MMFYGKH"></script>
		<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'G-MW9MMFYGKH');
		</script>	
	</head>
    <body>
		@include('frontend.layouts.header-menu')
		<main>
			@yield('main-content')
		</main>
		@include('frontend.layouts.footer')
		@include('frontend.layouts.common-modal')
		@include('frontend.layouts.footerjs')
	</body>
</html>