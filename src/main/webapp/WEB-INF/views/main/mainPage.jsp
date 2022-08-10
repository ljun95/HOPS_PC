<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>검진결과</title>	
<link rel="shortcut icon" type="image/x-icon" href="${path }/resources/images/ico/favicon.ico" />
<link rel="stylesheet" href="${path }/resources/lib/swiper/css/swiper.css" />
<link rel="stylesheet" href="${path }/resources/lib/jquery-ui/css/jquery-ui.min.css" />
<link rel="stylesheet" href="${path }/resources/css/style.css" />
<script src="${path }/resources/lib/jquery/jquery.min.js"></script>
<script src="${path }/resources/lib/jquery-ui/js/jquery-ui-1.9.2.custom.js"></script>
<script src="${path }/resources/lib/smooth-scrollbar/dist/smooth-scrollbar.js"></script>
</head>
<body>
<!--  <!-- Side Navigation --> -->
<jsp:include page="../common/sidebar.jsp" />
<!-- <!-- //Side Navigation -->	      -->
<!-- <!-- Header-->       -->
<jsp:include page="../common/header.jsp" />	
<!-- // Header-->    
        <!-- Content-Wrapper -->        
            <div class="contents-wrap">
                <!-- Contents -->
                <section class="contents">
                    <div class="cont-wrap">
                        <!-- checkup-sidebar -->
                        <div class="checkup-sidebar">
                            <div class="inner-wrap">
                                <ul class="co-tab-list tab-event type01 tab-2" role="tablist">
                                    <li>
                                        <a href="javascript:;" class="on" role="tab" aria-selected="true" id="sidenavChkupTab_01" aria-controls="sidenavChkupTabPanel_01">검진 대상자</a>
                                    </li>
                                    <li>
                                        <a href="javascript:;" role="tab" aria-selected="false" id="sidenavChkupTab_02" aria-controls="sidenavChkupTabPanel_02">검진 결과</a>
                                    </li>
                                </ul>
                                <div class="tab-cont-wrap">
                                    <!-- 검진대상자 -->
                                    <div class="tab-content on" id="sidenavChkupTabPanel_01" aria-labelledby="sidenavChkupTab_01">
                                        <div class="client-card-field">
                                            <div class="client-card">
                                                <p class="relationship">본인</p>
                                                <div class="client-info">
                                                    <em class="name">김크미</em>
                                                    <p class="reg-number">2020-12-30</p>
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
                                                <div class="buttons">
                                                    <a href="javascript:;;" class="co-btn bg-navy-1 w-full">예약하기</a>
                                                </div>
                                            </div>
                                            <!-- 로딩 처리  -->
                                            <div class="client-card">
                                                <div class="spinner-field">
                                                    <div>
                                                        <div class="spinner"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="client-card">
                                                <p class="relationship">본인</p>
                                                <div class="client-info">
                                                    <em class="name">김크미</em>
                                                    <p class="reg-number">2020-12-30</p>
                                                </div>
                                                <div class="ctg-list-slide-wrap">
                                                    <div class="swiper category-swiper">
                                                        <div class="swiper-wrapper">
                                                            <div class="swiper-slide">
                                                                <span class="co-badge type01"># 회사지원</span>
                                                            </div>
                                                            <div class="swiper-slide">
                                                                <span class="co-badge type01"># 회사지원</span>
                                                            </div>
                                                            <div class="swiper-slide">
                                                                <span class="co-badge type01"># 회사지원</span>
                                                            </div>
                                                            <div class="swiper-slide">
                                                                <span class="co-badge type01"># 회사지원</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="buttons">
                                                    <a href="javascript:;;" class="co-btn bg-navy-1 w-full">예약하기</a>
                                                </div>
                                            </div>
                                            <div class="client-card">
                                                <p class="relationship">본인</p>
                                                <div class="client-info">
                                                    <em class="name">김크미</em>
                                                    <p class="reg-number">2020-12-30</p>
                                                </div>
                                                <div class="ctg-list-slide-wrap">
                                                    <div class="swiper category-swiper">
                                                        <div class="swiper-wrapper">
                                                            <div class="swiper-slide">
                                                                <span class="co-badge type01"># 회사지원</span>
                                                            </div>
                                                            <div class="swiper-slide">
                                                                <span class="co-badge type01"># 회사지원</span>
                                                            </div>
                                                            <div class="swiper-slide">
                                                                <span class="co-badge type01"># 회사지원</span>
                                                            </div>
                                                            <div class="swiper-slide">
                                                                <span class="co-badge type01"># 회사지원</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="buttons">
                                                    <a href="javascript:;;" class="co-btn bg-navy-1 w-full">예약하기</a>
                                                </div>
                                            </div>
                                            <div class="client-card">
                                                <p class="relationship">본인</p>
                                                <div class="client-info">
                                                    <em class="name">김크미</em>
                                                    <p class="reg-number">2020-12-30</p>
                                                </div>
                                                <div class="ctg-list-slide-wrap">
                                                    <div class="swiper category-swiper">
                                                        <div class="swiper-wrapper">
                                                            <div class="swiper-slide">
                                                                <span class="co-badge type01"># 회사지원</span>
                                                            </div>
                                                            <div class="swiper-slide">
                                                                <span class="co-badge type01"># 회사지원</span>
                                                            </div>
                                                            <div class="swiper-slide">
                                                                <span class="co-badge type01"># 회사지원</span>
                                                            </div>
                                                            <div class="swiper-slide">
                                                                <span class="co-badge type01"># 회사지원</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="buttons">
                                                    <a href="javascript:;;" class="co-btn bg-navy-1 w-full">예약하기</a>
                                                </div>
                                            </div>
                                            <div class="client-card">
                                                <p class="relationship">본인</p>
                                                <div class="client-info">
                                                    <em class="name">김크미</em>
                                                    <p class="reg-number">2020-12-30</p>
                                                </div>
                                                <div class="ctg-list-slide-wrap">
                                                    <div class="swiper category-swiper">
                                                        <div class="swiper-wrapper">
                                                            <div class="swiper-slide">
                                                                <span class="co-badge type01"># 회사지원</span>
                                                            </div>
                                                            <div class="swiper-slide">
                                                                <span class="co-badge type01"># 회사지원</span>
                                                            </div>
                                                            <div class="swiper-slide">
                                                                <span class="co-badge type01"># 회사지원</span>
                                                            </div>
                                                            <div class="swiper-slide">
                                                                <span class="co-badge type01"># 회사지원</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="buttons">
                                                    <a href="javascript:;;" class="co-btn bg-navy-1 w-full">예약하기</a>
                                                </div>
                                            </div>
                                            <div class="client-card">
                                                <p class="relationship">본인</p>
                                                <div class="client-info">
                                                    <em class="name">김크미</em>
                                                    <p class="reg-number">2020-12-30</p>
                                                </div>
                                                <div class="ctg-list-slide-wrap">
                                                    <div class="swiper category-swiper">
                                                        <div class="swiper-wrapper">
                                                            <div class="swiper-slide">
                                                                <span class="co-badge type01"># 회사지원</span>
                                                            </div>
                                                            <div class="swiper-slide">
                                                                <span class="co-badge type01"># 회사지원</span>
                                                            </div>
                                                            <div class="swiper-slide">
                                                                <span class="co-badge type01"># 회사지원</span>
                                                            </div>
                                                            <div class="swiper-slide">
                                                                <span class="co-badge type01"># 회사지원</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="detail-info">
                                                    <ul>
                                                        <li>
                                                            <span>종류</span>
                                                            <p>종합검진 일반</p>
                                                        </li>
                                                        <li>
                                                            <span>장소</span>
                                                            <p>한국의학연구소 광화문센터</p>
                                                        </li>
                                                        <li>
                                                            <span>1차</span>
                                                            <p>2022<span>년</span> 05<span>월 </span>15<span>일 오전</span></p>
                                                        </li>
                                                        <li>
                                                            <span>2차</span>
                                                            <p>2022<span>년</span> 05<span>월 </span>15<span>일 오전</span></p>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="buttons">
                                                    <button class="co-btn bg-gray-3 w-full"><span>예약 접수 중</span></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 검진결과-->
                                    <div class="tab-content" id="sidenavChkupTabPanel_02" aria-labelledby="sidenavChkupTab_02">
                                        <div class="client-card-field">
                                            <div class="client-card">
                                                <div class="none-data">
                                                    <div class="img"><img src="${path }/resources/images/logo/kmi/kmi_06.svg" alt="" /></div>
                                                    <p class="co-none-txt">검진 대상자가 없습니다.</p>
                                                </div>
                                            </div>
                                            <div class="client-card">
                                                <p class="relationship">배우자 부</p>
                                                <div class="client-info">
                                                    <em class="name">김크미</em>
                                                    <p class="reg-number">2020-12-30</p>
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
                                                    <div class="buttons">
                                                        <button type="button" class="co-btn bg-gray-3 w-full btn-open-popup" data-toggle="modal" data-target="#popupOverTime01"><span>신청시간 경과</span></button>
                                                    </div>
                                                    <!-- 로딩 처리  -->
                                                </div>
                                            </div>

                                            <div class="client-card">
                                                <p class="relationship">본인</p>
                                                <div class="client-info">
                                                    <em class="name">김크미</em>
                                                    <p class="reg-number">2020-12-30</p>
                                                </div>
                                                <div class="ctg-list-slide-wrap">
                                                    <div class="swiper category-swiper">
                                                        <div class="swiper-wrapper">
                                                            <div class="swiper-slide">
                                                                <span class="co-badge type01"># 회사지원</span>
                                                            </div>
                                                            <div class="swiper-slide">
                                                                <span class="co-badge type01"># 회사지원</span>
                                                            </div>
                                                            <div class="swiper-slide">
                                                                <span class="co-badge type01"># 회사지원</span>
                                                            </div>
                                                            <div class="swiper-slide">
                                                                <span class="co-badge type01"># 회사지원</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="detail-info">
                                                    <ul>
                                                        <li>
                                                            <span>종류</span>
                                                            <p>종합검진 일반</p>
                                                        </li>
                                                        <li>
                                                            <span>장소</span>
                                                            <p>한국의학연구소 광화문센터</p>
                                                        </li>
                                                        <li>
                                                            <span>1차</span>
                                                            <p>2022<span>년</span> 05<span>월 </span>15<span>일 오전</span></p>
                                                        </li>
                                                        <li>
                                                            <span>2차</span>
                                                            <p>2022<span>년</span> 05<span>월 </span>15<span>일 오전</span></p>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="buttons">
                                                    <!-- 
								[comment]
								- script 추가
								- btn-open-popup
							 -->
                                                    <button type="button" class="co-btn bg-blue-1 w-full" data-toggle="modal" data-target=""><span>검진결과 전달</span></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- =  POPUP 시간경과 버튼 클릭 시-->
                                    <div class="c-layer-popup type01" id="popupOverTime01" role="dialog" aria-labelledby="popupOverTime01_Label" aria-modal="true" aria-hidden="true">
                                        <div class="modal-wrap">
                                            <div class="modal-field" tabindex="0">
                                                <div class="c-modal-body">
                                                    <div class="c-modal-inner">
                                                        <h4 class="c-title skip" id="popupOverTime01_Label">예약시간 경과 안내 팝업</h4>
                                                        <p>자세한 문의는 콜센터로 <br />연락하여 주시기 바랍니다. <br />1599-7070</p>
                                                    </div>
                                                </div>

                                                <div class="c-modal-footer">
                                                    <div class="inner">
                                                        <div class="buttons">
                                                            <button class="co-btn bg-navy-1 popup-cls-btn"><span>확인</span></button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- = // 시간경과 버튼 클릭 시 팝업-->
                                </div>
                                <!-- // checkup-sidebar -->
                            </div>
                        </div>

                        <!-- main-contents-area -->
                        <div class="contents-area main-contents-area">
                            <div class="container">
                                <div class="co-article">
                                    <div class="rolling-banner">
                                        <!-- rolling-txt hover  -->
                                        <ul class="list">
                                            <li>
                                                <span class="co-badge type01">검진기간</span>
                                                <p>임직원 검진 예약 신청 기간 2021.03.01 ~ 2021.06.31</p>
                                            </li>
                                            <li>
                                                <span class="co-badge type01">검진기간</span>
                                                <p>임직원 검진 예약 신청 기간 2021.03.01 ~ 2021.06.31</p>
                                            </li>
                                            <li>
                                                <span class="co-badge type01">신청기간</span>
                                                <p>임직원 검진 예약 신청 기간 2021.03.01 ~ 2021.06.31</p>
                                            </li>
                                        </ul>
                                        <div class="rolling-btn-group">
                                            <div class="buttons">
                                                <button type="button" class="c-arrow-btn left prev-btn"><span class="skip">이전</span></button>
                                                <button type="button" class="c-arrow-btn next-btn"><span class="skip">다음</span></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- main-slide-swiper -->

                                <div class="main-swiper-field">
                                    <div class="swiper main-slide-swiper">
                                        <div class="swiper-wrapper">
                                            <div class="swiper-slide">
                                                <!--  Image 등록 case -->
                                                <div class="slide-card img-type" style="background-image: url(${path }/resources/images/main_banner_03.jpg)">
                                                    <div class="co-slide-cont">
                                                        <div class="inner">
                                                            <!-- <img src="../../images/mainslide_01.jpg" alt="" /> -->
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="swiper-slide">
                                                <!--  Image 등록 case -->
                                                <div class="slide-card img-type" style="background-image: url(${path }/resources/images/main_banner_02.jpg)">
                                                    <div class="co-slide-cont">
                                                        <div class="inner">
                                                            <!-- <img src="../../images/mainslide_01.jpg" alt="" /> -->
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="swiper-slide">
                                                <!--  Text 등록 case -->
                                                <div class="slide-card txt-type" style="background-image: url(${path }/resources/images/main_banner_01.jpg)">
                                                    <div class="co-slide-cont">
                                                        <div class="inner">
                                                            <div class="txt-cont">
                                                                <p class="sub-title-01 is-navy-1">Since 1985</p>
                                                                <em class="title-01 is-navy-1">평생을 건강하게</em>
                                                                <p class="cont-01 is-gray-1">종합건강검진기관 KMI 한국의학연구소가 함께합니다.</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="main-slide-btn-prev">
                                            <i class="ico"></i>
                                        </div>
                                        <div class="main-slide-btn-next">
                                            <i class="ico"></i>
                                        </div>
                                        <div class="main-banner-pagination"></div>
                                    </div>
                                </div>
                                <div class="co-article">
                                    <div class="row type02">
                                        <div class="col-4">
                                            <div class="main-card">
                                                <div class="co-title-field">
                                                    <h2 class="main-title">가족 검진 신청</h2>
                                                    <div class="date c-space-letter">신청기간 : YYYY-MM-DD ~ YYYY-MM-DD</div>
                                                </div>
                                                <a href="javascript:clickFunction();" class="add-checkup">
                                                    <div class="card-cont type01">
                                                        <div class="cont-inner">
                                                            <div class="img">
                                                                <img src="${path }/resources/images/logo/kmi/kmi_07.png" alt="healthy Kmi" />
                                                            </div>
                                                            <p class="title-add"><span>검진 대상자 추가</span><i class="c-plus-btn-1"></i></p>
                                                            <p class="ref-txt">※ 신청시 개인 비용이 발생합니다.</p>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="main-card">
                                                <div class="co-title-field">
                                                    <h2 class="main-title">예약/결과 조회</h2>
                                                </div>
                                                <div class="card-cont type02">
                                                    <div class="cont-inner">
                                                        <div class="inner">
                                                            <a href="javascript:clickFunction();">
                                                                <div class="ico">
                                                                    <div><img src="${path }/resources/images/ico/ico_main_card_01.svg" alt="" /></div>
                                                                </div>
                                                                <div class="cont">
                                                                    <p class="title">건강검진 예약 확인</p>
                                                                    <p class="go-link">예약확인 하러가기</p>
                                                                </div>
                                                            </a>
                                                        </div>
                                                        <div class="inner">
                                                            <a href="${path }/resultpage/resultinfo">
                                                                <div class="ico">
                                                                    <div><img src="${path }/resources/images/ico/ico_main_card_02.svg" alt="" /></div>
                                                                </div>
                                                                <div class="cont">
                                                                    <p class="title">건강검진 결과조회</p>
                                                                    <p class="go-link">결과조회 하러가기</p>
                                                                </div>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="main-card">
                                                <div class="co-title-field">
                                                    <h2 class="main-title">고객센터</h2>
                                                    <a href="javascript:clickFunction();" class="co-link">서비스 문의하기</a>
                                                </div>
                                                <div class="card-cont type03">
                                                    <div class="cont-inner">
                                                        <div class="customer-service">
                                                            <em class="time">오전 09:00 ~ 오후 18:00</em>
                                                            <p>서비스 이용 시 불편사항이나 문의사항을 남겨주시면 신속하고 친절하게 안내해 드리겠습니다 !</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="co-article">
                                    <div class="row type02">
                                        <div class="col-6">
                                            <div class="main-card">
                                                <div class="co-title-field">
                                                    <h2 class="main-title">공지사항</h2>
                                                    <a href="javascript:clickFunction();" class="co-link">더보기</a>
                                                </div>
                                                <!-- [CASE01]  목록 있는 경우 -->
                                                <div class="co-list-field main-notice">                                                    
                                                    <ul class="co-list-article main-notice-list">
                                                    <c:forEach var="list" items="${noticeList }" varStatus="status">
                                                        <li>
                                                            <div>
                                                                <span class="co-badge type02" >${list.notice_type }</span>
                                                                <a href="javascript:clickFunction();" class="title">
                                                                    <p>${list.notice_title }</p>
                                                                </a>
                                                                <span class="date">${list.reg_dt }</span>
                                                            </div>
                                                        </li>                                                        
                                                         </c:forEach>            
                                                    </ul>
                                                    <!-- [CASE-02]
															- 목록 없는 경우 
														-->
                                                </div>
                                                <!-- [CASE01]  // 목록 있는 경우 -->
                                                <!-- [CASE02]  목록 없는 경우 
														+ inline style 제거 후 사용 (style="display: none")
													-->
                                                <div class="co-list-field main-notice none-data" style="display: none">
                                                    <div>
                                                        <div class="img"><img src="${path }/resources/images/logo/kmi/kmi_02.svg" alt="" /></div>
                                                        <p>등록된 리스트가 없습니다.</p>
                                                    </div>
                                                </div>
                                                <!-- [CASE02]  // 목록 없는 경우 -->
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <!-- [CASE01]  목록 있는 경우 -->
                                            <div class="main-card main-center-introduce">
                                                <div class="co-title-field">
                                                    <h2 class="main-title">검진센터 탐방</h2>
                                                    <div class="main-center-pagination"></div>
                                                </div>
                                                <div class="center-introduce-wrapper">
                                                    <div class="main-center-slide-field">
                                                        <div class="swiper main-center-swiper center01">
                                                            <div class="swiper-wrapper">
                                                                <div class="swiper-slide">
                                                                    <div class="slide-card">
                                                                        <div class="co-slide-cont">
                                                                            <div class="inner">
                                                                                <img src="${path }/resources/images/dummy/test_01.jpg" alt="" />
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="swiper-slide">
                                                                    <div class="slide-card">
                                                                        <div class="co-slide-cont">
                                                                            <div class="inner">
                                                                                <img src="${path }/resources/images/dummy/test_02.jpg" alt="" />
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="swiper-slide">
                                                                    <div class="slide-card">
                                                                        <div class="co-slide-cont">
                                                                            <div class="inner">
                                                                                <img src="${path }/resources/images/dummy/test_03.jpg" alt="" />
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="swiper-slide">
                                                                    <div class="slide-card">
                                                                        <div class="co-slide-cont">
                                                                            <div class="inner">
                                                                                <img src="${path }/resources/images/dummy/test_03.jpg" alt="" />
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="co-slide-btn-prev"></div>
                                                            <div class="co-slide-btn-next"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- [CASE01]  // 목록 있는 경우 -->
                                            <!-- [CASE02]  목록 없는 경우 
												+ inline style 제거 후 사용 (style="display: none")
												-->
                                            <div class="main-card main-center-introduce" style="display: none">
                                                <div class="co-title-field">
                                                    <h2 class="main-title">검진센터 탐방</h2>
                                                    <div class="center-pagination"><span>0</span> / <span>0</span></div>
                                                </div>
                                                <div class="center-introduce-wrapper">
                                                    <div class="co-list-field none-data main">
                                                        <div>
                                                            <div class="img"><img src="${path }/resources/images/logo/kmi/kmi_05.svg" alt="" /></div>
                                                            <p>등록된 리스트가 없습니다.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- [CASE02]  // 목록 없는 경우 -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- // main-contents-area -->
                    </div>
                </section>
                <!-- // Contents -->                   
            </div>        
        <!-- // Content-Wrapper -->
    <!-- Footer -->            
    <jsp:include page="../common/footer.jsp"/>
    <script>	   
        $(window).on('load', function() {        	
            rollingTxtBanner();
            //sessionStorage.clear();
        });

        selectedTabList();

        // main Banner Slide
        var swiper = new Swiper('.main-slide-swiper', {
            loop: true,
            touchRatio: 1,
            allowTouchMove: true,
            autoplay: {
                delay: 2000,
                disableOnInteraction: false,
            },
            navigation: {
                prevEl: '.main-slide-btn-prev',
                nextEl: '.main-slide-btn-next',
            },
            pagination: {
                el: '.main-banner-pagination',
                type: 'bullets',
                clickable: true,
            },
        });

        // Side Category Tab
        $('.category-swiper').each(function(idx, e) {
            $(this).addClass('slide-num-' + idx);
            var siwper02 = new Swiper('.slide-num-' + idx, {
                observer: true, // update 반영
                slidesPerView: 'auto',
                loopAdditionalSlides: 1,
                spaceBetween: 8,
                navigation: {
                    prevEl: $('.slide-num-' + idx).find('.co-slide-btn-prev'),
                    nextEl: $('.slide-num-' + idx).find('.co-slide-btn-next'),
                },
            });
        });
        $(window).on('load resize', function() {
            mainContSideNav();

            var swiper03 = new Swiper('.main-center-swiper', {
                slidesPerView: 'auto',
                spaceBetween: 20,
                loop: true,
                pagination: {
                    el: '.main-center-pagination',
                    type: 'fraction',
                },
                navigation: {
                    prevEl: '.co-slide-btn-prev',
                    nextEl: '.co-slide-btn-next',
                },
            });
        });
        
        function clickFunction(){
        	alert('개발예정');
        }
    </script>
</body>

</html>