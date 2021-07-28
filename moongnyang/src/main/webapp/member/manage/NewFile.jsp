<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<meta charset="EUC-KR">
<title>현재시간 불러오기</title>

<script language="javascript">
	function showClock() {
		var currentDate = new Date();
		var divClock = document.getElementById("divClock");

		var msg = "현재 시간:" + currentDate.getHours() + "시"
		msg += currentDate.getMinutes() + "분";
		msg += currentDate.getSeconds() + "초";

		divClock.innerText = msg;
		setTimeout(showClock, 1000);
	}
</script>
<body onload="showClock()">
	<div id="divClock" class="clock"></div>
</body>