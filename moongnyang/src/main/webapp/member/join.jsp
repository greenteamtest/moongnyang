<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../top&down/header.jsp"%>
<%@ include file="../bootstrap/boot.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리</title>
<script type="text/javascript" src="js/login/member.js"></script>
<script type="text/javascript" src="js/login/loginjs.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="js/login/member.js"></script>

<style>
.jb-th-1 {
	width: 33%;
}

.gray {
	color: #C0C0C0
}

.blue {
	color: #0000FF
}

.left {
	position: relative;
	left: 40%
}
</style>
</head>
<body>
	<br>
	<br>
	<br>
	<br>
	<!-- 이건 좀 좁은 테마 -->
	<form action="emailCheck.do" method="get" name="frm1">
		<table align="center">
			<tr>
				<td><br> <br> <br> <br></td>
			</tr>
			<tr>
				<td colspan='2'>
					<div>
						<h1>회원가입</h1>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan='2'>
					<div>
						<h4>이메일</h4>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan='3'>
					<div class="input-group mb-3">
						<input type="text" class="form-control" placeholder="이메일"
							id="userEmail" name="userEmail"><span class="gray">&nbsp;@&nbsp;</span>
						<select class="form-select" id="inputGroupSelect01"
							name="selectemail" id="selectemail">
							<option selected>선택해주세요.</option>
							<option value="naver.com">naver.com</option>
							<option value="hanmail.net">hanmail.net</option>
							<option value="daum.net">daum.net</option>
							<option value="gmail.com">gmail.com</option>
							<option value="nate.com">nate.com</option>
							<option value="user_write" onChange="selectEmail(this)">직접입력할래요</option>
						</select>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan='2'>
					<div class="d-grid gap-2">
						<button class="btn btn-primary btn-lg btn-warning" type="button"
							onclick="return emailCheck()">중복검사</button>
					</div>
				</td>
			</tr>
			<tr>
				<td class="alert alert-warning" role="alert" id="emailtest"><input
					type="hidden" name="reEmail">중복검사를 해주세용</td>
			</tr>
		</table>
	</form>
	<form action="nicknameCheck.do" method="get" name="frm2">
		<table align="center">
			<tr>
				<td colspan='2'>
					<div>
						<br>
						<h4>비밀번호</h4>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan='2' class="gray">
					<div>8자 이상 입력해주세요.</div>
				</td>
			</tr>
			<tr>
				<td colspan='2'>
					<div class="input-group mb-3">
						<input type="password" class="form-control" placeholder="비밀번호"
							name="pwd" size="20" aria-label="비밀번호"
							aria-describedby="basic-addon1">
					</div>
				</td>
			</tr>
			<tr>
				<td colspan='2'>
					<div>
						<h4>비밀번호확인</h4>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan='2' class="gray">
					<div>확인을 위해 비밀번호를 한 번 더 입력해주세요.</div>
				</td>
			</tr>
			<tr>
				<td colspan='2'>
					<div class="input-group mb-3">
						<input type="password" class="form-control" placeholder="비밀번호"
							name="pwd_check" size="20" aria-label="비밀번호"
							aria-describedby="basic-addon1">
					</div>
				</td>
			</tr>
			<tr>
				<td colspan='2'>
					<div>
						<h4>별명</h4>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan='2' class="gray">
					<div>다른 유저와 겹치지 않는 별명을 입력해주세요.</div>
				</td>
			</tr>
			<tr>
				<td colspan='2'>
					<div class="input-group mb-3">
						<input type="text" class="form-control" placeholder="별명"
							name="nickname" size="20" aria-label="별명"
							aria-describedby="basic-addon1">
						<button type="button" class="btn btn-warning"
							onclick="return nicknameCheck()">중복검사</button>
					</div>
				</td>
			</tr>
			<tr>
				<td class="alert alert-warning" role="alert" id="emailtest"><input
					type="hidden" name="renickname">중복검사를 해주세용</td>
			</tr>
		</table>
	</form>
	<form action="join.do" method="post" name="frm3">
		<table align="center">
			<tr>
				<td colspan='2'>
					<div>
						<h4>약관 동의</h4>
						<br>
					</div>
				</td>
			</tr>
			<tr>
				<td><div class="form-check">
						<input class="form-check-input" type="checkbox" value="selectall"
							onclick="selectAll(this)" id="check_all"> <label
							class="form-check-label" for="check_all"><h4>전체동의</h4> </label>

					</div> <br></td>
			</tr>

			<tr>
				<td><div class="form-check">
						<input class="form-check-input" type="checkbox" name="animal"
							value="" id="check_1"> <label class="form-check-label"
							for="check_1"><h4>만 14세 이상입니다.</h4>
							<h5 class="gray">(필수)</h5></label>
					</div> <br></td>
			</tr>

			<tr>
				<td><div class="form-check">
						<input class="form-check-input" type="checkbox" name="animal"
							value="" id="check_2"> <label class="form-check-label"
							for="check_2"><h4>
								이용약관
								<h5 class="gray">(필수)</h5>
							</h4> </label>
					</div> <br></td>
			</tr>
			<tr>
				<td><div class="form-check">
						<input class="form-check-input" type="checkbox" name="animal"
							value="" id="check_3"> <label class="form-check-label"
							for="check_3"><h4>개인정보수및 및 이용동의</h4>
							<h5 class="gray">(필수)</h5> </label>

					</div> <br></td>
			</tr>
			<tr>
				<td><div class="form-check">
						<input class="form-check-input" type="checkbox" name="animal"
							value="" id="check_4"> <label class="form-check-label"
							for="check_4"><h4>이벤트, 프로모션 메일 및 sms 수신</h4>
							<h5 class="blue">(선택 항목)</h5> </label>
					</div> <br></td>
			</tr>
			<tr>
				<td>
					<div class="d-grid gap-2">
						<button class="btn btn-primary btn-lg btn-warning" type="button"
							value="확인" onclick="return joinCheck()">회원가입</button>
					</div>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>