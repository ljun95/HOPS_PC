<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

        <!-- Side Navigation -->
        <jsp:include page="../common/sidebar.jsp" />

            <!-- Header-->
            <jsp:include page="../common/header.jsp" />	
            <!-- // Header-->

            <!-- rsv-final-confirm-wrap -->
            <div class="contents-wrap rsv-final-confirm-wrap">
                <!-- Contents -->
                <section class="contents">
                    <div class="cont-wrap">
                        <!-- reservation-sidebar -->
                        <div class="reservation-sidebar">
                            <div class="inner-wrap">
                                <em class="top-title">검진기관 및 검진항목</em>
                                <div class="reservation-step-field">
                                    <!-- [comment] 
																	- side list 상태별 스타일 제어 class
																	- is-now : 현재
																	- is-end : 완료
																-->
                                    <ul class="reservation-step-list">
                                        <li class="is-end">
                                            <div class="rsv-step">
                                                <a href="javascript:;" onclick="goPage('rosterchoice')">
                                                    <p class="rsv-title">01. 대상자 선택</p>
                                                    <p class="rsv-data">대상자 선택</p>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="is-end">
                                            <div class="rsv-step">
                                                <a href="javascript:;" onclick="goPage('partnerhospital')">
                                                    <p class="rsv-title">02. 검진기관 및 검진항목</p>
                                                    <p class="rsv-data">검진기관 및 검진항목</p>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="is-end">
                                            <div class="rsv-step">
                                                <a href="javascript:;" onclick="goPage('choicecheckup')">
                                                    <p class="rsv-title">03. 선택검사</p>
                                                    <p class="rsv-data">선택검사</p>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="is-end">
                                            <div class="rsv-step">
                                                <a href="javascript:;" onclick="goPage('addtest')">
                                                    <p class="rsv-title">04. 추가검사</p>
                                                    <p class="rsv-data">추가검사</p>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="is-end">
                                            <div class="rsv-step">
                                                <a href="javascript:;" onclick="goPage('checkupdaylist')">
                                                    <p class="rsv-title">05. 검진일자</p>
                                                    <p class="rsv-data">검진일자</p>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="is-end">
                                            <div class="rsv-step">
                                                <a href="javascript:;" onclick="goPage('checkupinfolist')">
                                                    <p class="rsv-title">06. 검진자 정보 입력</p>
                                                    <p class="rsv-data">검진자 정보 입력</p>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="is-now">
                                            <div class="rsv-step" onclick="goPage()">
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
                                    <h1 class="title">최종 확인</h1>
                                </div>
                            </div>
                            <div class="co-cont-section">
                                <div class="co-per-scroll-layout final-confirm-wrap">
                                    <!-- reservation-detail -->
                                    <div class="row">
                                        <!-- left-wrap -->
                                        <div class="col left-wrap">
                                            <div class="c-inner">
                                                <div class="co-article">
                                                    <div class="co-title-field">
                                                        <h2 class="sub-title">검진 상품</h2>
                                                    </div>
                                                    <div class="co-cont-list type01">
                                                        <div class="co-cont-article input-cont-article">
                                                            <div class="c-input-list-basic input-cont">
                                                                <div class="row input-view">
                                                                    <div class="col-6 label-input">
                                                                        <label for="inputVeiwChkConfirm01_01">검진 기관</label>
                                                                        <input type="text" class="c-input" id="inputVeiwChkConfirm01_01" value="${partnerId.partnerCenterName}" readonly="readonly" />
                                                                    </div>
                                                                    <div class="col-6 label-input">
                                                                        <label for="inputVeiwChkConfirm01_02">검진 기관 주소</label>
                                                                        <input type="text" class="c-input" id="inputVeiwChkConfirm01_02" value="${partnerId.addrressDetail}" readonly="readonly" />
                                                                    </div>
                                                                </div>
                                                                <div class="row input-view">
                                                                    <div class="col-6 label-input">
                                                                        <label for="inputVeiwChkConfirm01_03">검진상품명</label>
                                                                        <input type="text" class="c-input" id="inputVeiwChkConfirm01_03" value="${productData.checkupProductTitle}" readonly="readonly" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="co-cont-article input-view type01">
                                                            <p>${productData.checkupProductContent}</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="co-article">
                                                    <div class="co-title-field">
                                                        <h2 class="sub-title">선택검사</h2>
                                                    </div>
                                                    <div class="co-cont-article input-view type01">
                                                        <ul class="confirm-chk-card-list">
                                                            <c:forEach items="${groupNum}" var="list" varStatus="status">
                                                            <li>
                                                                <div class="confirm-chk-card 1" id=${list.count}>
                                                                    <div class="col title">
                                                                        <p>선택검사 ${status.index+1}</p>
                                                                    </div>
                                                                    <div class="col list">
                                                                        <div class="in-row">
                                                                            <c:forEach items="${productList}" var="pdlist" varStatus="status">
                                                    							<c:if test="${pdlist.choiceGroupNo eq list.count}">
		                                                                            <div class="col-4" id="${pdlist.testItemCd}" style="display: none" title="${pdlist.standardPrice}">
		                                                                                <div class="exam-ctg">
		                                                                                    <em>${pdlist.testItemName}</em>
		                                                                                    <button class="btn-chkup-info-detail">
		                                                                                        <i class="ico-type01 t-i-help01-02" id="${pdlist.testItemCd}"><span>설명 자세히 보기</span></i>
		                                                                                    </button>
		                                                                                </div>
		                                                                            </div>
                                                                  				</c:if>
                                                                            </c:forEach>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            </c:forEach>
                                                        </ul>
                                                    </div>
                                                </div>
                                                
                                                <div class="co-article">
                                                    <div class="co-title-field">
                                                        <h2 class="sub-title">추가검사</h2>
                                                    </div>
                                               
                                                    <div class="co-cont-article input-view type01" id="addTag">
                                                    
                                                         <ul class="confirm-chk-card-list">
                                                            <c:forEach items="${groupNum}" var="list" varStatus="status">
                                                            <li>
                                                                <div class="confirm-chk-card 2" id='${list.count}+2' style="display: none">
                                                                    <div class="col title">
                                                                        <p>추가검사 ${status.index+1}</p>
                                                                    </div>
                                                                    <div class="col list">
                                                                        <div class="in-row">
                                                                            <c:forEach items="${productList}" var="pdlist" varStatus="status">
                                                    							<c:if test="${pdlist.choiceGroupNo eq list.count}">
		                                                                            <div class="col-4" id="${pdlist.testItemCd}+2" style="display: none" title="${pdlist.standardPrice}">
		                                                                                <div class="exam-ctg">
		                                                                                    <em>${pdlist.testItemName}</em>
		                                                                                    <button class="btn-chkup-info-detail">
		                                                                                        <i class="ico-type01 t-i-help01-02" id="${pdlist.testItemCd}+2"><span>설명 자세히 보기</span></i>
		                                                                                    </button>
		                                                                                </div>
		                                                                            </div>
                                                                  				</c:if>
                                                                            </c:forEach>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            </c:forEach>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="co-article">
                                                    <div class="row col-full-height">
                                                        <div class="column">
                                                            <div class="co-title-field">
                                                                <h2 class="sub-title">1차 검진일정</h2>
                                                            </div>
                                                            <div class="co-cont-list type01 inner-full-cont">
                                                                <div class="co-cont-article input-cont-article">
                                                                    <div class="c-input-list-basic input-cont">
                                                                        <div class="row input-view">
                                                                            <div class="col label-input">
                                                                                <label for="inputVeiwChkConfirm02_01">예약일자</label>
                                                                                <input type="text" class="c-input" id="inputVeiwChkConfirm02_01" value="" readonly="readonly" />
                                                                            </div>
                                                                        </div>
                                                                        <div class="row input-view">
                                                                            <div class="col label-input">
                                                                                <label for="inputVeiwChkConfirm02_02">예약일자</label>
                                                                                <input type="text" class="c-input" id="inputVeiwChkConfirm02_02" value="24:60" readonly="readonly" />
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="column">
                                                            <div class="co-title-field">
                                                                <h2 class="sub-title">2차 검진일정</h2>
                                                            </div>
                                                            <div class="co-cont-list type01 inner-full-cont">
                                                                <div class="co-cont-article input-cont-article">
                                                                    <div class="c-input-list-basic input-cont">
                                                                        <div class="row input-view">
                                                                            <div class="col label-input">
                                                                                <label for="inputVeiwChkConfirm03_01">예약일자</label>
                                                                                <input type="text" class="c-input" id="inputVeiwChkConfirm03_01" value="YYYY-MM-DD" readonly="readonly" />
                                                                            </div>
                                                                        </div>
                                                                        <div class="row input-view">
                                                                            <div class="col label-input">
                                                                                <label for="inputVeiwChkConfirm03_02">예약일자</label>
                                                                                <input type="text" class="c-input" id="inputVeiwChkConfirm03_02" value="24:60" readonly="readonly" />
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="co-article">
                                                    <div class="co-title-field">
                                                        <h2 class="sub-title">개인정보</h2>
                                                    </div>
                                                    <div class="co-cont-list type01">
                                                        <div class="co-cont-article input-cont-article">
                                                            <div class="c-input-list-basic input-cont">
                                                                <div class="row input-view">
                                                                    <div class="col-6 label-input">
                                                                        <label for="inputVeiwChkConfirm06_01">검진자명</label>
                                                                        <input type="text" class="c-input" id="inputVeiwChkConfirm06_01" value="홍길동" readonly="readonly" />
                                                                    </div>
                                                                    <div class="col-6 label-input">
                                                                        <label for="inputVeiwChkConfirm06_02">생년월일</label>
                                                                        <input type="text" class="c-input" id="inputVeiwChkConfirm06_02" value="780101" readonly="readonly" />
                                                                    </div>
                                                                </div>
                                                                <div class="row input-view">
                                                                    <div class="col-6 label-input">
                                                                        <label for="inputVeiwChkConfirm06_03">성별</label>
                                                                        <input type="text" class="c-input" id="inputVeiwChkConfirm06_03" value="남" readonly="readonly" />
                                                                    </div>
                                                                    <div class="col-6 label-input">
                                                                        <label for="inputVeiwChkConfirm06_04">휴대폰 전화번호</label>
                                                                        <input type="text" class="c-input" id="inputVeiwChkConfirm06_04" value="010-1234-6789" readonly="readonly" />
                                                                    </div>
                                                                </div>
                                                                <div class="row input-view">
                                                                    <div class="col label-input">
                                                                        <label for="inputVeiwChkConfirm06_05">이메일</label>
                                                                        <input type="text" class="c-input" id="inputVeiwChkConfirm06_05" value="test@test.com" readonly="readonly" />
                                                                    </div>
                                                                </div>
                                                                <div class="row input-view">
                                                                    <div class="col label-input">
                                                                        <label for="inputVeiwChkConfirm06_06">주소</label>
                                                                        <input type="text" class="c-input" id="inputVeiwChkConfirm06_06" value="서울특별시 종로구 123123123" readonly="readonly" />
                                                                    </div>
                                                                </div>

                                                                <div class="row input-view">
                                                                    <div class="col label-input">
                                                                        <label for="inputVeiwChkConfirm06_07">검진 결과 수신 방법</label>
                                                                        <input type="text" class="c-input" id="inputVeiwChkConfirm06_07" value="우편으로 수신" readonly="readonly" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- // left-wrap -->
                                        <!-- right-wrap -->
                                        <div class="col right-wrap">
                                            <div class="c-inner">
                                                <div class="co-article">
                                                    <h2 class="skip">추가금 합계</h2>
                                                    <div class="co-cont-article type01">
                                                        <div class="surcharges-sum-wrap">
                                                            <div class="c-input-list-basic input-cont">
                                                                <div class="row">
                                                                    <div class="col label-input">
                                                                        <label for="inputSurcharges01" class="sub-title">검진상품 추가금</label>
                                                                        <div class="c-input-unit">
                                                                            <input type="text" class="c-input" id="inputSurcharges01" value="${productPrice}" readonly="readonly" />
                                                                            <span class="unit">원</span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col label-input">
                                                                        <p class="sub-title">선택검사 추가금</p>
                                                                        <c:forEach items="${groupNum}" var="list" varStatus="status">
	                                                                        <div class="in-input-row">
	                                                                            <div class="c-input-unit-field" id="${status.index}">
	                                                                                <label for="inputSurcharges02_01" class="c-label-txt">선택검사 ${status.index+1}</label>
	                                                                                <div class="c-input-unit">
	                                                                                    <input type="text" class="c-input" name="choicePrice" value="" readonly="readonly" />
	                                                                                    <span class="unit">원</span>
	                                                                                </div>
	                                                                            </div>
	                                                                        </div>
                                                                        </c:forEach>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col label-input">
                                                                        <label for="inputSurcharges03" class="sub-title">추가검사 추가금</label>
                                                                        <div class="c-input-unit">
                                                                            <input type="text" class="c-input" id="inputSurcharges03" value="0" readonly="readonly" />
                                                                            <span class="unit">원</span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col label-input">
                                                                        <label for="inputSurcharges04" class="sub-title">개인 추가금 합계</label>
                                                                        <div class="c-input-unit">
                                                                            <input type="text" class="c-input" id="inputSurcharges04" value="0" readonly="readonly" />
                                                                            <span class="unit">원</span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col label-input">
                                                                        <label for="inputSurcharges05" class="sub-title">결제 수납</label>
                                                                        <input type="text" class="c-input sub-title is-blue-1" id="inputSurcharges05" value="${settle}" readonly="readonly" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="resevation-btmbar-wrap">
                                <div class="resevation-btm-bar type01">
                                    <div class="buttons">
                                        <div class="left">
                                            <a onclick="goCheckupDay()" class="co-btn btn-reservation-prev is-active"><span>이전</span></a>
                                        </div>
                                        <div class="right">
                                            <a onclick="goReservComplete()" class="co-btn bg-navy-1"><span>예약 신청하기</span></a>
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

        

    <script>
        $(window).on('load resize', function() {
            reservationSideBarFloating();
        });
        $(window).on('load resize scroll', function() {
            reservationBtmBarFixed();
        });
        
        $(document).ready(function(){
        	let testItemCount = JSON.parse(localStorage.getItem('testItemCount')).name;
        	let chked = JSON.parse(localStorage.getItem('chked')).name;
        	let rsvHopeDate01 = JSON.parse(localStorage.getItem('rsvHopeDate01')).name;
        	let rsvHopeDate02 = JSON.parse(localStorage.getItem('rsvHopeDate02')).name;
        	let rsvHopeTime01 = JSON.parse(localStorage.getItem('rsvHopeTime01')).name;
        	let rsvHopeTime02 = JSON.parse(localStorage.getItem('rsvHopeTime02')).name;
        	let rosterInfo = JSON.parse(localStorage.getItem('rosterInfo') || 'null');
        	let totalPrice = Number($('#inputSurcharges01').val());
        	let testItemCd = "";
        	let addPrice = 0;
        	let count = 0;
        	
        	for(let i =0; i<testItemCount; i++){			//선택검사 루프 돌려서 타이틀에 있는 금액 합 i번째에 넣기
        		testItemCd = JSON.parse(localStorage.getItem('testItemCd'+i)).name;
        		$('.col-4').each(function(){
        			if($(this).attr('id') == testItemCd){
        				$(this).show();
        			}
        		});
        	}
        	
        	$('.confirm-chk-card.1').each(function(idx){	//선택검사 그룹별 가격 구하기
        		let testPrice = 0;
        		$(this).find('.col-4').each(function(){
        			if($(this).css('display')!= 'none'){
        				testPrice += Number($(this).attr('title'));
        			}
        		});
        																			
        		$('.c-input-unit-field').each(function(){	//선택검사 그룹별 가격 넣기
        			if(idx == $(this).attr('id')){
        				$(this).find("input[name=choicePrice]").val(testPrice);
        				// 선택검사 추가금 필요시 삭제
        				$(this).find("input[name=choicePrice]").val('0');	//**************일단 선택검사 가격 0원 수면비 같은거 추가시 생김
        				// 선택검사 추가금 필요시 삭제
        			}
        		});
				totalPrice += testPrice;
        	});
        	for(let i =0; i<chked; i++){					//추가검사 선택 값
        		testItemCd = JSON.parse(localStorage.getItem('addItemCd'+i)).name;
        		testItemCd += '+2';
        		$('.col-4').each(function(){
        			if($(this).attr('id') == testItemCd){
        				$(this).show();
        				$(this).closest('.confirm-chk-card').show();
        				count ++;
        			}
        		});
        	}
        	
        	if(count == 0){
        		let addTag = document.getElementById('addTag');
        		let ptag = document.createElement('p');
        		ptag.setAttribute('class', 'is-gray-3');
        		ptag.innerHTML = '추가검사 없음';
        		addTag.appendChild(ptag);
        	}
        	
        	$('.confirm-chk-card.2').each(function(){	//추가검사 가격 합
        		$(this).find('.col-4').each(function(){
        			if($(this).css('display')!= 'none'){
        				addPrice += Number($(this).attr('title'));
        			}
        		});
        	});
    		totalPrice += addPrice;
    		//선택검사 추가금 나오면 생성
    		//$('#inputSurcharges04').val(totalPrice);	선택검사 + 추가검사 합 
    		$('#inputSurcharges04').val(addPrice);
    		$('#inputSurcharges03').val(addPrice);
        	$('#inputVeiwChkConfirm02_01').val(rsvHopeDate01);
        	$('#inputVeiwChkConfirm02_02').val(rsvHopeTime01);
        	$('#inputVeiwChkConfirm03_01').val(rsvHopeDate02);
        	$('#inputVeiwChkConfirm03_02').val(rsvHopeTime02);
        	
        	if(rosterInfo != null){
        		$('#inputVeiwChkConfirm06_01').val(rosterInfo.name.rosterName);
        		$('#inputVeiwChkConfirm06_02').val(rosterInfo.name.birthday);
        		$('#inputVeiwChkConfirm06_03').val(rosterInfo.name.genderCd);
        		$('#inputVeiwChkConfirm06_04').val(rosterInfo.name.mobileNum);
        		$('#inputVeiwChkConfirm06_05').val(rosterInfo.name.email);
        		$('#inputVeiwChkConfirm06_06').val(rosterInfo.name.addrDetail);
        		$('#inputVeiwChkConfirm06_07').val(rosterInfo.name.resultReceive);
        	}
        });
        
        function goCheckupDay(){
        	let rosterNum = JSON.parse(localStorage.getItem('chekupRosterNo')).name;
        	location.href = "checkupinfolist?rosterNum="+rosterNum;
        	
        }
        
        function goReservComplete(){
        	let itemNum = JSON.parse(localStorage.getItem('itemNum')).name;
        	let chekupRosterNo	= JSON.parse(localStorage.getItem('chekupRosterNo')).name;
   	     	let partnerCsenterId = JSON.parse(localStorage.getItem('svPartnerCenterId')).name;
			let allPrice = $('#inputSurcharges04').val();
			let rsvHopeDate01 = JSON.parse(localStorage.getItem('rsvHopeDate01')).name;
			let rsvHopeDate02 = JSON.parse(localStorage.getItem('rsvHopeDate02')).name;
			let rosterInfo = JSON.parse(localStorage.getItem('rosterInfo')).name;
			let checkupRequest = rosterInfo.checkupRequest;
			let resultReceive = rosterInfo.resultReceive;
			let testItemCount = JSON.parse(localStorage.getItem('testItemCount')).name;
			let testItemCd = new Array();
			let chked = JSON.parse(localStorage.getItem('chked')).name;
			let addItemCd = new Array();
			
			for(let i =0; i<testItemCount; i++){
				testItemCd.push(JSON.parse(localStorage.getItem('testItemCd'+i)).name);
			}

			for(let i=0; i<chked; i++){
				addItemCd.push(JSON.parse(localStorage.getItem('addItemCd'+i)).name);
			}

			$.ajax({	//예약생성
        		url:"chekupreserv/reservcomplete",
        		type:"post",
        		data:{"itemNum":itemNum, "chekupRosterNo":chekupRosterNo, "partnerCsenterId":partnerCsenterId,
        			"allPrice":allPrice, "rsvHopeDate01":rsvHopeDate01, "rsvHopeDate02":rsvHopeDate02,
        			"checkupRequest":checkupRequest, "resultReceive":resultReceive, "testItemCount":testItemCount,
        			"testItemCd":testItemCd, "chked":chked, "addItemCd":addItemCd},
        		success:function(){
        			location.href = "reservcomplete";
        		},
        		error:function(){
        			alert("error");
        		}
        	})	
        }
        
        function goPage(page){
        	let crn	= JSON.parse(localStorage.getItem('chekupRosterNo')).name;
        	let itemNum = JSON.parse(localStorage.getItem('itemNum')).name;
   	     	let svPartnerCenterId = JSON.parse(localStorage.getItem('svPartnerCenterId')).name;

        	if(page == "checkupdaylist"){
        		location.href = "checkupdaylist";
        	}else if(page == "partnerhospital"){
        		location.href = "partnerhospital?saveChekupRosterNo=" + crn;
        	}else if(page == "rosterchoice"){
        		location.href ="rosterchoice";
        	}else if(page == "choicecheckup"){
          		location.href = "choicecheckup?checkupProductNo=" + itemNum +"&partnerCenterId=" +svPartnerCenterId;
        	}else if(page == "addtest"){
        		location.href = "addtest?checkupProductNo="+itemNum+"&partnerCenterId="+svPartnerCenterId;
        	}else if(page == "checkupinfolist"){
        		location.href = "checkupinfolist?rosterNum="+crn;
        	}
        }
    </script>
</body>

</html>