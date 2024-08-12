<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- 상품목록  -->
<!-- Breadcrumb Begin -->
<div class="breadcrumb-option">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="breadcrumb__links">
					<a href="./index.html"><i class="fa fa-home"></i> Home</a> <a
						href="#">Women’s </a> <span>${product.prodCategory }</span>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Breadcrumb End -->

<!-- Product Details Section Begin -->
<section class="product-details spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-6">
				<div class="product__details__pic">
					<div class="product__details__pic__left product__thumb nice-scroll">

						<a class="pt active" href="#product-1"> <img
							src="img/nikeimg/${product.prodImage1}" alt="">
						</a> <a class="pt" href="#product-2"> <img
							src="img/nikeimg/${product.prodImage2}" alt="">
						</a> <a class="pt" href="#product-3"> <img
							src="img/nikeimg/${product.prodImage3}" alt="">
						</a> <a class="pt" href="#product-4"> <img
							src="img/nikeimg/${product.prodImage4}" alt="">
						</a>
					</div>
					<div class="product__details__slider__content">
						<div class="product__details__pic__slider owl-carousel">
							<img data-hash="product-1" class="product__big__img"
								src="img/nikeimg/${product.prodImage1}" alt=""> <img
								data-hash="product-2" class="product__big__img"
								src="img/nikeimg/${product.prodImage2}" alt=""> <img
								data-hash="product-3" class="product__big__img"
								src="img/nikeimg/${product.prodImage3}" alt=""> <img
								data-hash="product-4" class="product__big__img"
								src="img/nikeimg/${product.prodImage4}" alt="">
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="product__details__text">
					<h3>${product.prodName }
						<span>${product.prodCategory }</span>
					</h3>
					<div class="rating">
						<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star"></i> <span>( 138 reviews )</span>
					</div>
					<div class="product__details__price">${product.prodPrice }</div>
					<p>${product.prodExp }</p>

					<form action="basketControl" id="basketForm">
						<input type="hidden" name="prodNo" value="${product.prodNo}" />
						<div class="product__details__widget">
							<ul>
								<li><span>Available color:</span>
									<div class="color__checkbox">
										<label for="red"> <input type="radio"
											name="basketColor" id="red" value="red" checked> 
											<span
											class="checkmark"></span></label> 
											<label for="black"> <input type="radio"
											name="basketColor" id="black" value="black"> <span
											class="checkmark black-bg"></span></label> 
											<label for="grey"> <input type="radio"
											name="basketColor" id="grey" value="grey"> <span
											class="checkmark grey-bg"></span></label>
									</div></li>
								<li><span>Available size:</span>
									<div class="size__btn">
										<label for="xs-btn" class="active"> 
										<input type="radio" id="xs-btn"> xs
										</label> 
										<label for="s-btn"> <input type="radio" id="s-btn"
											name="basketSize" value="s"> s
										</label> 
										<label for="m-btn"> <input type="radio" id="m-btn"
											name="basketSize" value="m"> m
										</label> 
										<label for="l-btn"> <input type="radio" id="l-btn"
											name="basketSize" value="l"> l
										</label>
									</div></li>
							</ul>
						</div>
						
						
						<div class="product__details__button">
							<div class="quantity">
								<span>Quantity:</span>
								<div class="pro-qty">
									<input type="number" name="basketQuantity" value="1">
								</div>
							</div>
							
						<div class="product__details__button">
							<button type="submit"
								class="cart-btn"><span class="icon_bag_alt"></span> Add to
								cart</button>
								
						</div>
						</div>
					</form>
						<div class="product__details__button">
							<ul>
								<li><a href="#"><span class="icon_heart_alt"></span></a></li>
								<li><a href="#"><span class="fa-regular fa-heart"></span></a></li>

								<li><a href="#"><span class="icon_adjust-horiz"></span></a></li>
							</ul>
						</div>
				</div>
			</div>
			<div class="col-lg-12">
				<div class="product__details__tab">
					<ul class="nav nav-tabs" role="tablist">
						<li class="nav-item"><a class="nav-link active"
							data-toggle="tab" href="#tabs-1" role="tab">Description</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#tabs-2" role="tab">Specification</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#tabs-3" role="tab">Reviews ( 2 )</a></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="tabs-1" role="tabpanel">
							<h6>Description</h6>
							<p>${product.prodExp }</p>
						</div>
						<div class="tab-pane" id="tabs-2" role="tabpanel">
							<h6>Specification</h6>
							<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur
								aut odit aut loret fugit, sed quia consequuntur magni dolores
								eos qui ratione voluptatem sequi nesciunt loret. Neque porro
								lorem quisquam est, qui dolorem ipsum quia dolor si. Nemo enim
								ipsam voluptatem quia voluptas sit aspernatur aut odit aut loret
								fugit, sed quia ipsu consequuntur magni dolores eos qui ratione
								voluptatem sequi nesciunt. Nulla consequat massa quis enim.</p>
							<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
								Aenean commodo ligula eget dolor. Aenean massa. Cum sociis
								natoque penatibus et magnis dis parturient montes, nascetur
								ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu,
								pretium quis, sem.</p>
						</div>
						<div class="tab-pane" id="tabs-3" role="tabpanel">
							<h6>Reviews ( 2 )</h6>
							<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur
								aut odit aut loret fugit, sed quia consequuntur magni dolores
								eos qui ratione voluptatem sequi nesciunt loret. Neque porro
								lorem quisquam est, qui dolorem ipsum quia dolor si. Nemo enim
								ipsam voluptatem quia voluptas sit aspernatur aut odit aut loret
								fugit, sed quia ipsu consequuntur magni dolores eos qui ratione
								voluptatem sequi nesciunt. Nulla consequat massa quis enim.</p>
							<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
								Aenean commodo ligula eget dolor. Aenean massa. Cum sociis
								natoque penatibus et magnis dis parturient montes, nascetur
								ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu,
								pretium quis, sem.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="related__title">
					<h5>RELATED PRODUCTS</h5>
				</div>
			</div>
			<div class="col-lg-3 col-md-4 col-sm-6">
				<div class="product__item">
					<div class="product__item__pic set-bg"
						data-setbg="img/product/related/rp-1.jpg">
						<div class="label new">New</div>
						<ul class="product__hover">
							<li><a href="img/product/related/rp-1.jpg"
								class="image-popup"><span class="arrow_expand"></span></a></li>
							<li><a href="#"><span class="icon_heart_alt"></span></a></li>
							<li><a href="#"><span class="icon_bag_alt"></span></a></li>
						</ul>
					</div>
					<div class="product__item__text">
						<h6>
							<a href="#">Buttons tweed blazer</a>
						</h6>
						<div class="rating">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i>
						</div>
						<div class="product__price">$ 59.0</div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-4 col-sm-6">
				<div class="product__item">
					<div class="product__item__pic set-bg"
						data-setbg="img/product/related/rp-2.jpg">
						<ul class="product__hover">
							<li><a href="img/product/related/rp-2.jpg"
								class="image-popup"><span class="arrow_expand"></span></a></li>
							<li><a href="#"><span class="icon_heart_alt"></span></a></li>
							<li><a href="#"><span class="icon_bag_alt"></span></a></li>
						</ul>
					</div>
					<div class="product__item__text">
						<h6>
							<a href="#">Flowy striped skirt</a>
						</h6>
						<div class="rating">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i>
						</div>
						<div class="product__price">$ 49.0</div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-4 col-sm-6">
				<div class="product__item">
					<div class="product__item__pic set-bg"
						data-setbg="img/product/related/rp-3.jpg">
						<div class="label stockout">out of stock</div>
						<ul class="product__hover">
							<li><a href="img/product/related/rp-3.jpg"
								class="image-popup"><span class="arrow_expand"></span></a></li>
							<li><a href="#"><span class="icon_heart_alt"></span></a></li>
							<li><a href="#"><span class="icon_bag_alt"></span></a></li>
						</ul>
					</div>
					<div class="product__item__text">
						<h6>
							<a href="#">Cotton T-Shirt</a>
						</h6>
						<div class="rating">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i>
						</div>
						<div class="product__price">$ 59.0</div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-4 col-sm-6">
				<div class="product__item">
					<div class="product__item__pic set-bg"
						data-setbg="img/product/related/rp-4.jpg">
						<ul class="product__hover">
							<li><a href="img/product/related/rp-4.jpg"
								class="image-popup"><span class="arrow_expand"></span></a></li>
							<li><a href="#"><span class="icon_heart_alt"></span></a></li>
							<li><a href="#"><span class="icon_bag_alt"></span></a></li>
						</ul>
					</div>
					<div class="product__item__text">
						<h6>
							<a href="#">Slim striped pocket shirt</a>
						</h6>
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
</section>
<!-- Product Details Section End -->

<!-- Instagram Begin -->
<div class="instagram">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-2 col-md-4 col-sm-4 p-0">
				<div class="instagram__item set-bg"
					data-setbg="img/instagram/insta-1.jpg">
					<div class="instagram__text">
						<i class="fa fa-instagram"></i> <a href="#">@ ashion_shop</a>
					</div>
				</div>
			</div>
			<div class="col-lg-2 col-md-4 col-sm-4 p-0">
				<div class="instagram__item set-bg"
					data-setbg="img/instagram/insta-2.jpg">
					<div class="instagram__text">
						<i class="fa fa-instagram"></i> <a href="#">@ ashion_shop</a>
					</div>
				</div>
			</div>
			<div class="col-lg-2 col-md-4 col-sm-4 p-0">
				<div class="instagram__item set-bg"
					data-setbg="img/instagram/insta-3.jpg">
					<div class="instagram__text">
						<i class="fa fa-instagram"></i> <a href="#">@ ashion_shop</a>
					</div>
				</div>
			</div>
			<div class="col-lg-2 col-md-4 col-sm-4 p-0">
				<div class="instagram__item set-bg"
					data-setbg="img/instagram/insta-4.jpg">
					<div class="instagram__text">
						<i class="fa fa-instagram"></i> <a href="#">@ ashion_shop</a>
					</div>
				</div>
			</div>
			<div class="col-lg-2 col-md-4 col-sm-4 p-0">
				<div class="instagram__item set-bg"
					data-setbg="img/instagram/insta-5.jpg">
					<div class="instagram__text">
						<i class="fa fa-instagram"></i> <a href="#">@ ashion_shop</a>
					</div>
				</div>
			</div>
			<div class="col-lg-2 col-md-4 col-sm-4 p-0">
				<div class="instagram__item set-bg"
					data-setbg="img/instagram/insta-6.jpg">
					<div class="instagram__text">
						<i class="fa fa-instagram"></i> <a href="#">@ ashion_shop</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Instagram End -->
