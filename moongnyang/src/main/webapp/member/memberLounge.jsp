<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../top&down/header.jsp"%>
<%@ include file="../bootstrap/boot.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>πΆπ±λ¬΄μμ λμλλ¦΄κΉμ©πΆπ±</title>
</head>
<body>
	<br>
	<br>
	<br>
	<br>
	<div class="container">
		<div class="row justify-content-md-center">
			<div class="col-md-auto">
				<h2>κ³ κ° μΌν°</h2>
				<div class="accordion" id="accordionExample">
					<div class="accordion-item">
						<h2 class="accordion-header" id="headingOne">
							<button class="accordion-button" type="button"
								data-bs-toggle="collapse" data-bs-target="#collapse1"
								aria-expanded="false" aria-controls="collapseOne">λΉλ°λ²νΈ
								λ³κ²½μ μ΄λ»κ²νλμ?</button>
						</h2>
						<div id="collapse2" class="accordion-collapse collapse show"
							aria-labelledby="headingOne" data-bs-parent="#accordionExample">
							<div class="accordion-body bg-Light">μ°μΈ‘ μλ¨ νλ‘ν μ¬μ§μ ν΄λ¦­ ν
								[λ§μ΄νμ΄μ§ > νμμ λ³΄λ³κ²½> λΉλ°λ²νΈ λ³κ²½] νμ΄μ§μμ λΉλ°λ²νΈ λ³κ²½μ΄ κ°λ₯ν©λλ€.</div>
						</div>
					</div>
				</div>

				<div class="accordion-item">
					<h2 class="accordion-header" id="headingTwo">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapse2"
							aria-expanded="false" aria-controls="collapseTwo">νμνν΄ ν
							μ¬κ°μμ΄ κ°λ₯νκ°μ?</button>
					</h2>
					<div class="accordion-item">
						<div id="collapse2" class="accordion-collapse collapse"
							aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
							<div class="accordion-body bg-Light">λ­λ₯λ­λ₯ μ¬κ°μμ μΈμ λ μ§ κ°λ₯ν©λλ€.</div>
						</div>
					</div>
				</div>

				<div class="accordion-item">
					<h2 class="accordion-header" id="headingThree">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapse3"
							aria-expanded="false" aria-controls="collapseThree">νμμ λ³΄λ₯Ό
							μμ νκ³  μΆμλ° μ΄λ»κ² ν΄μΌνλμ?</button>
					</h2>
					<div id="collapse3" class="accordion-collapse collapse"
						aria-labelledby="headingThree" data-bs-parent="#accordionExample">
						<div class="accordion-body bg-Light">μ°μΈ‘ μλ¨ νλ‘ν μ¬μ§μ ν΄λ¦­ ν
							[λ§μ΄νμ΄μ§ > νμμ λ³΄λ³κ²½ > μ μμ΄λ³] νμ΄μ§μμ νμ μ λ³΄ μμ μ΄ κ°λ₯ν©λλ€.</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="heading4">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapse4"
							aria-expanded="false" aria-controls="heading4">νμνν΄λ μ΄λ»κ²
							νλμ?</button>
					</h2>
					<div class="accordion-item">
						<div id="collapse4" class="accordion-collapse collapse"
							aria-labelledby="heading4" data-bs-parent="#accordionExample">
							<div class="accordion-body bg-Light">μ€λμμ§ PC μΉμ¬μ΄νΈ λλ λͺ¨λ°μΌ
								μ±μμ κ°λ₯ν©λλ€. PC μΉμ¬μ΄νΈ: μ°μΈ‘ μλ¨ νλ‘ν μ¬μ§ ν΄λ¦­ ν [λ§μ΄νμ΄μ§ > μ€μ  > νμμ λ³΄μμ ] μλ¨μ
								μ μμ΄λ³νκΈ° λ²νΌ ν΄λ¦­ν΄μ£ΌμΈμ. μ¬μμκΆνμ κ°μ§ νμμ μ΄λ©μΌ zhfldk014745@naver.comμΌλ‘
								λ¬Έμν΄μ£Όμλ©΄ κ°μ¬νκ² μ΅λλ€.</div>
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="heading5">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapse5"
							aria-expanded="false" aria-controls="heading5">μ’μ§μμ λκΈμ
							λ°μμ΅λλ€. μ΄λ»κ² ν΄μΌνλμ?</button>
					</h2>
					<div id="collapse5" class="accordion-collapse collapse"
						aria-labelledby="heading5" data-bs-parent="#accordionExample">
						<div class="accordion-body bg-Light">λκΈ μλμ μ κ³  λ²νΌμ λλ¬ λκΈ μ κ³ κ°
							κ°λ₯ν©λλ€.</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="heading6">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapse6"
							aria-expanded="false" aria-controls="heading6">μΈκΈ°κ²μκΈ,
							μΈκΈ°μ μ μ κΈ°μ€μ λ¬΄μμΈκ°μ?</button>
					</h2>
					<div class="accordion-item">
						<div id="collapse6" class="accordion-collapse collapse"
							aria-labelledby="heading6" data-bs-parent="#accordionExample">
							<div class="accordion-body bg-Light">λ­λ₯λ­λ₯ 'μ’μμ'μ λμ μ‘°νμμ λ°λΌ
								μΈκΈ°κ²μκΈκ³Ό μ μ κ° λ½νκ² λ©λλ€. λ§μ λΆλ€μκ² κ³΅κ°λλ λ°λ €λλ¬Ό μ¬μ§μ ν΅ν΄ μΈκΈ° μ μ κ° λμ΄λ³΄μΈμ.</div>
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="heading7">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapse7"
							aria-expanded="false" aria-controls="collapseThree">μ¬μμκ³μ μ
							λ¬΄μμΈκ°μ?</button>
					</h2>
					<div class="accordion-item">
						<div id="collapse7" class="accordion-collapse collapse"
							aria-labelledby="heading7" data-bs-parent="#accordionExample">
							<div class="accordion-body bg-Light">λ­λ₯λ­λ₯ μ¬μκ° κ³μ μ νλ³΄κ° μ΄λ €μ λ
								λ°λ €λλ¬Ό μ λ¬Έ μ¬μμλμκ² νλ³΄λ₯Ό ν¨μ¨μ μΌλ‘ κ΄λ¦¬νμ€ μ μκ² λ§λ ¨λ κ³μ μλλ€. μ¬μμ κ³μ μ ν΅ν΄ λ­λ₯λ­λ₯
								1500λ§ μ¬μ©μλ€μκ² λμ± μμ¬μ΄ νλ³΄κ° κ°λ₯νλ λ§μ μ΄μ© λΆνλλ¦½λλ€.</div>
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingThree">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapse8"
							aria-expanded="false" aria-controls="collapseThree">λ­λ₯λ­λ₯μ
							PCλ λ§₯μμλ λ³Όμ μλμ?</button>
					</h2>
					<div id="collapse8" class="accordion-collapse collapse"
						aria-labelledby="headingThree" data-bs-parent="#accordionExample">
						<div class="accordion-body bg-Light">κ°λ₯ν©λλ€. μμ΄ν°,μλλ‘μ΄λ
							μ΄νλ¦¬μΌμ΄μκ³Ό ν¨κ» μΉμ¬μ΄νΈλ μ κ³΅νκ³ μμΌλ©°, ν°μΊ£μ μ€μΉνκ³  κΉνλΈ μ£Όμμμ
							https://github.com/greenteamtest/moongnyang.gitλ₯Ό ν΄λ‘ νμ λ€ PCμ μ€μΉν΄μ£ΌμΈμ
							κ·Έ μ΄ν ν°μΊ£μ€νκ³Ό ν¨κ» http://localhost:8092/Hompage/ μΉλΈλΌμ°μ λ₯Ό ν΅ν΄ λ‘ μ μνμλ©΄ λ³΄μ€
							μ μμ΅λλ€.</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingThree">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapse9"
							aria-expanded="false" aria-controls="collapseThree">μλ΄λ°©λ²κ³Ό
							μλ΄κ°λ₯μκ° μ μ λ²νΈλ μ΄λ»κ² λλμ?</button>
					</h2>
					<div id="collapse9" class="accordion-collapse collapse"
						aria-labelledby="headingThree" data-bs-parent="#accordionExample">
						<div class="accordion-body bg-Light">μλ΄ μκ°μ νμΌ 09:00 ~ 18:00
							(μ£Όλ§ & κ³΅ν΄μΌ μ μΈ)μ΄λ©°, μ νλ²νΈλ 010-####-#### μλλ€. μ°μΈ‘ μλ¨ λ§μ΄νμ΄μ§ [1:1 μ±ν
							μλ΄νκΈ°] λ₯Ό μ΄μ©νμλ©΄ μλ΄μκ³Ό μ±νμΌλ‘ λμ± λΉ λ₯΄κ³  νΈλ¦¬νκ² λ¬Έμ κ°λ₯ν©λλ€.</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingThree">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapse10"
							aria-expanded="false" aria-controls="collapseThree">μμ  λ°
							μ ν΄/κ΄κ³  λ¬Έμλ μ΄λ»κ² νλμ?</button>
					</h2>
					<div id="collapse10" class="accordion-collapse collapse"
						aria-labelledby="headingThree" data-bs-parent="#accordionExample">
						<div class="accordion-body bg-Light">
							μμ  μ μ²­μ μΌλ° κ°μΈ κ³ κ°μ΄μλΌλ©΄ μ¬μμμ μ²­μ ν΄μ£ΌμΈμ,
							<c:if test="${loginUser.auth==0}">
								<a
									href="http://localhost:8092/Hompage/mypageServlet?command=userPage">http://localhost:8092/Hompage/mypageServlet?command=userPage</a>
							</c:if>
							<c:if test="${loginUser.auth!=0}">
							http://localhost:8092/Hompage/mypageServlet?command=userPage</c:if>
							(μλ URLμ΄λ) , μ¬μμκ³ κ°μ΄μλ€λ©΄ μμ  /κ΄κ³  λ¬Έμλ
							<c:if test="${loginUser.auth==1}">
								<a
									href="http://localhost:8092/Hompage/mypageServlet?command=businessPage">
									http://localhost:8092/Hompage/mypageServlet?command=businessPage</a>
							</c:if>
							<c:if test="${loginUser.auth!=1}">http://localhost:8092/Hompage/mypageServlet?command=businessPageBusi</c:if>
							νμ΄μ§μ μ¬μμ₯ κ΄λ¦¬ νλ¨μ []μ μ²­νκΈ°] λ²νΌμΌλ‘ κ°λ₯ν©λλ€.
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>