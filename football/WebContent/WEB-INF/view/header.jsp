<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
#serchArea {
	display: flex;
	width: 300px;
	height: 60px;
}

.headNav1 {
	display: flex;
	justify-content: flex-end;
	width: 980px;
	height: 60px;
	margin: 10px auto 0;
	left: 350px;
	position: absolute;
}

.headNav1>li {
	margin-left: 10px;
	margin-top: 10px;
}
</style>
<body style="width: 1280px; margin: 0 auto;">
	<div class="headwrap">
		<header id="header01" style="height: 60px; display: flex;">
			<div id="serchArea">
				<a href="#"><img src="<%=request.getContextPath() %>/resource/images/logo.png"
					style="height: 80px; width: 120px; margin-left: 30px;"></a>
			</div>
			<ul class="headNav1">
				<li><a href="#"><img
						src="<%=request.getContextPath() %>/resource/images/돋보기.png"
						style="height: 15px; width: 15px; margin-top: 5px;"></a></li>
				<li><input type="search" placeholder="구장명/지역 검색"
					style="border-radius: 5px; width: 300px; height: 30px;"></a></li>
				<li><a href="#"> <img
						src="<%=request.getContextPath() %>/resource/images/회원.png"
						style="height: 25px; width: 25px;"></a></li>
				<li><a href="#"> <img
						src="<%=request.getContextPath() %>/resource/images/달력.png"
						style="height: 25px; width: 25px; left: 100px;"></a></li>
				<li><a href="#" style="left:120px";>로그인</a></li>
				<li><a href="#" style="left:120px";>회원가입</a></li>
			</ul>
		</header>
	</div>

</body>
