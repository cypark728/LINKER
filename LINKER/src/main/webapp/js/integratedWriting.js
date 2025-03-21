document.addEventListener('DOMContentLoaded', function () {
    var productRegister = document.getElementById('product-register');
    var inquiry = document.getElementById('inquiry');

    // 하나의 체크박스만 체크될 수 있도록 처리
    productRegister.addEventListener('change', function () {
        if (this.checked) {
            inquiry.checked = false;
        }
    });

    inquiry.addEventListener('change', function () {
        if (this.checked) {
            productRegister.checked = false;
        }
    });

    var productCheckbox = document.getElementById("product-register");
    var inquiryCheckbox = document.getElementById("inquiry");
    var categoryBox = document.getElementById("category-box");
    var titleInput = document.getElementById("title-input");
    var contentInput = document.getElementById("content-input");
    var registerButton = document.getElementById("register-button");

    // 상품등록 체크박스 상태에 따라 카테고리 박스 보이기/숨기기
    productCheckbox.addEventListener("change", function () {
        if (this.checked) {
            categoryBox.style.display = "block"; // 상품등록 선택 시 카테고리 보이기
        } else {
            categoryBox.style.display = "none"; // 상품등록 해제 시 카테고리 숨기기
        }
    });

    // 1:1 문의 체크박스 클릭 시 카테고리 숨기기
    inquiryCheckbox.addEventListener("change", function () {
        if (this.checked) {
            categoryBox.style.display = "none"; // 1:1문의 선택 시 카테고리 숨기기
        } else {
            if (productCheckbox.checked) {
                categoryBox.style.display = "block"; // 상품등록 체크되어 있으면 카테고리 보이기
            }
        }
    });
    
    var fileInput = document.getElementById('file-input');
    fileInput.addEventListener ('change',function (event) {
        var file = event.target.files[0];
        var fileNameSpan = document.getElementById("file-name");
    
    
        if (file) {
            var fileURL = URL.createObjectURL(file);
    
            fileNameSpan.innerHTML = '<a href="' + fileURL + '" download="' + file.name + '">' + file.name + '</a>';
            fileNameSpan.style.color = "#000"; // 파일이 있으면 글자 색 변경
        } else {
            fileNameSpan.textContent = "첨부한 파일이 없습니다";
            fileNameSpan.style.color = "#555"; // 기본 회색 유지
        }
    });

    //등록버튼 눌렀을때 보여줌
    var registerButton = document.getElementById('register-button');
    registerButton.addEventListener('click', function () {
        var titleInput = document.getElementById('title-input').value.trim();
        var contentInput = document.getElementById('content-input').value.trim();
		var productCheckbox = document.getElementById("product-register");
		var inquiryCheckbox = document.getElementById("inquiry");

        // 제목이 비어 있으면 알림
        if (!titleInput) {
            alert("제목을 입력하세요");
        }
        // 제목이 있으면 내용 확인
        else if (!contentInput) {
            alert("내용을 작성해주세요");
        }
		// checkbox가 체크 확인
		else if(!productCheckbox.checked && !inquiryCheckbox.checked) {
			alert("상품등록 혹은 1:1문의 중 하나를 선택해주세요");
		}
        // 제목과 내용이 모두 입력되었으면 등록 메시지
        else {
			// 동적으로 폼 생성
	        let form = document.createElement("form");
	        form.method = "POST";
	        //form.enctype = "multipart/form-data"; // 파일 업로드 가능하도록 설정
			
			// 제목 추가
		    let titleInput = document.createElement("input");
			titleInput.type = "hidden";
		    titleInput.name = "title";
		    titleInput.value = document.getElementById("title-input").value;
		    form.appendChild(titleInput);
						
			// 내용 추가
	        let contentInput = document.createElement("input");
			contentInput.type = "hidden";
	        contentInput.name = "content";
	        contentInput.value = document.getElementById("content-input").value;
	        form.appendChild(contentInput);
			
			// 상품등록 체크되었을 경우
			if(productCheckbox.checked){
				form.action = "registerProduct.IntegratedWriting"; // 서블릿 주소
				
				// 카테고리 추가
		        let categorySelect = document.createElement("input");
				categorySelect.type = "hidden";
		        categorySelect.name = "category";
		        categorySelect.value = document.getElementById("category-select").value;
		        form.appendChild(categorySelect);
			   
				// 파일 추가
		        let fileInput = document.getElementById("file-input");
		        if (fileInput.files.length > 0) {
		            var file = fileInput.files[0];

		            // FormData 객체 사용
		            var formData = new FormData();
		            formData.append("file", file);

		            // 폼 데이터를 form에 추가
		            for (var [key, value] of formData.entries()) {
		                var fileHiddenInput = document.createElement("input");
						fileHiddenInput.enctype = "multipart/form-data";
		                fileHiddenInput.name = key;
		                fileHiddenInput.value = value;
		                form.appendChild(fileHiddenInput);
		            }
		        }
			} else {
		        form.action = "registerQna.IntegratedWriting"; // 서블릿 주소
			}
			
			// 동적으로 생성한 폼을 body에 추가 후 제출
	        document.body.appendChild(form);
			console.log(form);
	        form.submit();
			//form에 세션에 저장되어있는(현재 로그인 중인) userid도 같이 전달해야 겠는데?
			
            alert("작성한 글이 등록되었습니다");
        }
    });
});
