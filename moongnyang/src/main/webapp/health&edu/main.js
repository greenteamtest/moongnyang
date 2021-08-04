/**
 * 
 */

const ct = document.getElementsByClassName('category');

for(let index =0; index < ct.length ; index++){
	ct[index].addEventListener('click', ()=>{
		 
		const frm =	document.forms[index];
		
		frm.method = 'post';
		frm.action = 'controller.do';
		frm.submit();
	})
};
