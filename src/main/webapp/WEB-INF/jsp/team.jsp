<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>team</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
		<link rel="stylesheet" href="../../css/team.css">
	</head>
	<body>
		<!-- 导航 -->
		<nav class="ui inverted attached segment m-padded-tb-mini ">
			<div class="ui container">
				<div class="ui inverted seconfary menu">
					<h2 class="ui teal header item">矿洞实时检测</h2>
					<a href="home.jsp" class="item"><i class="home icon"></i>主页</a>
					<a href="car.jsp" class="item"><i class="idea icon"></i>小车</a>
					<a href="mine.jsp" class="item"><i class="tags icon"></i>矿洞</a>
					<a href="" class="item"><i class="info icon"></i>关于我们</a>
					<div class="right item">
						<div class="ui icon input ">                            <!-- 加   transparent    变透明 -->
							<input type="text" placeholder="Search....">
							<i class="search link icon"></i>
						</div>
					</div>
				</div>
			</div>
		</nav>
		
		<!-- 成员 -->
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<!------ Include the above in your HEAD tag ---------->
		
		<!-- Team -->
		<section id="team" class="pb-5">
			<div class="container">
				<%--		    <h5 class="section-title h1">OUR TEAM</h5>--%>
				<div class="row">
					<!-- Team member1 -->
					<div class="col-xs-12 col-sm-6 col-md-4">
						<div class="image-flip" ontouchstart="this.classList.toggle('hover');">
							<div class="mainflip">
								<div class="frontside">
									<div class="card" style="background: linear-gradient(to bottom, #eacda3, #d6ae7b);">
										<div class="card-body text-center">
											<p><img class=" img-fluid" src="../../img/th.jpg" alt="card image"></p>
											<h5 class="card-title">赖锦宏</h5>
											<p class="card-text">This is basic card with image on top, title, description and button.</p>
											<a href="#" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a>
										</div>
									</div>
								</div>
								<div class="backside">
									<div class="card">
										<div class="card-body text-center mt-4">
											<h5 class="card-title">赖锦宏</h5>
											<p class="card-text">This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.</p>
											<ul class="list-inline">
												<li class="list-inline-item">
													<a class="social-icon text-xs-center" target="_blank" href="#">
														<i class="fa fa-facebook"></i>
													</a>
												</li>
												<li class="list-inline-item">
													<a class="social-icon text-xs-center" target="_blank" href="#">
														<i class="fa fa-twitter"></i>
													</a>
												</li>
												<li class="list-inline-item">
													<a class="social-icon text-xs-center" target="_blank" href="#">
														<i class="fa fa-skype"></i>
													</a>
												</li>
												<li class="list-inline-item">
													<a class="social-icon text-xs-center" target="_blank" href="#">
														<i class="fa fa-google"></i>
													</a>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- ./Team member -->
					<!-- Team member2 -->
					<div class="col-xs-12 col-sm-6 col-md-4">
						<div class="image-flip" ontouchstart="this.classList.toggle('hover');">
							<div class="mainflip">
								<div class="frontside">
									<div class="card">
										<div class="card-body text-center">
											<p><img class=" img-fluid" src="../../img/th.jpg" alt="card image"></p>
											<h5 class="card-title">我们的团队</h5>
											<p class="card-text">This is basic card with image on top, title, description and button.</p>
										</div>
									</div>
								</div>
								<div class="backside">
									<div class="card">
										<div class="card-body text-center mt-4">
											<h5 class="card-title">团队介绍</h5>
											<p class="card-text">This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- ./Team member -->
					<!-- Team member3 -->
					<div class="col-xs-12 col-sm-6 col-md-4">
						<div class="image-flip" ontouchstart="this.classList.toggle('hover');">
							<div class="mainflip">
								<div class="frontside">
									<div class="card" style="background: linear-gradient(to bottom, #eacda3, #d6ae7b);">
										<div class="card-body text-center">
											<p><img class=" img-fluid" src="../../img/th.jpg" alt="card image"></p>
											<h5 class="card-title">李沫璇</h5>
											<p class="card-text">This is basic card with image on top, title, description and button.</p>
											<a href="#" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a>
										</div>
									</div>
								</div>
								<div class="backside">
									<div class="card">
										<div class="card-body text-center mt-4">
											<h5 class="card-title">李沫璇</h5>
											<p class="card-text">This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.</p>
											<ul class="list-inline">
												<li class="list-inline-item">
													<a class="social-icon text-xs-center" target="_blank" href="#">
														<i class="fa fa-facebook"></i>
													</a>
												</li>
												<li class="list-inline-item">
													<a class="social-icon text-xs-center" target="_blank" href="#">
														<i class="fa fa-twitter"></i>
													</a>
												</li>
												<li class="list-inline-item">
													<a class="social-icon text-xs-center" target="_blank" href="#">
														<i class="fa fa-skype"></i>
													</a>
												</li>
												<li class="list-inline-item">
													<a class="social-icon text-xs-center" target="_blank" href="#">
														<i class="fa fa-google"></i>
													</a>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- ./Team member -->
					<!-- Team member4 -->
					<div class="col-xs-12 col-sm-6 col-md-4">
						<div class="image-flip" ontouchstart="this.classList.toggle('hover');">
							<div class="mainflip">
								<div class="frontside">
									<div class="card" style="background: linear-gradient(to bottom, #eacda3, #d6ae7b);">
										<div class="card-body text-center">
											<p><img class=" img-fluid" src="../../img/th.jpg" alt="card image"></p>
											<h5 class="card-title">李哲</h5>
											<p class="card-text">This is basic card with image on top, title, description and button.</p>
											<a href="#" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a>
										</div>
									</div>
								</div>
								<div class="backside">
									<div class="card">
										<div class="card-body text-center mt-4">
											<h5 class="card-title">李哲</h5>
											<p class="card-text">This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.</p>
											<ul class="list-inline">
												<li class="list-inline-item">
													<a class="social-icon text-xs-center" target="_blank" href="#">
														<i class="fa fa-facebook"></i>
													</a>
												</li>
												<li class="list-inline-item">
													<a class="social-icon text-xs-center" target="_blank" href="#">
														<i class="fa fa-twitter"></i>
													</a>
												</li>
												<li class="list-inline-item">
													<a class="social-icon text-xs-center" target="_blank" href="#">
														<i class="fa fa-skype"></i>
													</a>
												</li>
												<li class="list-inline-item">
													<a class="social-icon text-xs-center" target="_blank" href="#">
														<i class="fa fa-google"></i>
													</a>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- ./Team member -->
					<!-- Team member5 -->
					<div class="col-xs-12 col-sm-6 col-md-4">
						<div class="image-flip" ontouchstart="this.classList.toggle('hover');">
							<div class="mainflip">
								<div class="frontside">
									<div class="card" style="background: linear-gradient(to bottom, #eacda3, #d6ae7b);">
										<div class="card-body text-center">
											<p><img class=" img-fluid" src="../../img/th.jpg" alt="card image"></p>
											<h5 class="card-title">胡文豪</h5>
											<p class="card-text">This is basic card with image on top, title, description and button.</p>
											<a href="#" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a>
										</div>
									</div>
								</div>
								<div class="backside">
									<div class="card">
										<div class="card-body text-center mt-4">
											<h5 class="card-title">胡文豪</h5>
											<p class="card-text">This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.</p>
											<ul class="list-inline">
												<li class="list-inline-item">
													<a class="social-icon text-xs-center" target="_blank" href="#">
														<i class="fa fa-facebook"></i>
													</a>
												</li>
												<li class="list-inline-item">
													<a class="social-icon text-xs-center" target="_blank" href="#">
														<i class="fa fa-twitter"></i>
													</a>
												</li>
												<li class="list-inline-item">
													<a class="social-icon text-xs-center" target="_blank" href="#">
														<i class="fa fa-skype"></i>
													</a>
												</li>
												<li class="list-inline-item">
													<a class="social-icon text-xs-center" target="_blank" href="#">
														<i class="fa fa-google"></i>
													</a>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- ./Team member -->
					<!-- Team member6 -->
					<div class="col-xs-12 col-sm-6 col-md-4">
						<div class="image-flip" ontouchstart="this.classList.toggle('hover');">
							<div class="mainflip">
								<div class="frontside" >
									<div class="card" style="background: linear-gradient(to bottom, #eacda3, #d6ae7b);">
										<div class="card-body text-center">
											<p><img class=" img-fluid" src="../../img/th.jpg" alt="card image"></p>
											<h5 class="card-title">雷林</h5>
											<p class="card-text">This is basic card with image on top, title, description and button.</p>
											<a href="#" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a>
										</div>
									</div>
								</div>
								<div class="backside">
									<div class="card">
										<div class="card-body text-center mt-4">
											<h5 class="card-title">雷林</h5>
											<p class="card-text">This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.</p>
											<ul class="list-inline">
												<li class="list-inline-item">
													<a class="social-icon text-xs-center" target="_blank" href="#">
														<i class="fa fa-facebook"></i>
													</a>
												</li>
												<li class="list-inline-item">
													<a class="social-icon text-xs-center" target="_blank" href="#">
														<i class="fa fa-twitter"></i>
													</a>
												</li>
												<li class="list-inline-item">
													<a class="social-icon text-xs-center" target="_blank" href="#">
														<i class="fa fa-skype"></i>
													</a>
												</li>
												<li class="list-inline-item">
													<a class="social-icon text-xs-center" target="_blank" href="#">
														<i class="fa fa-google"></i>
													</a>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- ./Team member -->
				</div>
			</div>
		</section>
		<!-- Team -->
	</body>
</html>
