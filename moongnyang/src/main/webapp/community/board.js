function boardCheck() {
	if (document.frm.title.value.length == 0) {
		alert("작성자를 입력하세요");
		return false;
	}
	if (document.frm.contents.value.length == 0) {
		alert("내용을 입력하세요");
		return false;
	}
	if (document.frm.animal_tag.value == 0) {
		alert('동물 태그 중 하나를 선택하세요');
		return false;
	}
	if (document.frm.board_tag.value == 0) {
		alert('게시판 태그 중 하나를 선택하세요');
		return false;
	}

	return true;
}