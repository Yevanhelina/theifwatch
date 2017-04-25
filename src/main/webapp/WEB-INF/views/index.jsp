<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/style.css">
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js">
	
</script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
	
</script>
</head>
<body>
	<%-- 	<h2>Hello World!</h2>
	<a href="${pageContext.request.contextPath}/aboutjson/">About us in
		Json</a>
	<p>
		<a href="${pageContext.request.contextPath}/about/">About us</a>
	</p>
	<div class="container" id="main">
		<div id="sidebar" class="col-lg-2 col-md-3 col-sm-3 col-xs-4">
			<div class="panel panel-default">
				<div class="panel-body">A Basic Panel</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-body">A Basic Panel</div>
			</div>
		</div>
		<div id="content" class="col-lg-10 col-md-9 col-sm-9 col-xs-8">
			Sample content</div>
	</div>
	 --%>
	<header class="navbar navbar-bright navbar-fixed-top" role="banner">
		<div class="container">
			<div class="navbar-header">
				<button class="navbar-toggle" type="button"
					data-target=".navbar-collapse" data-toggle="collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/">THEIFWATCH</a>
			</div>
			<nav class="collapse navbar-collapse" role="navigation">
				<ul class="nav navbar-nav">
					<li><a href="#">Get Started</a></li>
					<li><a href="#">Edit</a></li>
					<li><a href="#">Visualize</a></li>
					<li><a href="#">Prototype</a></li>
				</ul>
			</nav>
		</div>
	</header>

	<!-- <div id="masthead">
		<div class="container">
			<div class="row">
				<div class="col-md-7">
					<h1>
						Bootply
						<p class="lead">The easiest way to apply Bootstrap</p>
					</h1>
				</div>
				<div class="col-md-5">
					<div class="well well-lg">
						<div class="row">
							<div class="col-sm-6">
								<img class="img-responsive" src="//placehold.it/180x100">
							</div>
							<div class="col-sm-6">
								<strong>Important</strong>
								<p>Blah blah blah blah bla!</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div> -->

	<!-- Begin Body -->
	<div class="container">
		<div class="row">
			<div class="col-md-3" id="leftCol">
				<div class="row" id="sidebar">
					<div class="panel panel-default sidepanel">
						<div class="panel-body">A Basic Panel</div>
					</div>
					<div class="panel panel-default sidepanel">
						<div class="panel-body">A Basic Panel</div>
					</div>
				</div>
			</div>
			<div class="col-md-9" id="mainCol">

				<iframe src="${pageContext.request.contextPath}/map" width="318px"
					height="318px" scrolling="no"> </iframe>


			</div>
		</div>
	</div>

	<script type="text/javascript">
		var $body = $(document.body);
		var navHeight = $('.navbar').outerHeight(true) + 10;
		$('#sidebar').affix({
			offset : {
				top : 245,
				bottom : navHeight
			}
		});
		$body.scrollspy({
			target : '#leftCol',
			offset : navHeight
		});
	</script>

</body>
</html>
