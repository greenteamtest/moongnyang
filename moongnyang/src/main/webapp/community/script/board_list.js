 function alertDialogBox() {

        alert("확인을 누를 때까지 다른 작업을 할 수 없어요!");

    }





function filterCheck()  {

	if (document.frm.animal_tag[0].checked== false) {
		alert('동물 태그 중 하나이상을 선택하세요');
		return false;
	}
	if (document.frm.board_tag.value == 0) {
		alert('게시판 태그 중 하나이상을 선택하세요');
		return false;
	}

	return true;
}