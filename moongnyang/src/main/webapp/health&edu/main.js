/**
 * 
 */

const ct = document.getElementsByClassName('category');

for(let index =0; index < ct.length ; index++){
	ct[index].addEventListener('click', ()=>{
		ct[index].setAttribute('href', `../controller.do?command=placeList&key=${ct[index].id}`);
	})
};
