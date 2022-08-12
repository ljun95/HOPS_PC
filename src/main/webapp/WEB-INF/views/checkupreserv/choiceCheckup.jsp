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

    <jsp:include page="../common/sidebar.jsp" />
            <!-- Header-->
            <jsp:include page="../common/header.jsp" />	
            <!-- // Header-->

            <div class="contents-wrap health-select-examination-wrap">
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
                                                    <p class="rsv-data">01. 대상자 선택</p>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="is-end">
                                            <div class="rsv-step">
                                                <a href="javascript:;" onclick="goPage('partnerCenter')">
                                                    <p class="rsv-title">02. 검진기관 및 검진항목</p>
                                                    <p class="rsv-data">검진기관 및 검진항목</p>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="is-now">
                                            <div class="rsv-step">
                                                <p class="rsv-title">03. 선택검사</p>
                                                <p class="rsv-data">선택검사</p>
                                            </div>
                                        </li>
                                        <li class="is-end">
                                            <div class="rsv-step" onclick="goAddTest()">
                                                <p class="rsv-title">04. 추가검사</p>
                                                <p class="rsv-data">추가검사</p>
                                            </div>
                                        </li>
                                        <li class="is-end">
                                            <div class="rsv-step" onclick="goPage2('checkupdaylist')">
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
                                    <h1 class="title">선택검사</h1>
                                </div>
                            </div>
                            <!-- [Comment] 
									- 선택 옵션에 따라 input 요소 checkbox/radio 사용 
								-->
                            <div class="co-cont-section">
                                <div class="select-chkup-list-wrap">
                                    <ul class="co-accrodion-list medical-chkup-list">
                                 	<c:forEach items="${groupNum}" var="list" varStatus="status">
                                         <li>
                                            <div class="co-accordion chkup-ctg-accordion" id=${list.count}>
                                                <div class="btn-accrodion">
                                                    <div class="left">
                                                        <div class="inner">
                                                            <div class="info-title-field">
                                                                <p class="txt">선택검사 ${status.index+1}</p>
                                                                <p class="sub-txt"><em class="num" id='${list.choiceCount}'>${list.choiceCount}</em>개의 검사항목을 선택하여 주시기바랍니다.</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="right">
                                                        <div class="inner">
                                                            <div class="cnt">(<span class="current-cnt" id="currentCnt${status.index+1}">0</span>/<span class="total-cnt">${list.choiceCount}</span>)</div>
                                                            <button class="btn-ckupctg-accordion ico-accordion"><span class="is-blind">펼치기</span></button>
                                                        </div>
                                                    </div>
                                                 	</div>
                                                    <div class="accrodion-panel ">
                                                    <div class="panel-cont">
                                                        <div class="healthexam-item-field">
                                                            <div class="title-field">
                                                                <div class="left">
                                                                    <p class="title">미정(분류)</p>
                                                                </div>
                                                                <div class="right"></div>
                                                            </div>
                                                            <ul class="healthexam-item-list">
                                                    		<c:forEach items="${productList}" var="pdlist" varStatus="status">
                                                    			<c:if test="${pdlist.choiceGroupNo eq list.count}">
                                                    				<li>
                                                                    <div class="healthexam-item-card" id="${pdlist.testItemCd}" name='${list.choiceCount}'>
                                                                        <div class="in-row type01">
                                                                            <div class="col-6 category">
                                                                                <div class="c-chkbox type02">
                                                                                    <input type="checkbox" class="chk" id="${pdlist.testItemName}" onclick="chkChk('${pdlist.testItemCd}', this)" name="${pdlist.testItemCd}"/>
                                                                                    <label for="${pdlist.testItemName}" class="chk-label"><i></i><span>${pdlist.testItemName}</span></label>
                                                                                </div>
                                                                                <button type="button" class="chkup-info-detail">
                                                                                    <span><i class="ico-type01 t-i-help01-02"><span>설명 자세히 보기</span></i></span>
                                                                                </button>
                                                                            </div>
                                                                            <div class="col-3">
                                                                            	<!-- 나중에 수면비 같은거 추가되면 개인추가금 생김 -->
                                                                                <%-- <div class="per-surcharges">개인 추가금<em>${pdlist.standardPrice}</em>원</div> --%>
                                                                                <div class="per-surcharges">개인 추가금<em>0</em>원</div>
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
                                                    </div>
                                                </div>
                                            
                                          </div>
                                        </li>
                                    </c:forEach>
                                    </ul>
                                </div>
                            </div>
                            <div class="resevation-btmbar-wrap">
                                <div class="resevation-btm-bar type01">
                                    <div class="buttons">
                                        <div class="left">
                                            <a href="javascript:;" onclick="goPage('partnerCenter')" class="co-btn btn-reservation-prev is-active"><span>이전</span></a>
                                        </div>
                                        <div class="right">

                                            <a href="javascript:goAddTest();" class="co-btn btn-reservation-next"><span>다음</span></a>
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
        ckupctgToggleAccordion();	
        checkupCtgInputChk();
        checkupInputCntControl();
        
        $(window).on('load resize', function() {
            reservationSideBarFloating();
        });
        $(window).on('load resize scroll', function() {
            reservationBtmBarFixed();
        });
        
    	let crn	= JSON.parse(localStorage.getItem('chekupRosterNo')).name;
    	let itemNum = JSON.parse(localStorage.getItem('itemNum')).name;
    	let itemName = JSON.parse(localStorage.getItem('itemName')).name;
    	let svPartnerCenterId = JSON.parse(localStorage.getItem('svPartnerCenterId')).name;
        
        //체크한 선택검사 로컬스토리지에 저장
        function saveData(){
        	let testItemCd = "";
        	let testItemCount = JSON.parse(localStorage.getItem('testItemCount') || 'null'); 
        	if(testItemCount != null){
        		localStorage.removeItem("testItemCount");
        		localStorage.removeItem("rsvHopeDate01");
        		localStorage.removeItem("rsvHopeDate02");
        		localStorage.removeItem("rsvHopeTime01");
        		localStorage.removeItem("rsvHopeTime02");
    			for(let i =0; i<testItemCount.name; i++){
    				localStorage.removeItem("testItemCd"+i);
    			}
        	}
        	$('.healthexam-item-card.on').each(function(index){		//체크된 선택검사 항목 코드 가져오기
        		testItemCd = $(this).attr('id');
        		localStorage.setItem('testItemCd'+index, JSON.stringify({name:testItemCd}));
    		});
        	
        }
        
    	// 체크수 확인 + 추가검사 페이지 이동
        function goAddTest(){	
        	let itemNum = JSON.parse(localStorage.getItem('itemNum')).name;			//상품번호 
 		    let svPartnerCenterId = JSON.parse(localStorage.getItem('svPartnerCenterId')).name;	//협력병원아이디   
        	let allNum = 0;
        	let panelCount = 0;
        	let pickTestItemCd = "";
        	$('.num').each(function(){
        		allNum += Number($(this).attr('id'));	//선택검사 그룹당 선택 개수
        	});
        	
        	$('.panel-cont').each(function(){			//체크수 확인
        		$(this).find('.healthexam-item-card.on').each(function(){
        			panelCount ++;
        		});
        	});
        	
     		if(panelCount == allNum){
     			let chkedCount = JSON.parse(localStorage.getItem('testItemCount') || 'null');
     			let allChkNum = "";
     			if(chkedCount != null){
     				for(let i=0; i<chkedCount.name; i++){
     					allChkNum += JSON.parse(localStorage.getItem('testItemCd'+i)).name;
     				}
     			}
     			
     			$('.healthexam-item-card.on').each(function(index){
     				pickTestItemCd += $(this).attr('id');
    			});
     			
     			if(allChkNum == pickTestItemCd){
     				location.href = "addtest?checkupProductNo="+itemNum+"&partnerCenterId="+svPartnerCenterId;
     			}else{
     				let addChked = JSON.parse(localStorage.getItem('chked') || 'null');
     				if(addChked != null){	//추가상품 데이터가 있다.
     					for(let i=0; i<addChked.name; i++){
     						localStorage.removeItem("addItemCd"+i);
     					}
     					localStorage.removeItem("chked");
     				}
     				saveData();
         			localStorage.setItem('testItemCount', JSON.stringify({name:panelCount}));	//체크수 저장
         		    location.href = "addtest?checkupProductNo="+itemNum+"&partnerCenterId="+svPartnerCenterId;
     			}
     		}else{
     			alert("검사항목 선택수에 맞게 체크해주세요.");
     		}
        }
    	
        // 페이지 이동
        function goPage(page){
        	let panelCount = 0;
        	let pickTestItemCd = "";
        	
        	$('.panel-cont').each(function(){			
        		$(this).find('.healthexam-item-card.on').each(function(){
        			panelCount ++;
        		});
        	});
     			let chkedCount = JSON.parse(localStorage.getItem('testItemCount') || 'null');
     			let allChkNum = "";
     			if(chkedCount != null){
     				for(let i=0; i<chkedCount.name; i++){
     					allChkNum += JSON.parse(localStorage.getItem('testItemCd'+i)).name;
     				}
     			}
     			
     			$('.healthexam-item-card.on').each(function(index){
     				pickTestItemCd += $(this).attr('id');
    			});
     			
     			if(allChkNum == pickTestItemCd){	
     				if(page == "partnerCenter"){
     					location.href = "partnerhospital?saveChekupRosterNo=" + crn;
     				}else if(page == "rosterchoice"){
     					location.href ="rosterchoice";
     				}
     			}else{
     				let addChked = JSON.parse(localStorage.getItem('chked') || 'null');
     				if(addChked != null){	//추가상품 데이터가 있다.
     					for(let i=0; i<addChked.name; i++){
     						localStorage.removeItem("addItemCd"+i);
     					}
     					localStorage.removeItem("chked");
     				}
     				saveData();
         			localStorage.setItem('testItemCount', JSON.stringify({name:panelCount}));	
         			if(page == "partnerCenter"){
     					location.href = "partnerhospital?saveChekupRosterNo=" + crn;
     				}else if(page == "rosterchoice"){
     					location.href ="rosterchoice";
     				}
     			}//추가검사 변경하면 검진일자 제한
        }
        
      	//로컬스토리지에 저장되어 있는 데이터 불러오기
        $(document).ready(function(){	
        	let allNum = 0;
        	let i = 0;
        	let testOn = "";
        	
        	//체크 가능한 선택검사 합 구하기
        	$('.num').each(function(){
        		allNum += Number($(this).attr('id'));	
        	});
 			localStorage.setItem('testItemSu', JSON.stringify({name:allNum}));	//체크 가능한 수 저장
        	
        	for(i; i<allNum; i++){
        		testOn = JSON.parse(localStorage.getItem('testItemCd'+i) || 'null');	//로컬스토리지에 저장되어 있는 데이터
        		if(testOn != null){
        			$('#'+testOn.name).attr('class', 'healthexam-item-card on');			//체크한 값 불들어오게
            		$('.healthexam-item-card.on input[type="checkbox"]').prop('checked',true);
        		}
        	};
        	        	
        	// 페이지 들어올 때 (체크개수/선택가능수)표시
			$('.co-accordion.chkup-ctg-accordion').each(function(){	
				$(this).find('.healthexam-item-card.on').each(function(index){
        			$(this).closest('.co-accordion.chkup-ctg-accordion').find('.current-cnt').text(index+1);	
        		});
        	});
        });
      	
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
        	let inItemNum = $('.institution-detail-card.on').attr('title');			
        	
        	let panelCount = 0;
        	let pickTestItemCd = "";
        	
        	$('.panel-cont').each(function(){			
        		$(this).find('.healthexam-item-card.on').each(function(){
        			panelCount ++;
        		});
        	});
     			let chkedCount = JSON.parse(localStorage.getItem('testItemCount') || 'null');
     			let allChkNum = "";
     			if(chkedCount != null){
     				for(let i=0; i<chkedCount.name; i++){
     					allChkNum += JSON.parse(localStorage.getItem('testItemCd'+i)).name;
     				}
     			}
     			
     			$('.healthexam-item-card.on').each(function(index){
     				pickTestItemCd += $(this).attr('id');
    			});
        	
        	if(testItemCount != null && allChkNum == pickTestItemCd){
    	        	if(page == "checkupdaylist"){
    	        		if(chked != null && testItemSu != null && testItemCount != null &&(testItemSu.name == testItemCount.name)){
    		        		location.href = "checkupdaylist";
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
        
        function chkChk(data, box){
        	let cnt = 0;
        	let chkSu = 0;
        	let chked = '';
        	$('.co-accordion.chkup-ctg-accordion.on').each(function(){
        		$(this).find('.healthexam-item-card').each(function(){
        			if(data == $(this).attr('id')){
        				chkSu = $(this).attr('name');
        				$(this).closest('.co-accordion.chkup-ctg-accordion.on').each(function(){
        					$(this).find('.healthexam-item-card.on').each(function(){
        						if(data == $(this).attr('id')){
        							chked = 'chked';
        						}
        	        			cnt ++;
        	        		});
        				});
        			}
        		});        		
        	});
        	if(chkSu <= cnt && chked != 'chked'){
        		box.checked = false;
        		alert('체크가능 수 초과');
        	}
        }
    </script>
</body>

</html>