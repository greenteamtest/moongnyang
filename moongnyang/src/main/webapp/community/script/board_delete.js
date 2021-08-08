function deleteCheck(){
	if (document.frm.comment_content.value.length == 0) {
		alert("내용을 입력하세요");
		return false;
	}
}