/* 이메일 형식 검사 */

/* 
const input = form.email;
const div = document.getElementById("email_result");

function CheckEmail(str) {
    var reg_email =
        /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
    if (!reg_email.test(str)) {
        return false;
    } else {
        return true;
    }
}

input.addEventListener("blur", function () {
    if (!this.value) {
        div.innerHTML = "이메일 형식이 올바르지 않습니다.";
        div.style.color = "red";
        div.style.fontSize = "14px";
    } else {
        if (!CheckEmail(this.value)) {
            div.innerHTML = "이메일 형식이 올바르지 않습니다.";
            div.style.color = "red";
            div.style.fontSize = "14px";
        } else {
            div.innerHTML = "";
        }
    }
});
 */

/* 비밀번호 8글자 이상 */
/*
const pwInput = form.password;
const pwDiv = document.getElementById("pw_result");
pwInput.addEventListener("blur", function () {
    if (this.value.length < 8) {
        pwDiv.innerHTML = "비밀번호를 8자 이상 입력해주세요.";
        pwDiv.style.color = "red";
        pwDiv.style.fontSize = "14px";
    } else {
        pwDiv.innerHTML = "";
    }
});
 */

/* 비밀번호 확인 */
const pwCheck = form.passwordCheck;
const pwCheckDiv = document.getElementById("pwCheck_result");
let checkPasswordAfter = false;

pwCheck.addEventListener("blur", function () {
    if (this.value != pwInput.value) {
        pwCheckDiv.innerHTML = "두 비밀번호가 일치하지 않습니다.";
        pwCheckDiv.style.color = "red";
        pwCheckDiv.style.fontSize = "14px";
    } else {
        pwCheckDiv.innerHTML = "";
		checkPasswordAfter = true;
    }
});

/* Driver 가입 이메일 중복 확인 */
$("#driverEmail").on("blur",function(){
	driverCheckEmail($(this).val());
});

let checkEmailAfter = false;

function driverCheckEmail(driverEmail){
	if(!driverEmail){
		$("#emailResult").text("이메일을 입력하세요");
		$("#emailResult").css("color","red");
		$("#emailResult").css("font-size","10px");
		return;
	}
	$.ajax({
		url : "/driver/driverCheckEmail.driver",
		data : {"driverEmail":driverEmail},
		success : function(result){
			let message , color ;
			if(result =="true"){
				message = "사용가능한 아이디 입니다."
				color="blue";
				checkEmailAfter=true;
				console.log(checkEmailAfter);
			}
			else{
				message = "사용 불가능한 아이디 입니다."
				color="red";
				console.log("3,사용 불가능 아이디",result);
			}
			$("#emailResult").css("color", color);
			$("#emailResult").css("font-size","10px");
			$("#emailResult").text(message);
			checkCheck();
			
		},
		error : function(a,b,c){
			console.log(a,b,c);
		}
	})
}






/* 체크를 체크하는 function */
function checkCheck(){
	if(checkEmailAfter==true && checkPasswordAfter==true){
		button.disabled = false;
	}
}

