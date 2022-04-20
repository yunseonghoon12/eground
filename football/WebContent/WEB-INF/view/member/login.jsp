<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=, initial-scale=1.0">
<title>Document</title>
<style>
* {
	text-decoration: none;
	list-style: none;
}

body {
	width: 1280px;
	margin: 0 auto;
}

#loginWrap {
	height: 300px;
	margin: 100px auto;
}
</style>
<body>

	<div id="loginWrap">
		<form action="login" method="post">
			<div style="text-align: center;">모두의 그라운드</div>
			<table style="border-collapse: collapse; margin: 0 auto;">
				<tr>
					<th>아이디</th>
					<th><input type="text" name="id" required="required"></th>
				</tr>
				<tr>
					<th>비밀번호</th>
					<th><input type="password" name="pwd" required="required"></th>
				</tr>
				<tr>
					<th colspan="2"><button>로그인</button></th>

				</tr>

			</table>
		</form>
	</div>


</body>
</html>