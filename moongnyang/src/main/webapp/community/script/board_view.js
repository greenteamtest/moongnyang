function Change_animal_tag(x) {
	if (x == 0) {
		return "기타";
	}
	if (x == 1) {
		return "강아지";
	}
	if (x == 2) {
		return "고양이";
	}
}
function Change_board_tag(x) {
	if (x == 0) {
		return "기타";
	}
	if (x == 1) {
		return "일상공유";
	}
	if (x == 2) {
		return "제품추천";
	}
	if (x == 3) {
		return "벼룩시장";
	}
	if (x == 4) {
		return "궁금해요";
	}
}
function commentCheck() {
	if (document.frm.comment_content.value.length == 0) {
		alert("내용을 입력하세요");
		return false;
	}
}