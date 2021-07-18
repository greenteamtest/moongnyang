/**
 * 
 */

const ct = document.getElementsByClassName('category');

for(const index =0; index<ct.length ; index++){
	ct[index].addEventListener('click', ()=>{
		this.setAttribute('href', `controller.do?command=placeList&key=${this[index].id}`);
	})
};
