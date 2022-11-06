/**
 * 
 */

   /* const garbageCollectName = $('#garbageCollectName').val();
	const garbageCollectPhoneNumber = ($('#phoneFirst').val() + $('#phoneSecond').val() + $('#phoneThird').val());
	const garbageCollectAddress = $('#garbageCollectAddress').val();
	const garbageCollectAddressDetail = $('#garbageCollectAddressDetail').val();
	const garbageCollectType = $('#garbageCollectType').val();
	const garbageCollectBoxCount = $('#garbageCollectBoxCount').val();
	const garbageCollectRequestDate = $('#garbageCollectRequestDate').val();
	const garbageCollectMemo = $('#garbageCollectMemo').val();
*/
function send(){

	 if (!$('#garbageCollectName').val()) {
            alert('고객명을 입력해주세요.');
     } else {
		if(!$('#garbageCollectPhoneNumber').val()) {
            alert('휴대전화를 입력해주세요.');
		} else {
			if(!$('#garbageCollectAddressDetail').val()) {
            	alert('주소를 입력해주세요.');
			} else {
				if(!$('#garbageCollectRequestDate').val()) {
            		alert('배출 희망일자를 입력해주세요.');
				} else {
					reservationForm.submit();
					alert("신청이 완료되었습니다.");
					console.log("완료");
					return;
				}
			}
		} 
	}	
}

function autoHypenTel(str) {
  str = str.replace(/[^0-9]/g, '');
  var tmp = '';

  if (str.substring(0, 2) == 02) {
    // 서울 전화번호일 경우 10자리까지만 나타나고 그 이상의 자리수는 자동삭제
    if (str.length < 3) {
      return str;
    } else if (str.length < 6) {
      tmp += str.substr(0, 2);
      tmp += '-';
      tmp += str.substr(2);
      return tmp;
    } else if (str.length < 10) {
      tmp += str.substr(0, 2);
      tmp += '-';
      tmp += str.substr(2, 3);
      tmp += '-';
      tmp += str.substr(5);
      return tmp;
    } else {
      tmp += str.substr(0, 2);
      tmp += '-';
      tmp += str.substr(2, 4);
      tmp += '-';
      tmp += str.substr(6, 4);
      return tmp;
    }
  } else {
    // 핸드폰 및 다른 지역 전화번호 일 경우
    if (str.length < 4) {
      return str;
    } else if (str.length < 7) {
      tmp += str.substr(0, 3);
      tmp += '-';
      tmp += str.substr(3);
      return tmp;
    } else if (str.length < 11) {
      tmp += str.substr(0, 3);
      tmp += '-';
      tmp += str.substr(3, 3);
      tmp += '-';
      tmp += str.substr(6);
      return tmp;
    } else {
      tmp += str.substr(0, 3);
      tmp += '-';
      tmp += str.substr(3, 4);
      tmp += '-';
      tmp += str.substr(7);
      return tmp;
    }
  }

  return str;
}

$('#garbageCollectPhoneNumber').keyup(function (event) {
  event = event || window.event;
  var _val = this.value.trim();
  this.value = autoHypenTel(_val);
});


function find(){
	new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('garbageCollectZipcode').value = data.zonecode;
                document.getElementById("garbageCollectAddress").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("garbageCollectAddressDetail").focus();
            }
        }).open();
}

var now_utc = Date.now(); // 지금 날짜를 밀리초로
var tmr_utc = now_utc + 86400000;
// getTimezoneOffset()은 현재 시간과의 차이를 분 단위로 반환
var timeOff = new Date().getTimezoneOffset()*60000; // 분단위를 밀리초로 변환
// new Date(now_utc-timeOff).toISOString()은 '2022-05-11T18:09:38.134Z'를 반환
var today = new Date(now_utc-timeOff).toISOString().split("T")[0];
var tmr = new Date(tmr_utc-timeOff).toISOString().split("T")[0];
document.getElementById("garbageCollectRequestDate").setAttribute("min", tmr);

