<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 상품목록  -->

<!-- 본문 위 경로 표시 -->
<div class="breadcrumb-option">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="breadcrumb__links">
					<a href="./index.html"><i class="fa fa-home"></i> Home</a> <span>Shop</span>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 본문 위 경로 표시 End -->

<!-- 본문 시작 -->
<section class="shop spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-3">
				<div class="shop__sidebar">
					<div class="sidebar__categories">
						<div class="section-title">
							<h4>Categories</h4>
						</div>
						<div class="categories__accordion">
							<div class="accordion" id="accordionExample">
								<div class="card">
									<div class="card-heading active">
										<a data-toggle="collapse" data-target="#collapseOne">Women</a>
									</div>
									<div id="collapseOne" class="collapse"
										data-parent="#accordionExample">
										<div class="card-body">
											<ul>
											
												<li><a href="productList.do?prodCategory=top&prodCategory2=women&prodStar=0">Top</a></li>
												<li><a href="productList.do?prodCategory=bottom&prodCategory2=women&prodStar=0">Bottom</a></li>
												<li><a href="productList.do?prodCategory=shoes&prodCategory2=women&prodStar=0">Shoes</a></li>
											</ul>
										</div>
									</div>
								</div>
								<div class="card">
									<div class="card-heading active">
										<a data-toggle="collapse" data-target="#collapseTwo">Men</a>
									</div>
									<div id="collapseTwo" class="collapse"
										data-parent="#accordionExample">
										<div class="card-body">
											<ul>
												<li><a href="productList.do?prodCategory=top&prodCategory2=men&prodStar=0">Top</a></li>
												<li><a href="productList.do?prodCategory=bottom&prodCategory2=men&prodStar=0">Bottom</a></li>
												<li><a href="productList.do?prodCategory=shoes&prodCategory2=men&prodStar=0">Shoes</a></li>
											</ul>
										</div>
									</div>
								</div>
								<div class="card">
									<div class="card-heading active">
										<a data-toggle="collapse" data-target="#collapseThree">Kids</a>
									</div>
									<div id="collapseThree" class="collapse"
										data-parent="#accordionExample">
										<div class="card-body">
											<ul>
												<li><a href="productList.do?prodCategory=top&prodCategory2=kids&prodStar=0">Top</a></li>
												<li><a href="productList.do?prodCategory=bottom&prodCategory2=kids&prodStar=0">Bottom</a></li>
												<li><a href="productList.do?prodCategory=shoes&prodCategory2=kids&prodStar=0">Shoes</a></li>
											</ul>
										</div>
									</div>
								</div>
								<div class="card-heading">
										<a href="productList.do?prodStar=5">Best Collection</a>
								</div>
							</div>
						</div>
					</div>
					
				</div>
			</div>
			<!-- 중앙페이지 -->
			<div class="col-lg-9 col-md-9">
				<div class="row">
					<c:forEach var="product" items="${productList }">
						<div class="col-lg-4 col-md-6">
							<div class="product__item">
								<div class="product__item__pic set-bg"
									data-setbg="img/shop/${product.thumbnail }">
									<!--  <div class="label new">New</div>-->
									<ul class="product__hover">
										<li><a href="img/shop/" class="image-popup"> <span class="arrow_expand"></span>
										</a></li>
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
									
									<div class="product__price">${product.prodPrice }</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>

			<div class="col-lg-12 text-center">
				<div class="pagination__option">
					<a href="productList.do?page="${page.page}>1</a> <a href="#"><i class="fa fa-angle-right"></i></a>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>
</section>
<!-- 본문 End -->
<p>${paging }</p>
<!-- 페이지 부분 -->
<nav aria-label="Page navigation example">
	<ul class="pagination justify-content-center">
	
		<!-- prev 페이지 -->
		<c:if test="${paging.prev }">
			<li class="page-item"><a class="page-link"
				href="boardList.do?page=${paging.startPage-1}&searchCondition=${searchCondition}&keyword=${keyword}"
				aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
			</a></li>
		</c:if>

		<!-- 페이지 갯수만큼 링크 생성 -->
		<c:forEach var="p" begin="${paging.startPage }" end="${paging.endPage }">
		  <c:choose>
		    <c:when test="${paging.page == p }">
		      <li class="page-item active" aria-current="page">
		        <span class="page-link">${p }</span>
	       	  </li>
		    </c:when>
		    <c:otherwise>
		<li class="page-item"><a class="page-link" href="boardList.do?page=${p }&searchCondition=${searchCondition }&keyword=${keyword }">${p }</a></li>
		    </c:otherwise>
		  </c:choose>
		</c:forEach>

		<!-- next 페이지 -->
		<c:if test="${paging.next }">
		<li class="page-item">
		<a class="page-link" href="boardList.do?page=${paging.endPage+1 }&searchCondition=${searchCondition }&keyword=${keyword }" aria-label="Next">
				<span aria-hidden="true">&raquo;</span>
		</a>
		</li>
		</c:if>
	</ul>
</nav>

<!-- Instagram Begin -->
<div class="instagram">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-2 col-md-4 col-sm-4 p-0">
				<div class="instagram__item set-bg"
					data-setbg="img/instagram/leftE.jpg">
					<div class="instagram__text">
						<i class="fa fa-instagram"></i> <a href="#">@ NIKE</a>
					</div>
				</div>
			</div>
			<div class="col-lg-2 col-md-4 col-sm-4 p-0">
				<div class="instagram__item set-bg"
					data-setbg="img/instagram/leftM1.jpg">
					<div class="instagram__text">
						<i class="fa fa-instagram"></i> <a href="#">@ NIKE</a>
					</div>
				</div>
			</div>
			<div class="col-lg-2 col-md-4 col-sm-4 p-0">
				<div class="instagram__item set-bg"
					data-setbg="img/instagram/adCenter.jpg">
					<div class="instagram__text">
						<i class="fa fa-instagram"></i> <a href="#">@ NIKE</a>
					</div>
				</div>
			</div>
			<div class="col-lg-2 col-md-4 col-sm-4 p-0">
				<div class="instagram__item set-bg"
					data-setbg="img/instagram/adWCenter.jpg">
					<div class="instagram__text">
						<i class="fa fa-instagram"></i> <a href="#">@ NIKE</a>
					</div>
				</div>
			</div>
			<div class="col-lg-2 col-md-4 col-sm-4 p-0">
				<div class="instagram__item set-bg"
					data-setbg="img/instagram/rightW1.jpg">
					<div class="instagram__text">
						<i class="fa fa-instagram"></i> <a href="#">@ NIKE</a>
					</div>
				</div>
			</div>
			<div class="col-lg-2 col-md-4 col-sm-4 p-0">
				<div class="instagram__item set-bg"
					data-setbg="img/instagram/rightE.jpg">
					<div class="instagram__text">
						<i class="fa fa-instagram"></i> <a href="#">@ NIKE</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Instagram End -->