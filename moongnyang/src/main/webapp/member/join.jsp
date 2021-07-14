<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../bootstrap/boot.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리</title>
<script type="text/javascript" src="../script/member.js"></script>
<script type="text/javascript" src="../script/login.js"></script>

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
	<form action="join.do" method="post" name="frm">
		<table align="center">
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
							name="email" aria-label="이메일"><span class="gray">&nbsp;@&nbsp;</span>
						<select class="form-select" id="inputGroupSelect01">
							<option selected>선택해주세요.</option>
							<option value="1">naver.com</option>
							<option value="2">hanmail.net</option>
							<option value="3">daum.net</option>
							<option value="4">gmail.com</option>
							<option value="5">nate.com</option>
							<option value="6" func="inputUserEmail()">직접입력할래요</option>
						</select>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan='2'>
					<div class="d-grid gap-2">
						<button class="btn btn-primary btn-xs btn-warning" type="button">Button</button>
						<br>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan='2'>
					<div>
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
							onclick="return joinCheck()">중복검사</button>
					</div>
				</td>
			</tr>
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
						<input class="form-check-input" type="checkbox" value=""
							id="check_all"> <label class="form-check-label"
							for="check_all"><h4>전체동의</h4> </label>

					</div> <br></td>
			</tr>
		</table>
		<div class="checkbox_group">
			<table align="center">

				<tr>
					<td><div class="form-check">
							<input class="form-check-input" type="checkbox" value=""
								id="check_1"> <label class="form-check-label"
								for="check_1">만 14세 이상입니다. (필수)</label>
						</div> <br></td>
				</tr>

				<tr>
					<td><div class="form-check">
							<input class="form-check-input" type="checkbox" value=""
								id="check_2"> <label class="form-check-label"
								for="check_2"><h4>
									이용약관
									<h5 class="gray">(필수)</h5>
								</h4> </label>
						</div> <br></td>
				</tr>
				<tr>
					<td><div class="form-check">
							<input class="form-check-input" type="checkbox" value=""
								id="check_3"> <label class="form-check-label"
								for="check_3"><h4>개인정보수및 및 이용동의</h4>
								<h5 class="gray">(필수)</h5> </label>

						</div> <br></td>
				</tr>
				<tr>
					<td><div class="form-check">
							<input class="form-check-input" type="checkbox" value=""
								id="check_4"> <label class="form-check-label"
								for="check_4"><h4>이벤트, 프로모션 메일 및 sms 수신</h4>
								<h5 class="blue">(선택 항목)</h5> </label>
						</div> <br></td>
				</tr>

				<tr>
					<td colspan="2" align="center"><input type="submit" value="확인"
						onclick="return joinCheck()"> &nbsp;&nbsp;&nbsp;&nbsp; <input
						type="reset" value="취소"></td>
				</tr>
				<tr>
					<td colspan="2">${message}</td>
				</tr>

			</table>
		</div>
		<div class="checkbox_group">

			<input type="checkbox" id="check_all"> <label for="check_all">전체
				동의</label> <input type="checkbox" id="check_1" class="normal"> <label
				for="check_1">개인정보 처리방침 동의</label> <input type="checkbox"
				id="check_2" class="normal"> <label for="check_2">서비스
				이용약관 동의</label> <input type="checkbox" id="check_3" class="normal">
			<label for="check_3">마케팅 수신 동의</label>

		</div>
	</form>
</body>
</html>