<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
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
   <!-- Side Navigation -->
   <jsp:include page="../common/sidebar.jsp" />
   <!-- //Side Navigation -->	     
   <!-- Header-->      
   <jsp:include page="../common/header.jsp" />	
   <!-- // Header-->

            <div class="contents-wrap rsv-exam-result-wrap">
                <!-- Contents -->
                <section class="contents">
                    <div class="cont-wrap">
                        <!-- reservation-sidebar -->
                        <div class="reservation-sidebar rsv-sidebar-fixed">
                            <div class="inner-wrap">
                                <em class="top-title">바로가기</em>
                                <div class="reservation-step-field">
                                    <!-- [comment] 
																	- side list 상태별 스타일 제어 class
																	- is-now : 현재
																	- is-end : 완료
																-->
                                    <ul class="reservation-step-list">
                                        <li class="is-now">
                                            <div class="rsv-step">
                                                <a href="javascrpit:;">
                                                    <p class="rsv-title">종합소견</p>
                                                </a>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="rsv-step">
                                                 <a href="${path }/resultpage/basicinspection">
                                                    <p class="rsv-title">기초검사</p>
                                                </a>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="rsv-step">
                                               <a href="${path }/resultpage/bloodtest">
                                                    <p class="rsv-title">혈액검사</p>
                                                </a>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="rsv-step">
                                                <a href="${path }/resultpage/equipmentinspection">
                                                    <p class="rsv-title">장비검사</p>
                                                </a>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="rsv-step">
                                                 <a href="${path }/resultpage/otherinspection">
                                                    <p class="rsv-title">기타검사</p>
                                                </a>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- //  reservation-sidebar -->
                        <div class="contents-area reserve-contents-area co-exam-result-area">
                            <div class="co-location-wrap">
                                <div class="co-location">
                                    <p>
                                        <a href="javascript:;" class="home" title="홈으로 이동"><span class="skip">Home</span></a>
                                    </p>

                                    <p>검진예약/결과조회</p>


                                    <p class="on">검진 결과</p>

                                </div>

                                <div class="co-title-field">
                                    <h1 class="title">검진 결과</h1>
                                </div>
                            </div>

                            <div class="co-cont-section">
                                <!-- result-article-wrap -->
                                <!-- [comment] 
										- 좌측 바로가기 각 메뉴 클릭 시 해당 검사 영역으로 스크롤 이동 처리 필요
									-->
                                <div class="result-article-wrap">
                                    <div class="result-article">
                                        <div class="mychkup-history-wrap">
                                            <div class="co-title-field">
                                                <h2 class="title">MY 건강검진 이력</h2>
                                            </div>
                                            <div class="mychkup-history-card-wrap">
                                                <div class="mychkup-history-field is-active">
                                                    <div class="swiper mychkup-history-swiper center01">
                                                                                       <div class="swiper-wrapper">
                                                        											                        											                            										                                										                            										                          								                                                       
                                                        	<!-- ===========================MY 건강검진 이력 리스트============================= -->
                                                        	<c:forEach var="list" items="${examinationResultList }" varStatus="status">
	                                                             <div class="swiper-slide">
	                                                                <div id="historyCard" class="mychkup-history-card">                                           	
	                                                                    <a role="button" class="countResultBtn" id="resultBtn" href="javascript:;" onclick="clickFunction('${list.partner_center_id}', '${list.checkup_no}', '${list.checkup_dt }', '${list.checkup_propos_no}', '${status.count -1}')">
	                                                                        <div class="top-box"> 
	                                                                            <p class="date">${list.checkup_dt }</p>
<!-- 	                                                                            <span class="co-badge type01">미신청</span> -->
	                                                                        </div>
	                                                                        <p class="name">${list.checkup_div_cd } ${list.propos_title }</p>
	                                                                        <p class="center">${list.partner_center_name }</p>
	                                                                    </a>
	                                                                </div>
	                                                            </div>
                                                            </c:forEach>                                                                                                                        
                                                            <!-- =========================================================== -->
                                                        </div>
                                                        <div class="co-slide-btn-prev"></div>
                                                        <div class="co-slide-btn-next"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="result-article">
                                        <div class="co-title-field">
                                            <h2 class="title">종합소견</h2>
                                            <div class="buttons">                                                
                                                <button id="compareBtn" type="button" class="co-btn is-outline-navy-1 btn-result-compare btn-open-popup" data-toggle="modal" data-target="#popupCompareBtn"><span>비교하기</span></button>
                                            </div>
                                        </div>
                                        <div class="list-field">
                                            <ul class="co-list-card circle02" id="ul_list">
                                                <li id="defautlOption">조회를 원하시는 검진 이력을 선택하여 주시기 바랍니다.</li>                                                                                                                                               
                                            </ul>
                                        </div>
                                    </div>                                    
                                </div>
                                <!-- // result-article-wrap -->
                            </div>
                        </div>
                    </div>
                </section>                
                <!-- // Contents -->                
            </div>   
	        <!-- + ? 버튼 클릭 시 혈압 팝업 -->
             <div class="c-layer-popup type02" id="popupChkupResultCtg01" role="dialog" aria-labelledby="popupChkupResultCtg01_Label" aria-modal="true" aria-hidden="true">
                <div class="modal-wrap">
                    <div class="modal-field" tabindex="0">
                        <div class="c-modal-header">
                            <div class="c-modal-title-field">
                                <h4 class="c-title" id="popupChkupResultCtg01_Label">혈압</h4>
                            </div>
                            <button type="button" class="popup-cls-btn"><span class="skip">팝업 닫기</span></button>
                        </div>
                        <div class="c-modal-body">
                            <div class="c-modal-inner">
                                <p>
                                    혈압은 안정상태에서 수축기와 이완기의 혈압을 측정합니다. 혈압은 운동, 스트레스, 안정 상태 등에 따라 변하므로 한번의 측정으로 고혈압을 진단할 수 는 없습니다. 정기적으로 혈압을
                                    측정하고 증가시에는 반복하여 측정함으로써 고혈압을 조기에 진단 할 수 있습니다.
                                </p>
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
        	  
            
	<!-- 종합소견 -->
	<jsp:include page="../reservresult/modal/comprehensiveFindingCompareModal.jsp"/>
    <!-- // Content-Wrapper -->
	<!-- Footer -->            
    <jsp:include page="../common/footer.jsp"/>
	<input hidden="hidden" id="comparePartnerCenterId">                                           
	<input hidden="hidden" id="compareCheckupDt">       	   
    <script>
    $( document ).ready(function(e) {	   	
	   	param = sessionStorage.getItem("param");
	    param = JSON.parse(param);
	   	if(param != null){
	   		clickFunction(param.partnerCenterId, param.checkupNo, param.checkupDt, param.checkupProposNo, param.cnt);		
	   	}
    	
    });
    
        var swiper = undefined;

        function myChkHistorySwiper() {
            var windowSizeWidth = $(window).width();
            if ((swiper03 = 'undefined' && windowSizeWidth <= 2000)) {
                $('.mychkup-history-field').addClass('is-active');
                swiper03 = new Swiper('.mychkup-history-swiper', {
                    slidesPerView: 'auto',
                    centeredSlides: false,
                    grabCursor: false,
                    loopedSlides: 100,
                    watchOverflow: true,
                    navigation: {
                        prevEl: '.co-slide-btn-prev',
                        nextEl: '.co-slide-btn-next',
                    },
                });
            } else {
                $('.mychkup-history-field').removeClass('is-active');
            }
        }
        $(window).on('load resize', function() {        	
            myChkHistorySwiper();
        });
        myChkHistorySwiper();
        toggleAccordion();
        

     // MY 건강검진 이력 클릭 시
     function clickFunction(data, data2, data3, data4, count) {   
     	let cnt = count;     	
     	for(var c = 0; c < $('.countResultBtn').parent().length; c++){
     		if(c == cnt){
     			$('.countResultBtn').parent()[cnt].className = 'mychkup-history-card on';		
     		}
     		else {
     			$('.countResultBtn').parent()[c].className = 'mychkup-history-card';
     		}
     	}     	     
     	let partnerCenterId = data;
     	let checkupNo = data2;
     	let checkupDt = data3.replace(/-/g,"");	
     	let checkupProposNo = data4;
     	param = new Object();
     	param.partnerCenterId = data;
     	param.checkupNo = data2;
     	param.checkupDt = data3.replace(/-/g,"");
     	param.checkupProposNo = data4;
     	param.cnt = cnt;
     	sessionStorage.setItem("param", JSON.stringify(param));
     	
     	$("#ul_list").empty();
     	// 종합소견
     	$.ajax({
     		url : '/resultpage/examinationresultlookupinformation',
     		type : 'get',
     		data : {partnerCenterId:partnerCenterId, checkupNo:checkupNo, checkupProposNo:checkupProposNo},
     		success : function(result) {									
     					if(result != null){						
     						$("#defautlOption").hide();											
     						text = result.CHECKUP_OPINION;
     						var ul_list = $("#ul_list");
     						ul_list.append("<li>" + text + "</li>");
     					}					
     		}, error : function() {
     		   console.log(error);
     		}
     	});     	     	    
     	$("#comparePartnerCenterId").val(partnerCenterId);	
     	$("#compareCheckupDt").val(checkupDt);
     	
     	// 비교하기 버튼 클릭 
     	$("#compareBtn").click(function() {     		
     		partnerCenterId = $("#comparePartnerCenterId").val();		
     		checkupDt = $("#compareCheckupDt").val();
     		let h = '';
     		$.ajax({
     			url : '/resultpage/comparisonofresults',
     			type : 'get',
     			data : {partnerCenterId:partnerCenterId, checkupDt:checkupDt},
     			success : function(result) {     				
     				$.each(result, function(idx, p){	
     					h += "<tr>";
                        h += "<td>" + p.CHECKUP_DT + "</td>" 
                        h += "<td>" + p.PARTNER_CENTER_NAME + "</td>";
     					h += "<td class='ta-l'>"
     					h += "<ul class='co-list-card circle02'>"
     					h += "<li>" + p.CHECKUP_OPINION + "</li>";					
     					h += "</ul>";
     					h += "</td>";
     	                h += "</tr>";	            		                	               	                
     				});
     				$("#compareResult").html(h);
     								
     			}, error : function() {
     			   console.log(error);
     			}
     		});		
     		
     	})
     		
     };         

    </script>
</body>

</html>