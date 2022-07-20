<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <jsp:include page="../common/head.jsp" />
</head>

<body>
    <div class="skip-navigation">
        <p><a href="#container" tabindex="1">본문 바로가기</a></p>
        <p><a href="#sideNav" tabindex="1">주메뉴 바로가기</a></p>
    </div>
    <div id="container" class="resevation-container">
    <jsp:include page="../common/sidebar.jsp" />

        <!-- Content-Wrapper -->
        <div class="content-wrapper">
            <!-- Header-->    
			<jsp:include page="../common/header.jsp" />	
            <!-- // Header-->

            <div class="contents-wrap select-target-wrap">
                <!-- Contents -->
                <section class="contents">
                    <div class="cont-wrap">
                        <!-- reservation-sidebar -->
                        <div class="reservation-sidebar">
                            <div class="inner-wrap">
                                <em class="top-title">대상자 선택</em>
                                <div class="reservation-step-field">
                                    <!-- [comment] 
											- side list 상태별 스타일 제어 class
											- is-now : 현재 단계
											- is-end : 완료
										-->
                                    <ul class="reservation-step-list">
                                        <li class="is-now">
                                            <div class="rsv-step">
                                                <p class="rsv-title">01. 대상자 선택</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="rsv-step">
                                                <p class="rsv-title">02. 검진기관 및 검진항목</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="rsv-step">
                                                <p class="rsv-title">03. 선택검사</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="rsv-step">
                                                <p class="rsv-title">04. 추가검사</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="rsv-step">
                                                <p class="rsv-title">05. 검진일자</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="rsv-step">
                                                <p class="rsv-title">06. 검진자 정보 입력</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="rsv-step">
                                                <p class="rsv-title">07. 최종 확인</p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- // reservation-sidebar -->

                        <div class="contents-area reserve-contents-area">
                            <div class="co-location-wrap">
                                <div class="co-location">
                                    <p>
                                        <a href="javascript:;" class="home" title="홈으로 이동"><span class="skip">Home</span></a>
                                    </p>

                                    <p>검진예약/결과조회</p>


                                    <p class="on">예약하기</p>

                                </div>

                                <div class="co-title-field">
                                    <h1 class="title">대상자 선택</h1>
                                    <p class="date">임직원 건강검진 실시 기간 : 2022-01-01 ~ 2022-12-31</p>
                                </div>
                            </div>
                            <div class="co-cont-section">
                                <div class="cont-box">
                                    <p class="cont">
                                        예약 진행하실 대상자를 선택하여 주시기 바랍니다.<br />
                                        개인 비용의 가족 및 지인 검진 신청을 원하실 경우 [검진 대상자 추가]를 선택하여 주시기 바랍니다.
                                    </p>
                                </div>
                                <div class="targets-list-field">
                                    <ul class="targets-list">
                                        <li>
                                            <a href="javascript:;">
                                                <div class="client-card">
                                                    <div class="inner">
                                                        <div class="card-cont type01">
                                                            <div class="cont-inner">
                                                                <p class="title-add"><span>검진 대상자 추가</span><i class="c-plus-btn-1"></i></p>
                                                                <p class="ref-txt">※ 신청시 개인 비용이 발생합니다.</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="card-list">
                                            <div class="client-card">
                                                <div class="none-data">
                                                    <div class="img"><img src="/resources/images/logo/kmi/kmi_06.svg" alt="" /></div>
                                                    <p class="co-none-txt">검진 대상자가 없습니다.</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="card-list on">
                                            <a href="javascript:;">
                                                <div class="client-card person">
                                                    <div class="inner">
                                                        <p class="relationship">본인</p>
                                                        <div class="client-info">
                                                            <em class="name">김크미</em>
                                                            <p class="reg-number">123456-1******</p>
                                                        </div>
                                                        <div class="ctg-list-slide-wrap">
                                                            <div class="swiper category-swiper">
                                                                <div class="swiper-wrapper">
                                                                    <div class="swiper-slide">
                                                                        <span class="co-badge type01"># 회사지원</span>
                                                                    </div>
                                                                    <div class="swiper-slide">
                                                                        <span class="co-badge type01"># 종합검진</span>
                                                                    </div>
                                                                    <div class="swiper-slide">
                                                                        <span class="co-badge type01"># 출장검진</span>
                                                                    </div>
                                                                    <div class="swiper-slide">
                                                                        <span class="co-badge type01"># 기타</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                      
                                       
                                    </ul>
                                </div>
                            </div>
                            <div class="resevation-btmbar-wrap">
                                <div class="resevation-btm-bar type01">
                                    <div class="buttons">
                                        <div class="left">

                                            <a href="javascript:;" class="co-btn btn-reservation-prev"><span>이전</span></a>
                                        </div>
                                        <div class="right">

                                            <a href="javascript:;" class="co-btn btn-reservation-next"><span>다음</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- // Contents -->
            </div>
            <!-- Footer -->
           <jsp:include page="/WEB-INF/views/common/footer.jsp" />
        </div>
        <!-- // Content-Wrapper -->
    </div>
    <script src="../../lib/swiper/js/swiper.js"></script>
    <script src="../../js/common.js"></script>

    <script>
        clientActiveCard();

        $(window).on('resize load', function() {
            reservationSideBarFloating();

            var categorySwiper = new Swiper('.category-swiper', {
                slidesPerView: 'auto',
                spaceBetween: 8
            });
        });

        $(window).on('load resize scroll', function() {
            reservationBtmBarFixed();
        });
    </script>
</body>

</html>