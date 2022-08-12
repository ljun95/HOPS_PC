<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
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
    <jsp:include page="../common/sidebar.jsp" />

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
                                <em class="top-title">대상자 선택</em><input type="text" id="num" name="num" hidden="">
                                <div class="reservation-step-field">
                                    <!-- [comment] 
											- side list 상태별 스타일 제어 class
											- is-now : 현재 단계
											- is-end : 완료
										-->
									
                                    <ul class="reservation-step-list">
                                        <li class="is-now" id="goCheckupRosterLi">
                                            <div class="rsv-step">
                                                <p class="rsv-title" id="goCheckupRoster" onclick="goCheckupRoster()">01. 대상자 선택</p>
                                            	<p class="rsv-data">대상자 선택</p>
                                            </div>
                                        </li>
                                        <li class="is-end" id="goPartnerCenterLi">
                                            <div class="rsv-step">
                                           		<a href="javascript:;" onclick="goPagePh()">
                                                	<p class="rsv-title" id="goPartnerCenter" onclick="goPartnerCenter()">02. 검진기관 및 검진항목</p>
                                                	<p class="rsv-data">검진기관 및 검진항목</p>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="is-end" id="goCoiceTestLi">
                                            <div class="rsv-step">
                                            	<a href="javascript:;" onclick="goPage('choicecheckup')">
                                                	<p class="rsv-title" id="goCoiceTest" >03. 선택검사</p>
                                                	<p class="rsv-data">선택검사</p>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="is-end" id="goAddTestLi">
                                            <div class="rsv-step">
                                            	<a href="javascript:;" onclick="goPage('addtest')">
                                                	<p class="rsv-title" id="goAddTest">04. 추가검사</p>
                                                	<p class="rsv-data">추가검사</p>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="is-end" id="goCheckupDayLi">
                                            <div class="rsv-step">
                                            	<a href="javascript:;" onclick="goPage('checkupdaylist')">
                                                	<p class="rsv-title" id="goCheckupDay">05. 검진일자</p>
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
                                        <li class="is-end">
                                            <div class="rsv-step">
                                            	<a href="javascript:;" onclick="goPage('finalcorfirm')">
                                                	<p class="rsv-title">07. 최종 확인</p>
                                                	<p class="rsv-data">최종 확인</p>
                                                </a>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="contents-area reserve-contents-area" id="ckRosterPage">
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
                                            <a href="javascript:;" onclick="showModal()" data-toggle="modal" data-target="#popupAddExamFamily01">
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
                                        <c:if test="${count ne 0}">
                                        <c:if test="${empty list}">
                                        <li class="card-list">
                                            <div class="client-card">
                                                <div class="none-data">
                                                    <div class="img"><img src="/resources/images/logo/kmi/kmi_06.svg" alt="" /></div>
                                                    <p class="co-none-txt">검진 대상자가 없습니다.</p>
                                                </div>
                                            </div>
                                        </li>
                                        </c:if>
                                        <c:forEach items="${list}" var="list">
                                        <li class="card-list on">
                                            <a href="javascript:;">
                                               <%--  <div class="client-card person" id="${list.chekupRosterNo}" onclick="saveData()"> --%>
                                                <div class="client-card person" id="${list.chekupRosterNo}">
                                                	<input type="hidden" id="policyYear" name="policyYear" value="${list.policyYear}">
            										<input type="hidden" id="customerId" name="customerId" value="${list.customerId}">
                                                    <div class="inner">
                                                        <p class="relationship">${list.employRelationType}</p>
                                                        <div class="client-info" id="qwe">
                                                            <em class="name">${list.rosterName}</em>
                                                            <p class="reg-number">${list.birthday}-*******</p>
                                                            
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
                                        </c:forEach>
                                        </c:if>                        
                                    </ul>
                                </div>
                            </div>
                            <div class="resevation-btmbar-wrap">
                                <div class="resevation-btm-bar type01">
                                    <div class="buttons">
                                        <div class="left">
                                            <a href="choiceCheckup" class="co-btn btn-reservation-prev"><span>이전</span></a>
                                        </div>
                                        <div class="right">
                                            <a onclick="goPagePh()" class="co-btn btn-reservation-next"><span>다음</span></a>
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
           <jsp:include page="/WEB-INF/views/checkupreserv/modal/rosteraddmodal.jsp" />
           <jsp:include page="/WEB-INF/views/common/footer.jsp" />
        

    <script>
        clientActiveCard();
        
        $(document).ready(function(){
        	let crn	= JSON.parse(localStorage.getItem('chekupRosterNo') || 'null');
        	
        	if(crn != null){
        		$("#"+crn.name).addClass("on");
        	}
        	
        });
        
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
        
        function goPagePh(){
			let chekupRosterNo = $('.person.on').attr('id');
			let policyYear = $('#policyYear').attr('value');
			let customerId = $('#customerId').attr('value');
			let crn	= JSON.parse(localStorage.getItem('chekupRosterNo' || 'null'));
			let testItemCount = JSON.parse(localStorage.getItem('testItemCount' || 'null'));
			if(chekupRosterNo == null){
				alert("검진자를 선택해주세요.");
				return false;
			}
			if(crn == null || chekupRosterNo == crn.name){
				localStorage.setItem('chekupRosterNo', JSON.stringify({name: chekupRosterNo}));
				localStorage.setItem('policyYear', JSON.stringify({name: policyYear}));
				localStorage.setItem('customerId', JSON.stringify({name: customerId}));
				location.href = "partnerhospital?saveChekupRosterNo=" + chekupRosterNo;
			}else{
				let saveData = JSON.parse(localStorage.getItem('itemNum' || 'null'));
				if(saveData != null){
					localStorage.removeItem("rosterInfo");
					localStorage.removeItem("itemNum");
					localStorage.removeItem("itemName");
					localStorage.removeItem("svPartnerCenterId");
					localStorage.removeItem("svIndex");
					localStorage.setItem('policyYear', JSON.stringify({name: policyYear}));
					localStorage.setItem('customerId', JSON.stringify({name: customerId}));
					localStorage.setItem('chekupRosterNo', JSON.stringify({name: chekupRosterNo}));
					if(testItemCount != null){
						for(let i =0; i<testItemCount.name; i++){
							localStorage.removeItem("testItemCd"+i);
						}
						localStorage.removeItem("testItemCount");
					}
					location.href = "partnerhospital?saveChekupRosterNo=" + chekupRosterNo;
				}else{
					localStorage.removeItem("rosterInfo");
					localStorage.setItem('policyYear', JSON.stringify({name: policyYear}));
					localStorage.setItem('customerId', JSON.stringify({name: customerId}));
					localStorage.setItem('chekupRosterNo', JSON.stringify({name: chekupRosterNo}));
					location.href = "partnerhospital?saveChekupRosterNo=" + chekupRosterNo;
				}				
			}
        }
                
        function showModal(){	
        	$('.c-layer-popup.type03').addClass('show');	
        }
        
        function addRoster(){		//검진 대상자 추가
        	let employCheckupRoster	= $("#employCheckupRoster").val();
        	let rosterName = $("#rosterName").val();			
        	let genderCd = $("#genderCd").val();
        	let birthday = $("#birthday").val();
        	let domesticYn = $("#domesticYn").val();
        	let nationality = $("#nationality").val();
        	let phoneNum1 = $("#phoneNum1").val();
        	let phoneNum2 = $("#phoneNum2").val();
        	let phoneNum3 = $("#phoneNum3").val();
        	let privacyAgreeYn = $('#termsChk_01_01').is(':checked');	//jsp에서 체크 안해주면 못넘어 가도록
        	let phoneNum = phoneNum1 + phoneNum2 + phoneNum3;
			if(employCheckupRoster == ""){
				alert("임직원과의 관계를 설정해주세요.");
				$("#employCheckupRoster").focus();
				return false;
			}else if(rosterName == ""){
				alert("이름을 입력해주세요.");
				$("#rosterName").focus();
				return false;
			}else if(genderCd ==""){
				alert("성별을 입력해주세요.");
				$("#genderCd").focus();
				return false;
			}else if(birthday ==""){
				alert("생년월일을 입력해주세요.");
				$("#birthday").focus();
				return false;
			}else if(domesticYn ==""){
				alert("내국인/외국인 설정해주세요.");
				$("#domesticYn").focus();
				return false;
			}else if(domesticYn == '1'){
				if(nationality == ""){
					alert("국적을 입력해주세요.");
					$("#nationality").focus();
					return false;
				}
			}else if(phoneNum2 == "" || phoneNum3 == ""){
				alert("휴대폰 번호를 입력해주세요.");
				$("#phoneNum2").focus();
				return false;
			}else if(privacyAgreeYn == false){
				alert("개인정보 처리방침을 동의해주세요.");
				$("#privacyAgreeYn").focus();
				return false;
			}
        	$.ajax({
        		url:"chekupreserv/addroster",
        		type:"post",
        		data:{"employCheckupRoster":employCheckupRoster, "rosterName":rosterName,"genderCd":genderCd,
        				"birthday":birthday,"domesticYn":domesticYn,"nationality":nationality,"phoneNum":phoneNum},
        		success:function(){
        			location.reload(true);
      				window.opener.location.reload();
        		},
        		error:function(){
        			alert("error");
        		}
        	});
        }
        
        
        
        function goPage(page){
        	let crn	= JSON.parse(localStorage.getItem('chekupRosterNo'|| 'null'));
        	let itemNum = JSON.parse(localStorage.getItem('itemNum'|| 'null'));
   	     	let svPartnerCenterId = JSON.parse(localStorage.getItem('svPartnerCenterId'|| 'null'));
    		let testItemSu = JSON.parse(localStorage.getItem('testItemSu'|| 'null'));
    		let testItemCount = JSON.parse(localStorage.getItem('testItemCount'|| 'null'));
    		let chked = JSON.parse(localStorage.getItem('chked'|| 'null'));
    		let rsvHopeDate01 = JSON.parse(localStorage.getItem('rsvHopeDate01'|| 'null'));
    		let rsvHopeDate02 = JSON.parse(localStorage.getItem('rsvHopeDate02'|| 'null'));
    		let rsvHopeTime01 = JSON.parse(localStorage.getItem('rsvHopeTime01'|| 'null'));
    		let rsvHopeTime02 = JSON.parse(localStorage.getItem('rsvHopeTime02'|| 'null'));
    		let rosterInfo = JSON.parse(localStorage.getItem('rosterInfo'|| 'null'));
			let chekupRosterNo = $('.person.on').attr('id');
			if(crn != null && crn.name == chekupRosterNo){
	        	if(page == "checkupdaylist"){
	        		if(chked != null && testItemSu != null && testItemCount != null &&(testItemSu.name == testItemCount.name)){
		        		location.href = "checkupdaylist";
	        		}else{
	        			alert("이전 페이지부터 입력해주세요.");
	        		}
	        		
	        	}else if(page == "partnerhospital"){
	        		location.href = "partnerhospital?saveChekupRosterNo=" + crn.name;
	        		
	        	}else if(page == "rosterchoice"){
	        		location.href ="rosterchoice";
	        		
	        	}else if(page == "choicecheckup"){
	        		if(itemNum != null){
	        			if(itemNum.name != undefined){
			          		location.href = "choicecheckup?checkupProductNo=" + itemNum.name +"&partnerCenterId=" +svPartnerCenterId.name;
	        			}else{
		        			alert("이전 페이지부터 입력해주세요.");
	        			}
	        		}else{
	        			alert("이전 페이지부터 입력해주세요.");
	        		}
	        		
	        	}else if(page == "addtest"){
	        		if(testItemSu != null){
	        			if(testItemSu != null && testItemCount != null && testItemSu.name == testItemCount.name){
		    	        		location.href = "addtest?checkupProductNo="+itemNum.name+"&partnerCenterId="+svPartnerCenterId.name;
		        		}else{
		        			alert("이전 페이지부터 입력해주세요.");
	        			}
	        		}else{
	        			alert("이전 페이지부터 입력해주세요.");
	        		}
	        		
	        	}else if(page == "finalcorfirm"){
	        		if(rosterInfo != null && rsvHopeDate01 != null && rsvHopeDate02 != null && rsvHopeTime01 != null && rsvHopeTime02 != null && (itemNum != null || itemNum.name != '')){
		        		if(rsvHopeDate01.name != '' && rsvHopeDate02.name != '' && rsvHopeTime01.name != '' && rsvHopeTime02.name != ''
		        				&& rosterInfo.name.addr != '' && rosterInfo.name.addrDetail != '' && rosterInfo.name.addrNum != '' && rosterInfo.name.mobileNum != ''
		        				&& rosterInfo.name.chk1 != '' && rosterInfo.name.chk2 != '' && rosterInfo.name.chk3 != ''
		        				&& rosterInfo.name.chk4 != '' && rosterInfo.name.email != '' && rosterInfo.name.resultReceive != ''){
			            	location.href="finalconfirmlist?svpartnercenterid="+svPartnerCenterId.name +"&itemnum="+itemNum.name +"&chekuprosterno="+crn.name;
		        		}else{
		        			alert("이전 페이지부터 입력해주세요.");
		        		}
	        		}else{
	        			alert("이전 페이지부터 입력해주세요.");
	        		}
	        	
	        	}else if(page == "checkupinfolist"){
	        		if(rsvHopeDate01 != null && rsvHopeDate02 != null && rsvHopeTime01 != null && rsvHopeTime02 != null && (itemNum != null || itemNum.name != undefined)){
		        		if(rsvHopeDate01.name != '' && rsvHopeDate02.name != '' && rsvHopeTime01.name != '' && rsvHopeTime02.name != ''){
		        			location.href = "checkupinfolist?rosterNum="+crn.name;
		        		}else{
		        			alert("이전 페이지부터 입력해주세요.");
		        		}
	        		}else{
	        			alert("이전 페이지부터 입력해주세요.");
	        		}
        		}
			}else{
				alert('페이지 순서대로 입력해주세요.');
			}
        }
        
        

    </script>
</body>

</html>