document.addEventListener('DOMContentLoaded', function() {
	var submit = document.getElementById('signUp');
	var signUpName = document.getElementById("signUpName");
	var signUpEmail = document.getElementById("signUpEmail");
	var signUpPassword = document.getElementById("signUpPassword");
	var signUpPasswordCheck = document.getElementById("signUpPasswordCheck");
	var signUpPhone = document.getElementById("signUpPhone");
	var signUpAddress = document.getElementById("signUpAddress");
	var signUpBuyerCheck = document.getElementById("signUpBuyerCheck");
	var signUpSellerCheck = document.getElementById("signUpSellerCheck");

	submit.addEventListener('click', function() {
		if(!signUpName.value){
			alert("이름을 입력해주세요.");
		} else if(!signUpEmail.value) {
			alert("이메일을 입력해주세요.");
		} else if(!signUpPassword.value) {
			alert("비밀번호를 입력해주세요.");
		} else if(!signUpPasswordCheck.value) {
			alert("비밀번호 확인을 입력해주세요.")
		} else if(!signUpAddress.value) {
			alert("주소를 입력해주세요.");
		} else if(!signUpPhone.value) {
			alert("연락처를 입력해주세요.");
		} else if(!signUpBuyerCheck.checked && !signUpSellerCheck.checked) {
			alert("회원유형을 선택해주세요.");
		} else if(signUpPassword.value != signUpPasswordCheck.value) {
			alert("비밀번호와 비밀번호 확인이 다릅니다. 확인 바랍니다.");
		} else { //회원 가입 정보를 form으로 만들어서, 전달.
			// 동적으로 폼 생성
			let form = document.createElement("form");
			form.method = "POST";
			form.action = "signUp.users";
			
			// 입력 필드 추가
			let fields = [
				{ name: "userName", value: signUpName.value },
				{ name: "userEmail", value: signUpEmail.value },
				{ name: "userPassword", value: signUpPassword.value },
				{ name: "userPhone", value: signUpPhone.value },
				{ name: "userAddress", value: signUpAddress.value },
				{ name: "userType", value: signUpBuyerCheck.checked ? "buyer" : "seller" }
			];

			fields.forEach(field => {
				let input = document.createElement("input");
				input.type = "hidden";
				input.name = field.name;
				input.value = field.value;
				form.appendChild(input);
			});

			document.body.appendChild(form);
			form.submit();
			
			
			//회원 가입 성공 여부에 따라서 다르게 출력 되어야 하지만 지금은 일단 성공 문구만.
			alert("회원 가입이 완료되었습니다.");
		}
		
	});
});