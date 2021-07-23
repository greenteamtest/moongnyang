
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
	if (document.frm.userEmail.value == "") {
		alert('이런 이메일을 입력하지 않으셨어요 ∑(O_O;)');
		document.frm.userEmail.focus();
		return false;
	}
	var url = "emailCheck.do?user_email=" + document.frm.userEmail.value + "@" + document.frm.selectemail.value;
	window.open(url, "_blank_1",
		"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=600, height=150");
}
function test() {
	self.close();
}
function emailok() {
	opener.frm.reEmail.value = "1";
	self.close();
}

function nicknameCheck() {
	if (document.frm.nickname.value == "") {
		alert('이런 별명을 입력하지 않으셨어요 ∑(O_O;)');
		document.frm.nickname.focus();
		return false;
	}
	var url = "nicknameCheck.do?nickname=" + document.frm.nickname.value;
	window.open(url, "_blank_1",
		"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=600, height=150");
}

function nickok() {
	opener.frm.renickname.value = "1";
	self.close();
}

function joinCheck() {
	if (document.frm.userEmail.value.length == 0) {
		alert("이런, 이메일을 입력하지 않으셨어요 ∑(O_O;)");
		frm.userEmail.focus();
		return false;
	}
	if (document.frm.selectemail.value == "15") {
		alert("이런, 이메일도메인을 선택하지 않으셨어요 ∑(O_O;)");
		frm.selectemail.focus();
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
		frm.userEmail.focus();
		return false;
	}
	if (document.frm.renickname.value != "1") {
		alert("별명 중복체크를 하지 않았어용ㅇㅇㅇ(⑉⊙ȏ⊙)");
		frm.nickname.focus();
		return false;
	}
	//	if (!$(check_1).is(":checked") && $(check_2).is(":checked") && $(check_1).is(":checked")) {
	//		alert("약관에 동의해주세요><");
	//		frm.nickname.focus();
	//		return false;
	//	}
	return true;
}

function update_member() {
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
	if (document.frm.renickname.value != "1") {
		alert("별명 중복체크를 하지 않았어용ㅇㅇㅇ(⑉⊙ȏ⊙)");
		frm.nickname.focus();
		return false;
	}
	//	if (!$(check_1).is(":checked") && $(check_2).is(":checked") && $(check_1).is(":checked")) {
	//		alert("약관에 동의해주세요><");
	//		frm.nickname.focus();
	//		return false;
	//	}
	return true;
}

function delete_member() {
	if (document.delete.pwd.value == "") {
		alert("암호를 입력하지 않으셨어요 !(°ロ°) !");
		frm.delete.focus();
		return false;
	}
	if (document.delete.pwd.value != document.delete.origin_pwd.value) {
		alert("암호가 일치하지않아욧 ㅠㅠΣ(꒪ȏ꒪)");
		frm.delete.focus();
		return false;
	}
	return true;
}