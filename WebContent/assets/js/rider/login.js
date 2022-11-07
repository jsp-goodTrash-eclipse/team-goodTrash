const email = form.email;
const pw = form.pw;

function loginCheck() {
    /* 이메일 입력 경고 창 */
    if (!email.value) {
        alert("이메일을 입력해 주세요.");
		return;
    }else{
     /* 비밀번호 입력 경고 창 */
     	if (!pw.value) {
     		alert("비밀번호를 입력해 주세요.");
    	}
	}
	form.submit();
}
