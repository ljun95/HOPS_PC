<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!-- popupChkupInstitutionTabPanel_01  -->


    <input type="hidden" id="partnerCenterIdModal" value=${parCenDetail.partnerCenterId}>
    <div class="popup-institution-swiper-field">
        <div class="swiper popup-institution-swiper">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <img src="/resources/images/center/center_01_01.jpg" alt="" />
                    <input hidden="" id="parCenName" value="${parCenDetail.partnerCenterName}">
                </div>
                <div class="swiper-slide">
                    <img src="/resources/images/center/center_01_01.jpg" alt="" />
                </div>
                <div class="swiper-slide">
                    <img src="/resources/images/center/center_01_01.jpg" alt="" />
                </div>
            </div>
            <div class="co-slide-btn-prev"></div>
            <div class="co-slide-btn-next"></div>
        </div>
    </div>
    <!-- // popup-institution-swiper -->
	
    <ul class="institution-info-list">
        <li>
            <p class="title">주소</p>
            <div class="cont-box">
                <p>${parCenDetail.addrressDetail}</p>
            </div>
        </li>
        <li>
            <p class="title">홈페이지</p>
            <div class="cont-box">
                <a href="www.kmi.or.kr" target="_blank" class="link" title="새 창 열기">${parCenDetail.hompageUrl}</a>
            </div>
        </li>
        <li>
            <p class="title">안내 전화</p>
            <div class="cont-box">
                <p>${parCenDetail.guidePhoneNo}</p>
            </div>
        </li>
        <li>
            <p class="title">검진시간</p>
            <div class="cont-box">
                <ul class="circle">
                    <li>${parCenDetail.checkupTimeGuide}</li>
                </ul>
            </div>
        </li>
        <li>
            <p class="title">휴무안내</p>
            <div class="cont-box">
                <ul class="circle">
                    <li>${parCenDetail.closedGuide}</li>
                </ul>
            </div>
        </li>
        <li>
            <p class="title">검진 예약 시 특이 사항</p>
            <div class="cont-box">
                <p>${parCenDetail.reservUqGuide}</p>
            </div>
        </li>
        <li>
            <p class="title">검진기관소개</p>
            <div class="cont-box">
                <p>${parCenDetail.partnerCenterGuide}</p>
            </div>
        </li>
        <li style="display: none;">
            <span class="skip">약도</span>
                <div class="co-location-map addr" id="${parCenDetail.addrress}"></div>
        </li>
        <li style="display: none;">
            <p class="title">지하철</p>
            <div class="cont-box" id="a1">
                <ul>
                    <li>${parCenDetail.subwayGuide}</li>
                </ul>
            </div>
        </li>
        <li style="display: none;">
            <p class="title">버스</p>
            <div class="cont-box">
                <ul>
                    <li id="b1">${parCenDetail.busGuide}</li>
                </ul>
            </div>
        </li>
        <li style="display: none;">
            <p class="title">자가용</p>
            <div class="cont-box">
                <p id="c1">${parCenDetail.woncarGuide}</p>
            </div>
        </li>
        <li style="display: none;">
            <p class="title">주차안내</p>
            <div class="cont-box" id="d1">${parCenDetail.parkingGuide}</div>
        </li>
        <li style="display: none;">
            <p class="title">기타교통</p>
            <div class="cont-box">
                <p id="e1">${parCenDetail.etcTrafficGuide}</p>
            </div>
        </li>
    </ul>


<script>
//탭 병원이름
$(document).ready(function(){
	$("#popupChkupInstitution01_Label").text($("#parCenName").val());
	let partnerCenterIdModal = $("#partnerCenterIdModal").val();
	$('#partnerCenterIdModal0').val(partnerCenterIdModal);
	$('#a2').find('li').text($('#a1').text());
	$('#b2').find('li').text($('#b1').text());
	$('#c2').find('p').text($('#c1').text());
	$('#d2').text($('#d1').text());
	$('#e2').find('p').text($('#e1').text());
	$(".institution-info-list.map").show();
});


</script>