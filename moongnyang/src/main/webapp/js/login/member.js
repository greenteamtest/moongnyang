function loginCheck() {
	if (document.frm.user_email.value.length == 0) {
		alert("앗! 이메일을 입력하지 않으셨어요ㅠ꼭 입력해주실꺼죠~?");
		frm.user_email.focus();
		return false;
	}
	if (document.frm.user_pwd.value == "") {
		alert("앗! 비밀번호를 입력하지 않으셨어요ㅠ꼭 입력해주실꺼죠~?");
		frm.user_pwd.focus();
		return false;
	}
	//	alert("모두 입력했음");
	return true;
}

function emailCheck() {
	if (document.frm1.userEmail.value == "") {
		alert('이런 이메일을 입력하지 않으셨어요 ∑(O_O;)');
		document.frm1.userEmail.focus();
		return false;
	}
	var url = "emailCheck.do?user_email=" + document.frm1.userEmail.value + "@" + document.frm1.selectemail.value;
	window.open(url, "_blank_1",
		"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=450, height=200");
}
function test() {
	self.close();
}
function emailok() {
	opener.frm1.reEmail.value = "1";
	self.close();
}

function nicknameCheck() {
	if (document.frm2.nickname.value == "") {
		alert('이런 별명을 입력하지 않으셨어요 ∑(O_O;)');
		document.frm2.nickname.focus();
		return false;
	}
	var url = "nicknameCheck.do?nickname=" + document.frm2.nickname.value;
	window.open(url, "_blank_1",
		"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=450, height=200");
}

function nickok() {
	opener.frm2.renickname.value = "1";
	self.close();
}

function joinCheck() {
	if (document.frm.emailFront.value.length == 0) {
		alert("이런, 이메일을 입력하지 않으셨어요 ∑(O_O;)");
		frm.name.focus();
		return false;
	}
	if (document.frm.pwd.value == "") {
		alert("암호를 입력하지 않으셨어요 !(°ロ°) !");
		frm.pwd.focus();
		return false;
	}
	if (document.frm.pwd.value != document.frm.pwd_check.value) {
		alert("암호가 일치하지않아욧 ㅠㅠΣ(꒪ȏ꒪)");
		frm.pwd.focus();
		return false;
	}
	if (document.frm.reEmail.value != "1") {
		alert("이메일 중복체크를 하지 않았어용ㅇㅇㅇ(⑉⊙ȏ⊙)");
		frm.uesrid.focus();
		return false;
	}
	if (document.frm.renickname.value != "1") {
		alert("이메일 중복체크를 하지 않았어용ㅇㅇㅇ(⑉⊙ȏ⊙)");
		frm.uesrid.focus();
		return false;
	}
	return true;
}