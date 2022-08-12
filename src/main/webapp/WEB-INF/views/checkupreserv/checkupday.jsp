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

            <div class="contents-wrap">
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
                                        <li class="is-now">
                                            <div class="rsv-step">
                                                <p class="rsv-title">05. 검진일자</p>
                                            </div>
                                        </li>
                                        <li class="is-end">
                                            <div class="rsv-step" onclick="goPage('checkupinfolist')">
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
                                    <h1 class="title">검진일자</h1>
                                </div>
                            </div>
                            <div class="co-cont-section">
                                <div class="co-subcont-field">
                                    <p class="co-ref-txt">검진기관 예약 특이사항 : 오전 7시부터 검진이 가능하며, 오전 일찍 내원해 주실수록 대기시간을 줄이실 수 있음을 안내 드립니다.</p>
                                </div>
                                <div class="row type02">
                                    <div class="col-6">
                                        <div class="co-article">
                                            <div class="co-title-field" title="">
                                                <h2 class="sub-title">1차 희망 신청일자</h2>
                                                <div class="c-chkbox">
                                                    <input type="checkbox" id="chkOnlyMorningDate01" />
                                                    <label for="chkOnlyMorningDate01" class="chk-label"><i></i><span>오전 예약 가능일만 보기</span></label>
                                                </div>
                                            </div>
                                            <div class="co-cont-article input-cont-article">
                                                <div class="c-input-list-basic input-cont">
                                                    <div class="row">
                                                        <div class="col label-input">
                                                            <label for="rsvHopeDate01_01">예약일자</label>
                                                            <div class="c-input-date">
                                                                <input type="text" onclick="goReservDay()" class="c-input btn-date-picker" id="rsvHopeDate01" placeholder="YYYY-MM-DD" autocomplete="off" />
                                                                <span><i class="date-btn"></i></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col label-input">
                                                            <label for="rsvHopeTime01">예약시간</label>
                                                            <div class="c-select">
                                                                <select title="예약시간 선택" id="rsvHopeTime01">
                                                                    <option value="" selected="">선택</option>
                                                                    <option value="09:30">09:30</option>
                                                                    <option value="11:00">11:00</option>
                                                                    <option value="13:30">13:30</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="co-article">
                                            <div class="co-title-field">
                                                <h2 class="sub-title">2차 희망 신청일자</h2>
                                            </div>
                                            <div class="co-cont-article input-cont-article">
                                                <div class="c-input-list-basic input-cont">
                                                    <div class="row">
                                                        <div class="col label-input">
                                                            <label for="rsvHopeDate02">예약일자</label>
                                                            <div class="c-input-date">
                                                                <input type="text" onclick="goReservDay()" class="c-input btn-date-picker" id="rsvHopeDate02" placeholder="YYYY-MM-DD" autocomplete="off" />
                                                                <span><i class="date-btn"></i></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col label-input">
                                                            <label for="rsvHopeTime02">예약시간</label>
                                                            <div class="c-select">
                                                                <select title="예약시간 선택" id="rsvHopeTime02">
                                                                    <option value="" selected="">선택</option>
                                                                    <option value="09:30">09:30</option>
                                                                    <option value="11:00">11:00</option>
                                                                    <option value="13:30">13:30</option>
                                                                </select>
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
                                            <a onclick="goAddtest()" class="co-btn btn-reservation-prev is-active"><span>이전</span></a>
                                        </div>
                                        <div class="right">
                                            <button type="button" class="co-btn is-outline-navy-1"><span>변경 신청</span></button>
                                            <a onclick="goPage('checkupinfolist')" class="co-btn bg-navy-1 btn-reservation-next"><span>다음</span></a>
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

       

    <script src="/resources/js/date.js"></script>
    <script>
        $('.btn-date-picker').datepicker({
            beforeShowDay: disableAllTheseDays,
            beforeShow: function(input) {
                datepickerBtmBar(input);
            },
            onChangeMonthYear: function(input) {
                datepickerBtmBar(input);
            },
        });
        // 특정날짜 disabled List
        var disabledDays = ['2022-7-9', '2022-7-26', '2022-7-26', '2022-8-1'];

        function disableAllTheseDays(date) {
            var m = date.getMonth(),
                d = date.getDate(),
                y = date.getFullYear();

            for (i = 0; i < disabledDays.length; i++) {
                if ($.inArray(y + '-' + (m + 1) + '-' + d, disabledDays) != -1) {
                    return [false];
                }
            }
            return [date.getDay() != 0, '']; // 일요일 제어
            return [true];
        }

        $(window).on('load resize', function() {
            reservationSideBarFloating();
        });
        $(window).on('load resize scroll', function() {
            reservationBtmBarFixed();
        });
        
        $(document).ready(function(){
        	let rsvHopeDate01 = JSON.parse(localStorage.getItem('rsvHopeDate01') || 'null');
        	let rsvHopeDate02 = JSON.parse(localStorage.getItem('rsvHopeDate02') || 'null');
        	let rsvHopeTime01 = JSON.parse(localStorage.getItem('rsvHopeTime01') || 'null');
        	let rsvHopeTime02 = JSON.parse(localStorage.getItem('rsvHopeTime02') || 'null');
        	if(rsvHopeDate02 != null){
        		$('#rsvHopeDate01').val(rsvHopeDate01.name);
        		$('#rsvHopeDate02').val(rsvHopeDate02.name);
        		$('#rsvHopeTime01').val(rsvHopeTime01.name);
        		$('#rsvHopeTime02').val(rsvHopeTime02.name);
        	}
        	
        });
        
        function goReservDay(){	//예약가능 일자 
        	let customerId = JSON.parse(localStorage.getItem('customerId')).name;	//고객사아이디
        	let policyYear = JSON.parse(localStorage.getItem('policyYear')).name;	//정책연도
        	let chekupRosterNo = JSON.parse(localStorage.getItem('chekupRosterNo')).name;	//검진대상자번호
        	let svPartnerCenterId = JSON.parse(localStorage.getItem('svPartnerCenterId')).name;	//협력병원아이디
        	let itemNum = JSON.parse(localStorage.getItem('itemNum')).name;	//상품번호
        	let productSt = JSON.parse(localStorage.getItem('productSt')).name;	//조회시작일자
        	let productEd = JSON.parse(localStorage.getItem('productEd')).name;	//조회종료일자
        	let testItemCount = JSON.parse(localStorage.getItem('testItemCount')).name;	//선택검사 선택 수
        	let chked = JSON.parse(localStorage.getItem('chked') || 'null');	//추가검사 체크 수
        	let testCd = "";
        	var choiceTestItemList = new Array;
        	
        	for(let i =0; i<testItemCount; i++){
        		testCd = JSON.parse(localStorage.getItem('testItemCd'+i)).name;
        		
        		$.ajax({
            		url:"chekupreserv/getgroupnum",
            		type:"post",
            		async:false,
            		data:{"testCd":testCd},
            		success:function(data){
                    	let obj = {};
                    	//debugger
                    	obj['testItemCd'] = (data.testItemCd);
                    	obj['choiceGroupNo'] = (data.choiceGroupNo);	
                    	choiceTestItemList.push(obj);
            		},
            		error:function(){
            			alert("error");
            		}
            	});
        	}
        	
        	if(chked != null){
	        	for(let i =0; i<chked.name; i++){
	        		testCd = JSON.parse(localStorage.getItem('addItemCd'+i)).name;
	        		
	        		$.ajax({
	            		url:"chekupreserv/getgroupnum",
	            		type:"post",
	            		async:false,
	            		data:{"testCd":testCd},
	            		success:function(data){
	            			let obj = {};
	            			obj['testItemCd'] = (data.testItemCd);
	                    	obj['choiceGroupNo'] = (data.choiceGroupNo);
	                    	choiceTestItemList.push(data);             	
	            		},
	            		error:function(){
	            			alert("error");
	            		}
	            	});
	        	}
        	}
        	let jschoiceTestItemList = JSON.stringify(choiceTestItemList);
			
        	$.ajax({
        		url:"chekupreserv/getreservcapa",
        		type:"post",
        		async:false,
        		dataType:"json",
        		data:{"choiceTestItemList":jschoiceTestItemList,
        			"customerId":customerId,
        			"policyYear":policyYear,
        			"chekupRosterNo":chekupRosterNo,
        			"svPartnerCenterId":svPartnerCenterId,
        			"itemNum":itemNum,
        			"productSt":productSt,
        			"productEd":productEd},
        		success:function(data){
        			let obj = {};
        			obj['testItemCd'] = (data.testItemCd);
                	obj['choiceGroupNo'] = (data.choiceGroupNo);
                	choiceTestItemList[''] = (obj);
                	console.log(JSON.stringify(obj));
        		},
        		error:function(){
        			//alert("error");
        		}
        	});
		
        }

        
       
        function goAddtest(){
        	let itemNum = JSON.parse(localStorage.getItem('itemNum')).name;			//상품번호 
 		    let svPartnerCenterId = JSON.parse(localStorage.getItem('svPartnerCenterId')).name;	//협력병원아이디
        	location.href = "addtest?checkupProductNo="+itemNum+"&partnerCenterId="+svPartnerCenterId;
        }
        
        function saveData(){
        	let rsvHopeDate01 = $('#rsvHopeDate01').val();
        	let rsvHopeDate02 = $('#rsvHopeDate02').val();    
        	let rsvHopeTime01 = $('#rsvHopeTime01').val();
        	let rsvHopeTime02 = $('#rsvHopeTime02').val();
        	let saveRsvHopeDate01 = JSON.parse(localStorage.getItem('rsvHopeDate01') || 'null');

        	//if(saveRsvHopeDate01 == null || saveRsvHopeDate01.name == '' || saveRsvHopeDate01.name == rsvHopeDate01){
        		localStorage.setItem('rsvHopeDate01', JSON.stringify({name: rsvHopeDate01}));
        		localStorage.setItem('rsvHopeDate02', JSON.stringify({name: rsvHopeDate02}));
        		localStorage.setItem('rsvHopeTime01', JSON.stringify({name: rsvHopeTime01}));
        		localStorage.setItem('rsvHopeTime02', JSON.stringify({name: rsvHopeTime02}));
        	//}
        }
        
        function goPage(page){
        	saveData();
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
	        		if($('#rsvHopeDate01').val() == ""){
	        			alert("1차 희망 신청 예약일자를 설정해주세요.");
	        			return false;
	        		}else if($('#rsvHopeTime01').val() == ""){
	        			alert("1차 희망 신청 예약시간을 설정해주세요.");
	        			return false;
	        		}else if($('#rsvHopeDate02').val() == ""){
	        			alert("2차 희망 신청 예약일자를 설정해주세요.");
	        			return false;
	        		}else if($('#rsvHopeTime02').val() == ""){
	        			alert("2차 희망 신청 예약시간을 설정해주세요.");
	        			return false;
	        		}
	        		location.href = "checkupinfolist?rosterNum="+crn;
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
     		let rsvHopeDate1 = $('#rsvHopeDate01').val();
        	let rsvHopeDate2 = $('#rsvHopeDate02').val();    
        	let rsvHopeTime1 = $('#rsvHopeTime01').val();
        	let rsvHopeTime2 = $('#rsvHopeTime02').val();
        	if(rsvHopeDate01 != null && rsvHopeDate02 != null && rsvHopeTime01 != null && rsvHopeTime02 != null){
    	        	if(page == "finalcorfirm"){
    	        		if(rosterInfo != null && rsvHopeDate01 != null && rsvHopeDate02 != null && rsvHopeTime01 != null && rsvHopeTime02 != null && (itemNum != null || itemNum.name != '')){
    		        		if(rsvHopeDate01.name != '' && rsvHopeDate02.name != '' && rsvHopeTime01.name != '' && rsvHopeTime02.name != ''
    		        				&& rosterInfo.name.addr != '' && rosterInfo.name.addrDetail != '' && rosterInfo.name.addrNum != '' && rosterInfo.name.mobileNum != ''
    		        				&& rosterInfo.name.chk1 != '' && rosterInfo.name.chk2 != '' && rosterInfo.name.chk3 != ''
    		        				&& rosterInfo.name.chk4 != '' && rosterInfo.name.email != '' && rosterInfo.name.resultReceive != ''){
    		        			localStorage.setItem('rsvHopeDate01', JSON.stringify({name: rsvHopeDate1}));
    		            		localStorage.setItem('rsvHopeDate02', JSON.stringify({name: rsvHopeDate2}));
    		            		localStorage.setItem('rsvHopeTime01', JSON.stringify({name: rsvHopeTime1}));
    		            		localStorage.setItem('rsvHopeTime02', JSON.stringify({name: rsvHopeTime2}));
    		        			location.href="finalconfirmlist?svpartnercenterid="+svPartnerCenterId.name +"&itemnum="+itemNum.name +"&chekuprosterno="+crn.name;
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