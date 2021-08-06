
function contents(){
	var temp1 = document.getElementById("email").value;
	if(temp1.length == 0){
		alert("로그인이 필요합니다");
		return false;
	}
	var temp = document.getElementById("content_re").value;
	if(!temp.replace(/^\s+|\s+$/g, '')){
		alert("내용을 입력하세요.");
		return false;
	}
	return ture;
}
