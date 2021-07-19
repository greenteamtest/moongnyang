<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유기 동물</title>
<style type="text/css">
	table{
	width:65%;
	height: 100px;
	margin:auto;
	}
</style>
</head>
<body>
	<c:set var="i" value="0" />
	<c:set var="j" value="2" />
		<table border= "1" >
			<tbody>
				<c:forEach var="list" items="${list }">
					<c:if test="${i%j == 0 }">
						<tr>
					</c:if>
							<td><a href="BoardServlet_picnic?command=abandonment_view&num=${list.desertionNo }"> <img src="${list.popfile }" width="300" height="300"></a></td>
								<td>
								&nbsp;유기 번호 : ${list.desertionNo }<br>
								&nbsp;접수일 : ${list.happenDt}<br>
								&nbsp;발견장소 : ${list.happenPlace}<br>
								&nbsp;품종 : ${list.kindCd}<br>
								&nbsp;색상 : ${list.colorCd}<br>
								&nbsp;나이 : ${list.age}<br>
								&nbsp;체중 : ${list.weight}<br>
								&nbsp;공고번호 : ${list.noticeNo}<br>
								&nbsp;공고 시작일 : ${list.noticeSdt}<br>
								&nbsp;공고 종료일 : ${list.noticeEdt}<br>
								&nbsp;상태 : ${list.processState}<br>
								&nbsp;성별(M:수컷,F:암컷,Q:미상) : ${list.sexCd}<br>
								</td>
            		<c:if test="${i%j == j-1 }">
						</tr>
            		</c:if>
            		<c:set var="i" value="${i+1 }" />
        		</c:forEach>
    		</tbody>
		</table>
		<table>
			<tr><td>2<a href="BoardServlet_picnic?Abandonment_Action&pageNo=2"></a></td></tr>
		</table>
</body>
</html>