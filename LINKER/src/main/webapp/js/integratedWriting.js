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

        // 제목이 비어 있으면 알림
        if (!titleInput) {
            alert("제목을 입력하세요");
        }
        // 제목이 있으면 내용 확인
        else if (!contentInput) {
            alert("내용을 작성해주세요");
        }
        // 제목과 내용이 모두 입력되었으면 등록 메시지
        else {
			//여기서 컨트롤로 넘어가야 겠네..?
            alert("작성한 글이 등록되었습니다");
        }
    });
});
