<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LINKER</title>
    <link rel="stylesheet" href="css/common.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="js/script.js"></script>
</head>

<body>
    <div class="wrap">
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
                    <div class="drop_down">
                        <ul class="main_menu">
                            <li><a href="acrylic.product">아크릴굿즈</a></li>
                            <li><a href="wood.product">우드굿즈</a></li>
                            <li><a href="illustration.product">일러스트굿즈</a></li>
                            <li><a href="faq.IntegratedWriting">고객센터</a></li>
                        </ul>
                    </div>
                    <div class="header_tool">
                        <div class="left_tool">
                            <input type="text" placeholder="검색어를 입력하세요..">
                            <div class="search_icon"><img src="img/search_icon.png" alt="search_icon"></div>
                        </div>
                        <div class="right_tool">
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
        <section>
            <div id="slide">
                <div></div>
                <div></div>
                <div></div>
            </div>
            <div class="section_banner">
                <div class="left_banner">
                    <img src="img/section_banner_first_title.png" alt="">
                    <div class="left_banner_word">
                        <strong>당신만을 위한 키링을</strong>
                        <strong>지금 여기서 만나보세요</strong>
                    </div>
                    <input type="button" value="링커 시작하기">
                </div>
                <div class="right_banner">
                    <img src="img/section_banner.png" alt="">
                </div>
            </div>
            <div class="section_category">
                <div class="category_title">
                    <strong>제작 가능한 굿즈 종류</strong>
                </div>
                <div class="category_wrap">
                    <div class="category_box">
                        <ul class="cg_ic">
                            <li class="cg_ic1 cg_ct"><a href="#"><img src="img/category_ic1.png" alt="category_icon"></a></li>
                            <li class="cg_ic2 cg_ct"><a href="#"><img src="img/category_ic2.png" alt="category_icon"></a></li>
                            <li class="cg_ic3 cg_ct"><a href="#"><img src="img/category_ic3.png" alt="category_icon"></a></li>
                            <li class="cg_ic4 cg_ct"><a href="#"><img src="img/category_ic4.png" alt="category_icon"></a></li>
                        </ul>
                        <ul class="cg_name">
                            <li><a href="#">텀블러</a></li>
                            <li><a href="#"> 키링</a></li>
                            <li><a href="#">슬로건</a></li>
                            <li><a href="#">기타 굿즈</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="category_week_item">
                <div class="week_title">
                    <strong>이번 주 Best Item</strong>
                </div>
                <div class="week_item_wrap">
                    <div class="item_line">
                        <div class="item_box">
                            <div class="item_area">
                                <div class="item_image">
                                    <img src="img/odung.png" alt="week_item">
                                </div>
                                <div class="item_bucket">
                                    <img src="img/go_bucket_icon.png" alt="go_to_bucket">
                                </div>
                            </div>
                            <div class="word_area">
                                <p>오둥이 아크릴 키링 1매</p>
                                <div class="word_area_pr">
                                    <strong>10,000</strong><span>원</span>
                                </div>
                            </div>
                        </div>
                        <div class="item_box">
                            <div class="item_area">
                                <div class="item_image">
                                    <img src="img/odung.png" alt="week_item">
                                </div>
                                <div class="item_bucket">
                                    <img src="img/go_bucket_icon.png" alt="go_to_bucket">
                                </div>
                            </div>
                            <div class="word_area">
                                <p>오둥이 아크릴 키링 1매</p>
                                <div class="word_area_pr">
                                    <strong>10,000</strong><span>원</span>
                                </div>
                            </div>
                        </div>
                        <div class="item_box">
                            <div class="item_area">
                                <div class="item_image">
                                    <img src="img/odung.png" alt="week_item">
                                </div>
                                <div class="item_bucket">
                                    <img src="img/go_bucket_icon.png" alt="go_to_bucket">
                                </div>
                            </div>
                            <div class="word_area">
                                <a href="product_detail.html">
                                    <p>오둥이 아크릴 키링 1매</p>
                                    <div class="word_area_pr">
                                        <strong>10,000</strong><span>원</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="item_box">
                            <div class="item_area">
                                <div class="item_image">
                                    <img src="img/odung.png" alt="week_item">
                                </div>
                                <div class="item_bucket">
                                    <img src="img/go_bucket_icon.png" alt="go_to_bucket">
                                </div>
                            </div>
                            <div class="word_area">
                                <p>오둥이 아크릴 키링 1매</p>
                                <div class="word_area_pr">
                                    <strong>10,000</strong><span>원</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item_line">
                        <div class="item_box">
                            <div class="item_area">
                                <div class="item_image">
                                    <img src="img/odung.png" alt="week_item">
                                </div>
                                <div class="item_bucket">
                                    <img src="img/go_bucket_icon.png" alt="go_to_bucket">
                                </div>
                            </div>
                            <div class="word_area">
                                <p>오둥이 아크릴 키링 1매</p>
                                <div class="word_area_pr">
                                    <strong>10,000</strong><span>원</span>
                                </div>
                            </div>
                        </div>
                        <div class="item_box">
                            <div class="item_area">
                                <div class="item_image">
                                    <img src="img/odung.png" alt="week_item">
                                </div>
                                <div class="item_bucket">
                                    <img src="img/go_bucket_icon.png" alt="go_to_bucket">
                                </div>
                            </div>
                            <div class="word_area">
                                <p>오둥이 아크릴 키링 1매</p>
                                <div class="word_area_pr">
                                    <strong>10,000</strong><span>원</span>
                                </div>
                            </div>
                        </div>
                        <div class="item_box">
                            <div class="item_area">
                                <div class="item_image">
                                    <img src="img/odung.png" alt="week_item">
                                </div>
                                <div class="item_bucket">
                                    <img src="img/go_bucket_icon.png" alt="go_to_bucket">
                                </div>
                            </div>
                            <div class="word_area">
                                <p>오둥이 아크릴 키링 1매</p>
                                <div class="word_area_pr">
                                    <strong>10,000</strong><span>원</span>
                                </div>
                            </div>
                        </div>
                        <div class="item_box">
                            <div class="item_area">
                                <div class="item_image">
                                    <img src="img/odung.png" alt="week_item">
                                </div>
                                <div class="item_bucket">
                                    <img src="img/go_bucket_icon.png" alt="go_to_bucket">
                                </div>
                            </div>
                            <div class="word_area">
                                <p>오둥이 아크릴 키링 1매</p>
                                <div class="word_area_pr">
                                    <strong>10,000</strong><span>원</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <footer>
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

    </div>
    <!-- <p class="to_top"><a href="#layout0" class="s_point">TOP</a></p> -->
    </div>


    </footer>
    </div>

</body>

</html>