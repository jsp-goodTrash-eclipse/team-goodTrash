/*console.log("안녕");*/

const button = document.getElementById('submitBtn');
button.disabled = true;

var $checkNum1After;
var $checkNum2After;

function checkCheckNum1(){
	$checkNum1After = $("#checkNum1").prop("checked");
}
function checkCheckNum2(){
	$checkNum2After = $("#checkNum2").prop("checked");
}

/* 이메일 형식 검사 */

let checkEmailFormAfter = false;
const input = form.userEmail;
const span = document.getElementById("emailResult");

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
        span.innerHTML = "이메일 형식이 올바르지 않습니다.";
        span.style.color = "red";
        span.style.fontSize = "14px";
		checkEmailFormAfter = false;
		checkCheck();
    } else {
        if (!CheckEmail(this.value)) {
            span.innerHTML = "이메일 형식이 올바르지 않습니다.";
            span.style.color = "red";
            span.style.fontSize = "14px";
			checkEmailFormAfter = false;
			checkCheck();
        } else {
            span.innerHTML = "";
			checkEmailFormAfter = true;
			checkCheck();
        }
    }
});



/*function checkCheck(){
	if(checkEmailAfter==true && checkPasswordAfter==true && checkNicknameAfter==true){
		button.disabled = false;
	}
}*/

/*버튼 전체 동의 */

/*전체 동의 누르면 전체 다 눌림*/
$(".policy").on("click","#selectAll",function(){
	$(this).parents(".policy").find('input').prop("checked", $(this).is(":checked"));
	checkCheckNum1();
	checkCheckNum2();
	checkCheck();
	
})

$(".policy").on("click",".requiredCheckbox",function(){
	
	var is_checked = true;

    $(".policy .requiredCheckbox").each(function(){
        is_checked = is_checked && $(this).is(":checked");
    });

    $("#selectAll").prop("checked", is_checked);
	checkCheckNum1();
	checkCheckNum2();
	checkCheck();
});



/* 가입 이메일 중복 확인*/ 
$("#userEmail").on("blur",function(){
	checkEmail($(this).val());
});

/* 이메일 중복이 확인 됐을때 true 로 변경하여 버틑 활성화*/
let checkEmailAfter = false;

function checkEmail(userEmail) {
	
	/* 이메일 입력칸에 공백을 입력했을 시 실행 */
	if(!userEmail){
		$("#emailResult").text("이메일을 입력하세요");
		$("#emailResult").css("color","red");
		$("#emailResult").css("font-size","10px");
		checkEmailAfter = false;
		checkCheck();
		return;
	}
	
	$.ajax({
		url : "/user/checkEmail.user",
		data : {"userEmail":userEmail},
		success : function(result){
			let message , color ;
			if(result =="true" &&checkEmailFormAfter == true){
				message = "사용가능한 아이디 입니다."
				color="blue";
				checkEmailAfter=true;
				console.log(checkEmailAfter);
			}
			else{
				message = "사용 불가능한 아이디 입니다."
				color="red";
				checkEmailAfter = false;
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

/* 비밀번호 8글자 이상 */

let passwordLengthCheckAfter = false;
const pwInput = form.userPassword;
const pwSpan = document.getElementById("passwordResult");
pwInput.addEventListener("blur", function () {
    if (this.value.length < 8) {
        pwSpan.innerHTML = "비밀번호를 8자 이상 입력해주세요.";
        pwSpan.style.color = "red";
        pwSpan.style.fontSize = "14px";
		passwordLengthCheckAfter = false;
		checkCheck();
    } else {
        pwSpan.innerHTML = "";
		passwordLengthCheckAfter = true;
		checkCheck();

    }
});

/* 비밀번호 확인 */
const pwCheck = form.password2;
const pwCheckSpan = document.getElementById("pwCheck_result");
let checkPasswordSameAfter = false;

pwCheck.addEventListener("blur", function () {
    if (this.value != pwInput.value) {
        pwSpan.innerHTML = "두 비밀번호가 일치하지 않습니다.";
        pwSpan.style.color = "red";
        pwSpan.style.fontSize = "14px";
		checkPasswordSameAfter = false;
    } else {
        pwSpan.innerHTML = "";
		checkPasswordSameAfter = true;
    }
	checkCheck();
});

/* 가입 닉네임 중복 확인*/

$("#userNickname").on("blur",function(){
	checkNickname($(this).val());
});

/* 이메일 중복이 확인 됐을때 true 로 변경하여 버틑 활성화*/
let checkNicknameAfter = false;

function checkNickname(userNickname){
		/* 닉네임 입력칸에 공백을 입력했을 시 실행 */
	if(!userNickname){
		$("#nicknameResult").text("닉네임을 입력하세요");
		$("#nicknameResult").css("color","red");
		$("#nicknameResult").css("font-size","10px");
		checkNicknameAfter = false;
		checkCheck();
		return;
	}
	
	$.ajax({
		url : "/user/nicknameCheck.user",
		data : {"userNickname":userNickname},
		success : function(result){
			let message , color ;
			
			if(result =="true"){
				message = "사용가능한 닉네임 입니다."
				color="blue";
				checkNicknameAfter=true;
				console.log(checkNicknameAfter);
			}else{
				message = "사용 불가능한 닉네임 입니다."
				color="red";
				checkNicknameAfter = false;
				console.log("3,사용 불가능 아이디",result);
			}
			$("#nicknameResult").css("color", color);
			$("#nicknameResult").css("font-size","10px");
			$("#nicknameResult").text(message);
			checkCheck();
			
		},
		error : function(a,b,c){
			console.log(a,b,c);
		}
	})
}
/* 비밀번호 확인 검사*/

/*
$("#password2").on("blur",function(){
	checkPassword($(this).val());
});*/

/* 비밀번호 확인 됐을때 true 로 변경하여 버틑 활성화*/
/*
let checkPasswordAfter=false;	

function checkPassword(password2){
	var password1 = $("#password1").val();
	if(password2 != password1){
		$("#passwordResult").text("비밀번호를 확인해 주세요");
		$("#passwordResult").css("color","red");
		$("#passwordResult").css("font-size","10px");
		checkPasswordAfter = false;
	}else{
		$("#passwordResult").text("");
		checkPasswordAfter = true;
		console.log(checkPasswordAfter);
	}
	checkCheck();
}
*/
function activeButton(){
	form.submit();
}

/* 체크를 체크하는 function */
function checkCheck(){
	if(checkEmailAfter==true && checkNicknameAfter==true &&$checkNum1After==true &&$checkNum2After == true && checkEmailFormAfter == true &&passwordLengthCheckAfter == true &&checkPasswordSameAfter == true){
		$("#submitBtn").css("background-color","green");
		$("#submitBtn").css("border-color","green");
		$("#submitBtn").css("cursor","pointer");
		button.disabled = false;
	}else{
		$("#submitBtn").css("background-color","#808080");
		$("#submitBtn").css("border-color","#808080");
		$("#submitBtn").css("cursor","default");
		button.disabled = true;
	}
}






 


	

	

	

