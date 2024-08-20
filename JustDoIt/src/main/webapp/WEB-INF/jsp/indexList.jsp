<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<section class="categories">
		<div class="container-fluid">
			<div class="categories__item categories__large__item set-bg"
				data-setbg="img/mainimg3.jpg">
				<div class="categories__text">
					<h1 style="color:white;">Best Collection</h1>
					<p>Sitamet, consectetur adipiscing elit, sed do eiusmod tempor
						incidid-unt labore edolore magna aliquapendisse ultrices gravida.</p>
					<a href="productList.do?prodStar=5" style="color:white;">Shop now</a>
				</div>
			</div>
		</div>

	</section>
	<!-- Categories Section End -->

	<!-- Product Section Begin -->
	<section class="product spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4">
					<div class="section-title">
						<h4>New product</h4>
					</div>
				</div>
				<div class="col-lg-8 col-md-8">
					<ul class="filter__controls">
						<li class="active" data-filter="*">All</li>
						<li data-filter=".women">Women’s</li>
						<li data-filter=".men">Men’s</li>
						<li data-filter=".kid">Kid’s</li>
						<li data-filter=".accessories">Best Seller</li>
					</ul>
				</div>
			</div>
			<c:forEach var="product" items="${productList }">
				<div class="row property__gallery">
					<div
						class="col-lg-3 col-md-4 col-sm-6 mix women men kid accessories cosmetic">
						<div class="product__item sale">
							<div class="product__item__pic set-bg"
								data-setbg="img/shop/${product.thumbnail} ">
								<!-- 	<div class="label">Sale</div> -->
								<ul class="product__hover">
									<li><a href="img/product/product-8.jpg"
										class="image-popup"><span class="arrow_expand"></span></a></li>
									<li><a href="#"><span class="icon_heart_alt"></span></a></li>
									<li><a href="#"><span class="icon_bag_alt"></span></a></li>
								</ul>
							</div>
							<div class="product__item__text">
								<h6>
									<a href="#">${product.prodName}</a>
								</h6>
								<div class="rating">
									<c:forEach begin="1" end="${product.prodStar }">
										<i class="fa fa-star"></i>
									</c:forEach>
								</div>
								<!--  <div class="product__price">
									$ 49.0-->
								<span>${product.prodPrice}</span>
								<!--  </div>-->
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>
	<!-- Product Section End -->

	<!-- Banner Section Begin -->
	<section class="banner set-bg" data-setbg="img/banner/banner-1.jpg">
		<div class="container">
			<div class="row">
				<div class="col-xl-7 col-lg-8 m-auto">
					<div class="banner__slider owl-carousel">
						<div class="banner__item">
							<div class="banner__text">
								<span>The Chloe Collection</span>
								<h1>The Project Jacket</h1>
								<a href="#">Shop now</a>
							</div>
						</div>
						<div class="banner__item">
							<div class="banner__text">
								<span>The Chloe Collection</span>
								<h1>The Project Jacket</h1>
								<a href="#">Shop now</a>
							</div>
						</div>
						<div class="banner__item">
							<div class="banner__text">
								<span>The Chloe Collection</span>
								<h1>The Project Jacket</h1>
								<a href="#">Shop now</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Banner Section End -->

	<!-- Trend Section Begin -->
	<section class="trend spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="trend__content">
						<div class="section-title">
							<h4>Hot Trend</h4>
						</div>
						<div class="trend__item">
							<div class="trend__item__pic">
								<img src="img/trend/ht-1.jpg" alt="">
							</div>
							<div class="trend__item__text">
								<h6>Chain bucket bag</h6>
								<div class="rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i>
								</div>
								<div class="product__price">$ 59.0</div>
							</div>
						</div>
						<div class="trend__item">
							<div class="trend__item__pic">
								<img src="img/trend/ht-2.jpg" alt="">
							</div>
							<div class="trend__item__text">
								<h6>Pendant earrings</h6>
								<div class="rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i>
								</div>
								<div class="product__price">$ 59.0</div>
							</div>
						</div>
						<div class="trend__item">
							<div class="trend__item__pic">
								<img src="img/trend/ht-3.jpg" alt="">
							</div>
							<div class="trend__item__text">
								<h6>Cotton T-Shirt</h6>
								<div class="rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i>
								</div>
								<div class="product__price">$ 59.0</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="trend__content">
						<div class="section-title">
							<h4>Best seller</h4>
						</div>
						<div class="trend__item">
							<div class="trend__item__pic">
								<img src="img/trend/bs-1.jpg" alt="">
							</div>
							<div class="trend__item__text">
								<h6>Cotton T-Shirt</h6>
								<div class="rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i>
								</div>
								<div class="product__price">$ 59.0</div>
							</div>
						</div>
						<div class="trend__item">
							<div class="trend__item__pic">
								<img src="img/trend/bs-2.jpg" alt="">
							</div>
							<div class="trend__item__text">
								<h6>
									Zip-pockets pebbled tote <br />briefcase
								</h6>
								<div class="rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i>
								</div>
								<div class="product__price">$ 59.0</div>
							</div>
						</div>
						<div class="trend__item">
							<div class="trend__item__pic">
								<img src="img/trend/bs-3.jpg" alt="">
							</div>
							<div class="trend__item__text">
								<h6>Round leather bag</h6>
								<div class="rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i>
								</div>
								<div class="product__price">$ 59.0</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="trend__content">
						<div class="section-title">
							<h4>Feature</h4>
						</div>
						<div class="trend__item">
							<div class="trend__item__pic">
								<img src="img/trend/f-1.jpg" alt="">
							</div>
							<div class="trend__item__text">
								<h6>Bow wrap skirt</h6>
								<div class="rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i>
								</div>
								<div class="product__price">$ 59.0</div>
							</div>
						</div>
						<div class="trend__item">
							<div class="trend__item__pic">
								<img src="img/trend/f-2.jpg" alt="">
							</div>
							<div class="trend__item__text">
								<h6>Metallic earrings</h6>
								<div class="rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i>
								</div>
								<div class="product__price">$ 59.0</div>
							</div>
						</div>
						<div class="trend__item">
							<div class="trend__item__pic">
								<img src="img/trend/f-3.jpg" alt="">
							</div>
							<div class="trend__item__text">
								<h6>Flap cross-body bag</h6>
								<div class="rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i>
								</div>
								<div class="product__price">$ 59.0</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Trend Section End -->

	<!-- Discount Section Begin -->
	<section class="discount">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 p-0">
					<div class="discount__pic">
						<img src="img/discount.jpg" alt="">
					</div>
				</div>
				<div class="col-lg-6 p-0">
					<div class="discount__text">
						<div class="discount__text__title">
							<span>Discount</span>
							<h2>Summer 2019</h2>
							<h5>
								<span>Sale</span> 50%
							</h5>
						</div>
						<div class="discount__countdown" id="countdown-time">
							<div class="countdown__item">
								<span>22</span>
								<p>Days</p>
							</div>
							<div class="countdown__item">
								<span>18</span>
								<p>Hour</p>
							</div>
							<div class="countdown__item">
								<span>46</span>
								<p>Min</p>
							</div>
							<div class="countdown__item">
								<span>05</span>
								<p>Sec</p>
							</div>
						</div>
						<a href="#">Shop now</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Discount Section End -->

	<!-- Services Section Begin -->
	<section class="services spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="services__item">
						<i class="fa fa-car"></i>
						<h6>Free Shipping</h6>
						<p>For all oder over $99</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="services__item">
						<i class="fa fa-money"></i>
						<h6>Money Back Guarantee</h6>
						<p>If good have Problems</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="services__item">
						<i class="fa fa-support"></i>
						<h6>Online Support 24/7</h6>
						<p>Dedicated support</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="services__item">
						<i class="fa fa-headphones"></i>
						<h6>Payment Secure</h6>
						<p>100% secure payment</p>
					</div>
				</div>
			</div>
		</div>
	</section>