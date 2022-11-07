/**
 * 
 */


	
var eventTarget = document.getElementsByClassName('btn_del')
 
for (var i=0; i<eventTarget.length; i++) {
	eventTarget[i].addEventListener('click', function() {
		var parent = document.querySelector('#my_div td')
		if ( i > 1 ) {
			parent.removeChild(this.parentElement.parentElement)
			i --
		} else {
			alert('문의 내역이 없습니다..')
		}
	})
}