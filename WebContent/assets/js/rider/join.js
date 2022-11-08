const button = document.getElementById("joinButton");

button.disabled = true;
console.log(button.disabled);

/* 이메일 형식 검사 */

let checkEmailFormAfter = false;
const input = form.driverEmail;
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
		checkEmailFormAfter = false;
    } else {
        if (!CheckEmail(this.value)) {
            div.innerHTML = "이메일 형식이 올바르지 않습니다.";
            div.style.color = "red";
            div.style.fontSize = "14px";
			checkEmailFormAfter = false;
        } else {
            div.innerHTML = "";
			checkEmailFormAfter = true;
        }
    }
});


/* 비밀번호 8글자 이상 */

let passwordLengthCheckAfter = false;
const pwInput = form.password;
const pwDiv = document.getElementById("pw_result");
pwInput.addEventListener("blur", function () {
    if (this.value.length < 8) {
        pwDiv.innerHTML = "비밀번호를 8자 이상 입력해주세요.";
        pwDiv.style.color = "red";
        pwDiv.style.fontSize = "14px";
		passwordLengthCheckAfter = false;
		checkCheck();
    } else {
        pwDiv.innerHTML = "";
		passwordLengthCheckAfter = true;
		checkCheck();

    }
});
 

/* 비밀번호 확인 */
const pwCheck = form.passwordCheck;
const pwCheckDiv = document.getElementById("pwCheck_result");
let checkPasswordSameAfter = false;

pwCheck.addEventListener("blur", function () {
    if (this.value != pwInput.value) {
        pwCheckDiv.innerHTML = "두 비밀번호가 일치하지 않습니다.";
        pwCheckDiv.style.color = "red";
        pwCheckDiv.style.fontSize = "14px";
		checkPasswordSameAfter = false;
    } else {
        pwCheckDiv.innerHTML = "";
		checkPasswordSameAfter = true;
    }
	checkCheck();
});

/* Driver 가입 이메일 중복 확인 */
$("#driverEmail").on("blur",function(){
	driverCheckEmail($(this).val());
});

let checkEmailAfter = false;

function driverCheckEmail(driverEmail){
	if(!driverEmail){
		$("#email_result").text("이메일을 입력하세요");
		$("#email_result").css("color","red");
		$("#email_result").css("font-size","10px");
		checkEmailAfter = false;
		checkCheck();
		return;
	}
	$.ajax({
		url : "/driver/driverCheckEmail.driver",
		data : {"driverEmail":driverEmail},
		success : function(result){
			let message , color ;
			if(result =="true" && checkEmailFormAfter==true){
				message = "사용가능한 이메일 입니다."
				color="blue";
				checkEmailAfter=true;
			}
			else{
				message = "사용 불가능한 이메일 입니다."
				color="red";
				checkEmailAfter = false;
			}
			$("#email_result").css("color", color);
			$("#email_result").css("font-size","10px");
			$("#email_result").text(message);
			checkCheck();
			
		},
		error : function(a,b,c){
			console.log(a,b,c);
		}
	})
}

function checkCheckNum1(){
	$checkNum1After = $("#checkNum1").prop("checked");
}
function checkCheckNum2(){
	$checkNum2After = $("#checkNum2").prop("checked");
}


/*전체 동의*/
$(".policy").on("click","#check_all",function(){
	$(this).parents(".policy").find('input').prop("checked", $(this).is(":checked"));
	checkCheckNum1();
	checkCheckNum2();
	checkCheck();
	
})
$(".policy").on("click",".check",function(){
	
	var is_checked = true;

    $(".policy .check").each(function(){
        is_checked = is_checked && $(this).is(":checked");
    });

    $("#check_all").prop("checked", is_checked);
	checkCheckNum1();
	checkCheckNum2();
	checkCheck();

});





/* 체크를 체크하는 function */
function checkCheck(){
	if(checkEmailAfter==true && checkPasswordSameAfter==true &&passwordLengthCheckAfter==true &&$checkNum1After==true &&$checkNum2After == true &&checkEmailFormAfter == true){
		$("#joinButton").css("background-color","green");
		$("#joinButton").css("border-color","green");
		$("#joinButton").css("cursor","pointer");
		button.disabled = false;
	}else{
		$("#joinButton").css("background-color","#808080");
		$("#joinButton").css("border-color","#808080");
		$("#joinButton").css("cursor","default");
		button.disabled = true;
	}
	
}

function activeButton(){
	form.submit();
}


