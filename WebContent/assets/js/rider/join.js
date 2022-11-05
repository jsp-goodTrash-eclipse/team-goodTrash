/* 이메일 형식 검사 */
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

/* 비밀번호 8글자 이상 */
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

/* 비밀번호 확인 */
const pwCheck = form.passwordCheck;
const pwCheckDiv = document.getElementById("pwCheck_result");

pwCheck.addEventListener("blur", function () {
    if (this.value != pwInput.value) {
        pwCheckDiv.innerHTML = "두 비밀번호가 일치하지 않습니다.";
        pwCheckDiv.style.color = "red";
        pwCheckDiv.style.fontSize = "14px";
    } else {
        pwCheckDiv.innerHTML = "";
    }
});
