<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/taglib/tablig.jsp"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!-- Page Preloder -->
<div id="preloder">
	<div class="loader"></div>
</div>
<!-- Header Section Begin -->
<header class="header-section">
	<div class="header-top">
		<div class="container">
			<div class="ht-left">
				<div class="mail-service">
					<i class=" fa fa-envelope"></i> qtmobile@gmail.com
				</div>
				<div class="phone-service">
					<i class=" fa fa-phone"></i> 0999999999
				</div>
			</div>
			<div class="ht-right">
				<c:choose>
					<c:when test="${ not empty  sessionScope.account}">
						<a href="/information/views" class="login-panel"><i
							class="fa fa-user"></i>Welcome,
							${sessionScope.account.getFullname()} </a>
					</c:when>
					<c:otherwise>
						<a href="/login" class="login-panel"><i class="fa fa-user"></i>Đăng
							Nhập</a>
					</c:otherwise>
				</c:choose>
				<div class="lan-selector">
					<select class="language_drop" name="countries" id="countries"
						style="width: 300px;">
						<option value="vi"
							data-image="${pageContext.request.contextPath}/img/flag-2.jpg"
							data-imagecss="flag yu" data-title="Vietnam">Vietnam</option>
						<option value="en"
							data-image="${pageContext.request.contextPath}/img/flag-1.jpg"
							data-imagecss="flag yt" data-title="English">English</option>
					</select>
				</div>
				<div class="top-social">
					<a href="#"><i class="ti-facebook"></i></a> <a href="#"><i
						class="ti-twitter-alt"></i></a> <a href="#"><i class="ti-linkedin"></i></a>
					<a href="#"><i class="ti-pinterest"></i></a>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="inner-header">
			<div class="row">
				<div class="col-lg-2 col-md-2">
					<div class="logo" style="padding: 0">
						<a href="/index"> <img
							src="${pageContext.request.contextPath}/img/logo1.png" alt="" >
						</a>
					</div>
				</div>
				<div class="col-lg-8 col-md-7">
					<form action="/product/search" class="row" method="post">
						<div class="col-md-9">
							<input type="text" class="form-control"
								placeholder="Bạn tìm sản phẩm nào ?" name="search"
								value="${keywords }">
						</div>
						<div class="col-md-3">
							<button class="btn btn-dark">
								<i class='bx bx-search'></i>Tìm Kiếm
							</button>
						</div>
					</form>
				</div>
				<div class="col-lg-2 text-left col-md-3">
					<ul class="nav-right">
						<li class="heart-icon"><a href="/favorite"> <i
								class="icon_heart_alt"></i> <span>1</span>
						</a></li>
						<li class="cart-icon"><a href="/cart/views"> <i
								class="icon_bag_alt"></i> <span>${numberCartItem }</span>
						</a></li>

					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="nav-item">
		<div class="container">

			<nav class="nav-menu mobile-menu" style="text-align: center;">
				<ul>
					<li class="active"><a href="/index">Trang Chủ</a></li>
					<li><a href="/product/views">Cửa Hàng</a></li>
					<li><a href="https://chat.openai.com/">GPT</a></li>
					<li><a href="/newfeed/views">Tin Tức</a></li>
					<li><a href="/contact/views">Liên Hệ</a></li>
					<li><a href="#">Cài Đặt</a>
						<ul class="dropdown">
							<li><a href="/register">Đăng Ký</a></li>
							<li><a href="/login">Đăng Nhập</a></li>
							<li><a href="/rememberPass">Quên Mật Khẩu</a></li>

							<c:if test="${ not empty  sessionScope.account}">
								<li><a href="/logout">Đăng Xuất</a></li>
								<li><a href="/history">Lịch Sử Mua Hàng</a></li>

							</c:if>
						</ul></li>
					<c:if test="${ not empty  sessionScope.account}">
						<li><a href="/admin/overview">Quản Trị</a></li>
					</c:if>
				</ul>
			</nav>
			<div id="mobile-menu-wrap"></div>
		</div>
	</div>
</header>

<!-- Header End -->