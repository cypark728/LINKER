<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>통합글쓰기</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/integratedWriting.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="js/jquery-3.7.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/script.js"></script>
</head>
<body>
    <div id="pop">
        <div id="pop_box">
            <div class="pop_content">
                <div class="popup_logo">
                    <button id="close"><img src="img/close_icon.png" alt="close_icon"></button>
                    <img src="img/logo.png" alt="logo">
                </div>
                <div class="pop_sec">
                    <span class="pop_one pop_user"><input type="text" placeholder="이메일을 입력하세요"></span>
                    <span class="pop_one pop_user"><input type="password" placeholder="비밀번호를 입력하세요"></span>
                    <div class="pop_sub_flex_box">
                        <input type="checkbox"><strong id="check_span">이메일 저장</strong>
                    </div>
                    <span class="pop_one pop_sign_in"><input type="submit" value="로그인"></span>
                </div>
                <div class="pop_sec_footer">
                    <button class="pop_user"><strong><a class="su2" href="signUpPage.users">회원가입</a></strong></button>
                    <button class="pop_user"><strong>비밀번호 찾기</strong></button>
                </div>
            </div>
        </div>
    </div>
    <div id="semi_wrap">
        <header>
            <!-- <div id="header_wrap"> -->
            <div class="header_first_line">
                <div class="logo_box" onclick="location.href='product.IntegratedWriting'">
                    <img src="img/logo.png" alt="logo">
                </div>
                <div class="header_top_menu">
                    <button class="sign_in">로그인</button>
                    <button class="sign_up"><a class="su" href="signUpPage.users">회원가입</a></button>
                </div>
            </div>
            <div class="header_second_line">
                <div class="drop_down hd_drop">
                    <ul class="main_menu">
                        <li><a href="acrylic.product">아크릴굿즈</a></li>
                        <li><a href="wood.product">우드굿즈</a></li>
                        <li><a href="illustration.product">일러스트굿즈</a></li>
                        <li><a href="faq.IntegratedWriting">고객센터</a></li>
                    </ul>
                </div>
                <div class="header_tool">
                    <div class="left_tool hd_left_t">
                        <input type="text" placeholder="검색어를 입력하세요..">
                        <div class="search_icon"><img src="img/search_icon.png" alt="search_icon"></div>
                    </div>
                    <div class="right_tool hd_right_t">
                        <div class="user_icon">
                            <img src="img/user_icon.png" alt="user_icon">
                        </div>
                        <div class="bucket_icon">
                            <img src="img/cart_icon.png" alt="cart_icon">
                        </div>
                    </div>
                </div>
            </div>
            <!-- </div> -->
        </header>
        <div id="header_bottom_line"></div>
    </div>
    <section class="sec_content">
        <div class="container">
            <div class="content">
                <div class="title-container">
                    <div class="title">글쓰기</div>
                    <input type="submit" value="등록" id="register-button" >
                </div>  
                <div class="form-box">
                    <div class="checkbox-group">
                        <input type="checkbox" id="product-register">
                        <label for="product-register">상품등록</label>
                        <input type="checkbox" id="inquiry">
                        <label for="inquiry">1:1문의</label>
                    </div>
                    <input type="text" placeholder="제목을 입력하세요" id="title-input">

                    <div id="category-box">
                        <select id="category-select">
                            <option value="">카테고리 선택</option>
                            <option value="acrylic">아크릴 굿즈</option>
                            <option value="wood">우드 굿즈</option>
                            <option value="illustration">일러스트 굿즈</option>
                        </select>
                    </div>
                </div>
                <div class="content-area" >
                    <textarea placeholder="내용을 입력하세요" id="content-input"></textarea>
                </div>
                <div class="file-container">
                    <div class="file-upload">
                        <span class="file-label">파일 첨부</span>
                        <button class="file-btn" onclick="document.getElementById('file-input').click();">파일 올리기</button>
                        <input type="file" id="file-input" style="display: none;">
                    </div>
                    <div class="file-info">
                        <span id="file-name">첨부한 파일이 없습니다</span>
                    </div>
                </div> 
            </div>
        </div>
    </section>
    <footer class="footer">
        <div class="footer_box">
            <ul class="footer_menu">
                <li><a href="#">이용후기</a></li>
                <li><a href="#">마이페이지</a></li>
                <li><a href="#">이용약관</a></li>
                <li><a href="#">개인정보처리방침</a></li>
            </ul>
      
            <div class="line">
                <div class="line_top">
                    <p class="line_top_p">(주)링커 | 서울시 강남구 | 미니플젝 : 링커 | 개인정보관리책임자 : 손유경 | 사업자등록번호 : 123-45-67890
                    </p>
                    <p class="line_top_p"> : 2025-서울강남-1234 | 유료직업소개사업등록번 호 : 제2025-1234567-89-0-12345호 | 고객센터 :
                        1234-5678 | 호스팅 사업자: Amazon Web Service(AWS)</p>
                </div>
                <div class="line_bottom">
                    <p class="line_bottom_p">(주)링커는 통신판매중개자이며, 통신판매의 당사자가 아닙니다. 상품, 상품정보, 거래에 관한 의무와 책임은 판매회원에게
                        있습니다.</p>
                    <p class="line_bottom_p">(주)링커 사이트의 상품/전문가/이벤트 정보, 디자인 및 화면의 구성, UI 등의 무단복제, 배포, 방송 또는 전송,
                        스크래핑 등의 행위는 저작권법, 콘텐츠산업 진흥법 등 관련법령에 의하여 엄격히 금지됩니다.</p>
                    <p class="line_bottom_p">Copyright © 2025 Jongsu Macne. All rights reserved.</p>
                </div>
            </div>
      
      
        </div>
      </footer>
    <script src="js/integratedWriting.js"></script>
</body>
</html>