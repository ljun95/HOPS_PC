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

            <div class="contents-wrap health-add-select-examination-wrap">
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
                                                <a onclick="goPage('rosterchoice')">
                                                    <p class="rsv-title">01. 대상자 선택</p>
                                                    <p class="rsv-data">대상자 선택</p>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="is-end">
                                            <div class="rsv-step">
                                                <a onclick="goPage('partnerhospital')">
                                                    <p class="rsv-title">02. 검진기관 및 검진항목</p>
                                                    <p class="rsv-data">검진기관 및 검진항목</p>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="is-end">
                                            <div class="rsv-step">
                                                <a onclick="goPage('choicecheckup')">
                                                    <p class="rsv-title">03. 선택검사</p>
                                                    <p class="rsv-data">선택검사</p>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="is-now">
                                            <div class="rsv-step">
                                                <p class="rsv-title" >04. 추가검사</p>
                                                <p class="rsv-data">추가검사</p>
                                            </div>
                                        </li>
                                        <li class="is-end">
                                            <div class="rsv-step" onclick="goPage('checkupdaylist')">
                                                <p class="rsv-title">05. 검진일자</p>
                                                <p class="rsv-data">검진일자</p>
                                            </div>
                                        </li>
                                        <li class="is-end">
                                            <div class="rsv-step" onclick="goPage2('checkupinfolist')">
                                                <p class="rsv-title">06. 검진자 정보 입력</p>
                                                <p class="rsv-data">검진자 정보 입력</p>
                                            </div>
                                        </li>
                                        <li class="is-end">
                                            <div class="rsv-step" onclick="goPage2('finalcorfirm')">
                                                <p class="rsv-title">07. 최종 확인</p>
                                                <p class="rsv-data">최종 확인</p>
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
                                    <h1 class="title">추가검사</h1>
                                </div>
                            </div>
                            <!-- [Comment] 
									- 선택 옵션에 따라 input 요소 checkbox/radio 사용 
								-->
                            <div class="co-cont-section">
                                <div class="select-add-chkup-list-wrap">
                                    <div class="co-subcont-field">
                                        <p class="co-ref-txt is-gray-1">원하시는 추가항목을 선택하여 주시기 바랍니다.</p>
                                    </div>
                                    <div class="add-healthexam-item-list-wrap">
                                        <c:forEach items="${groupList}" var="list" varStatus="status">
	                                        <div class="healthexam-item-field" hidden="">                 
	                                            <div class="title-field">
	                                                <div class="left">
	                                                    <p class="title">추가검사${status.index+1}</p>
	                                                </div>
	                                                <div class="right"></div>
	                                            </div>               
	                                            <ul class="healthexam-item-list">
	                                            	<c:forEach items="${testItemList}" var="tilist" varStatus="status">
	                                                	<c:if test="${tilist.choiceGroupNo eq list.count}">
			                                                <li id="${tilist.testItemCd}">
			                                                    <div class="healthexam-item-card" id="${tilist.testItemCd}">
			                                                        <div class="in-row type01">
			                                                            <div class="col-6 category">
			                                                                <div class="c-chkbox type02">
			                                                                    <input type="checkbox" class="chked" id="${tilist.testItemName}" name="chked" value="${tilist.testItemCd}"/>
			                                                                    <label for="${tilist.testItemName}" class="chk-label"><i></i><span>${tilist.testItemName}</span></label>
			                                                                </div>
			                                                                <button type="button" class="chkup-info-detail">
			                                                                    <span><i class="ico-type01 t-i-help01-02"><span>설명 자세히 보기</span></i></span>
			                                                                </button>
			                                                            </div>
			                                                            <div class="col-3">
			                                                                <div class="per-surcharges">개인 추가금<em>${tilist.addTestPrice}</em>원</div>
			                                                            </div>
			                                                            <div class="col-3">
			                                                                <div class="date-box">
			                                                                    <p class="date-confirm">빠른예약일<em class="date">2021.03.25</em>이후</p>
			                                                                </div>
			                                                            </div>
			                                                        </div>
			                                                    </div>
			                                                </li>
	                                                	</c:if>
	                                                </c:forEach>
	                                            </ul>
	                                        </div>
                                        </c:forEach>    
                                    </div>
                                </div>
                            </div>
                            <div class="resevation-btmbar-wrap">
                                <div class="resevation-btm-bar type01">
                                    <div class="buttons">
                                        <div class="left">
                                            <a onclick="goPage('choicecheckup')" class="co-btn btn-reservation-prev is-active"><span>이전</span></a>
                                        </div>
                                        <div class="right">
                                            <a onclick="goPage('checkupdaylist')" class="co-btn btn-reservation-next"><span>다음</span></a>
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
        checkupCtgInputChk();

        $(window).on('load resize', function() {
            reservationSideBarFloating();
        });

        $(window).on('load resize scroll', function() {
            reservationBtmBarFixed();
        });
        
        function goChoicecheckup(){
        	let itemNum = JSON.parse(localStorage.getItem('itemNum')).name;
   	     	let itemName = JSON.parse(localStorage.getItem('itemName')).name;
   	     	let svPartnerCenterId = JSON.parse(localStorage.getItem('svPartnerCenterId')).name;
   		 	location.href = "choicecheckup?checkupProductNo=" + itemNum +"&partnerCenterId=" +svPartnerCenterId;
        } 
        
        $(document).ready(function(){
        	//선택검사 페이지에서 체크한 값 추가검사 페이지에서 안보이게
        	let testItemCount = JSON.parse(localStorage.getItem('testItemCount')).name;	// 선택검사 체크 수
        	let testOn = "";	//선택검사 체크 단일
        	let addItemCd = "";
        	for(let i=0; i<testItemCount; i++){	//선택검사 체크 값 상품이름 생성
        		testOn = JSON.parse(localStorage.getItem('testItemCd'+i)).name; 		
        		$(".healthexam-item-card").each(function(){	//선택검사 페이지에서 체크한 값 숨기기
        			if($(this).attr('id') == testOn){
        				$(this).attr('id', 'hide');	
        				$(this).hide();
        			}        			
        		});
        	};
        	//선택검사 체크값만 있는게 아닐경우 보여주기
        	$(".healthexam-item-field").each(function(){
        		$(this).find('.healthexam-item-card').each(function(){
        			if( $(this).attr('id') != 'hide'){		
        				$(this).closest('.healthexam-item-field').show();
        			}
        		})
        	});
        	
        	let chked = JSON.parse(localStorage.getItem('chked') || 'null');
        	if(chked != null){
        		for(let i =0; i<chked.name; i++){
            		addItemCd = JSON.parse(localStorage.getItem('addItemCd'+i)).name;
            		$(".chked").each(function(){
            			if($(this).attr('value') == addItemCd){
            				$(this).prop('checked',true);
            			}
            		}) 
            	}	
        	}
        });
        
        //검진일자 페이지 이동 
        function goPage(page){
        	let chkArray = new Array();	//체크한거 모음
        	let svArray = new Array();
        	let chked = $('input:checkbox[name=chked]:checked').length;
        	let addItemCd = "";
        	let itemNum = JSON.parse(localStorage.getItem('itemNum')).name;
   	     	let itemName = JSON.parse(localStorage.getItem('itemName')).name;
   	     	let svPartnerCenterId = JSON.parse(localStorage.getItem('svPartnerCenterId')).name;
        	let crn	= JSON.parse(localStorage.getItem('chekupRosterNo')).name;
        	let svChked = JSON.parse(localStorage.getItem('chked') || 'null');
        	
        	localStorage.setItem('chked', JSON.stringify({name:chked}));	//추가검사 checked전체 값 저장
        	localStorage.setItem('addItemCd+i', JSON.stringify({name: chked}));
        	
        	if(svChked != null){
        		for(let i = 0; i<svChked.name; i++){
        			svArray.push(JSON.parse(localStorage.getItem('addItemCd'+i)).name);
        		}
        	}
        	
        	$('input:checkbox[name=chked]:checked').each(function(){
        		chkArray.push(this.value);	// A00028,A00029   alert(chkArray[0]);
        	});
        	
        	if(svArray.toString() != chkArray.toString()){
        		localStorage.removeItem("rsvHopeDate01");
        		localStorage.removeItem("rsvHopeDate02");
        		localStorage.removeItem("rsvHopeTime01");
        		localStorage.removeItem("rsvHopeTime02");
        	}
        	
        	for(let i=0; i<chked; i++){
        		addItemCd = chkArray[i];
        		localStorage.setItem('addItemCd'+i, JSON.stringify({name:addItemCd}));
        	}
        	//필요한데이터 가지고 넘어가기
        	if(page == "checkupdaylist"){
        		location.href = "checkupdaylist";
        	}else if(page == "partnerhospital"){
        		location.href = "partnerhospital?saveChekupRosterNo=" + crn;
        	}else if(page == "rosterchoice"){
        		location.href ="rosterchoice";
        	}else if(page == "choicecheckup"){
          		 location.href = "choicecheckup?checkupProductNo=" + itemNum +"&partnerCenterId=" +svPartnerCenterId;
        	}
        }
        
        function goPage2(page){
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
     		let svArray = new Array();
        	let inItemNum = $('.institution-detail-card.on').attr('title');	
        	let addItemCd = "";
        	let chkArray = new Array();	
        	let svChked = JSON.parse(localStorage.getItem('chked') || 'null');
        	
        	if(svChked != null){
        		for(let i = 0; i<svChked.name; i++){
        			svArray.push(JSON.parse(localStorage.getItem('addItemCd'+i)).name);
        		}
        	}
        	
        	$('input:checkbox[name=chked]:checked').each(function(){
        		chkArray.push(this.value);
        	});
        	
        	if(chked != null && svArray.toString() == chkArray.toString()){
    	        	if(page == "finalcorfirm"){
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