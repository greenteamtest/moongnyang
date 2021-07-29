/**
 * 
 */

const ct = document.getElementsByClassName('category');
const email = document.querySelector('#user_email input[type="hidden"]').value;

for(let index =0; index < ct.length ; index++){
	ct[index].addEventListener('click', ()=>{
		ct[index].setAttribute('href', `../controller.do?command=placeList&key=${ct[index].id}&email=${email}`);
	})
};
