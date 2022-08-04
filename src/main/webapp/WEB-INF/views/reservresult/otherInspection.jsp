<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF8">
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
                                        <li>
                                            <div class="rsv-step">
                                                <a href="${path }/resultpage/resultinfo">
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
                                        <li >
                                            <div class="rsv-step">
                                                <a href="${path }/resultpage/bloodtest">
                                                    <p class="rsv-title">혈액검사</p>
                                                </a>
                                            </div>
                                        </li>
                                        <li >
                                            <div class="rsv-step">
                                                <a href="${path }/resultpage/equipmentinspection">
                                                    <p class="rsv-title">장비검사</p>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="is-now">
                                            <div class="rsv-step">
                                                <a href="javascrpit:;">
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
                                    <h1 class="title">기타검사</h1>
                                </div>
                            </div>
                            <div class="co-cont-section" id="bodyContents">
                                <!-- result-article-wrap -->
                                <div class="result-article-wrap">                                                                        
                                    <div class="result-article">
                                    
                                        <div class="faq-list-field">
                                            <ul class="co-accrodion-list medical-chkup-result-list">
                                                
                                              	<!-- ================================================================================== -->
                                                <li>
                                                    <div class="co-accordion">
                                                        <a href="javascript:;" role="button" class="btn-accrodion">
                                                            <div class="left">
                                                                <div class="inner">
                                                                    <p class="txt">유전자 검사</p>
                                                                </div>
                                                            </div>
                                                            <div class="right">
                                                                <div class="inner">
                                                                    <div class="cnt"></div>
                                                                    <div class="ico-accordion"><span class="is-blind">펼치기</span></div>
                                                                </div>
                                                            </div>
                                                        </a>
                                                        <div class="accrodion-panel">
                                                            <div class="panel-cont">
                                                                <div class="co-table cont-type04 tbl-center tbl-chkup-result01">
                                                                    <table class="table">                                                                        
                                                                        <colgroup>
                                                                            <col style="width: 12.5%" />
                                                                            <col style="width: 12.5%" />
                                                                            <col style="width: 12.5%" />
                                                                            <col style="width: 12.5%" />
                                                                            <col style="width: 12.5%" />
                                                                            <col style="width: 12.5%" />
                                                                            <col style="width: 12.5%" />                                                                            
                                                                        </colgroup>
                                                                        <thead>
                                                                            <tr>
                                                                                <th>관련검사명</th>                                                                                
                                                                                <th>임상참고치</th>
                                                                                <th>현재결과</th>
                                                                                <th>낮은치</th>                                                                                
                                                                                <th>정상</th>                                                                                
                                                                                <th>높은치</th>                                                                                
                                                                                <th>대상질환</th>                                                                                
                                                                                <th><span class="skip">비교하기</span></th>
                                                                            </tr>
                                                                        </thead>                                                                     
                                                                        <tbody id="dnaTest">
													                                                                                                
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>                                                 
                                                <li>
                                                    <div class="co-accordion">
                                                        <a href="javascript:;" role="button" class="btn-accrodion">
                                                            <div class="left">
                                                                <div class="inner">
                                                                    <p class="txt">생체나이 검사</p>
                                                                </div>
                                                            </div>
                                                            <div class="right">
                                                                <div class="inner">
                                                                    <div class="cnt"></div>
                                                                    <div class="ico-accordion"><span class="is-blind">펼치기</span></div>
                                                                </div>
                                                            </div>
                                                        </a>
                                                        <div class="accrodion-panel">
                                                            <div class="panel-cont">
                                                                <div class="co-table cont-type04 tbl-center tbl-chkup-result01">
                                                                    <table class="table">                                                                        
                                                                        <colgroup>
                                                                            <col style="width: 12.5%" />
                                                                            <col style="width: 12.5%" />
                                                                            <col style="width: 12.5%" />
                                                                            <col style="width: 12.5%" />
                                                                            <col style="width: 12.5%" />
                                                                            <col style="width: 12.5%" />
                                                                            <col style="width: 12.5%" />                                                                            
                                                                        </colgroup>
                                                                        <thead>
                                                                            <tr>
                                                                                <th>관련검사명</th>                                                                                
                                                                                <th>임상참고치</th>
                                                                                <th>현재결과</th>
                                                                                <th>낮은치</th>                                                                                
                                                                                <th>정상</th>                                                                                
                                                                                <th>높은치</th>                                                                                
                                                                                <th>대상질환</th>                                                                                
                                                                                <th><span class="skip">비교하기</span></th>
                                                                            </tr>
                                                                        </thead>                                                                     
                                                                        <tbody id="biologicalAgeTest">
													                                                                                                
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>                                                 
                                                <li>
                                                    <div class="co-accordion">
                                                        <a href="javascript:;" role="button" class="btn-accrodion">
                                                            <div class="left">
                                                                <div class="inner">
                                                                    <p class="txt">한방검사</p>
                                                                </div>
                                                            </div>
                                                            <div class="right">
                                                                <div class="inner">
                                                                    <div class="cnt"></div>
                                                                    <div class="ico-accordion"><span class="is-blind">펼치기</span></div>
                                                                </div>
                                                            </div>
                                                        </a>
                                                        <div class="accrodion-panel">
                                                            <div class="panel-cont">
                                                                <div class="co-table cont-type04 tbl-center tbl-chkup-result01">
                                                                    <table class="table">                                                                        
                                                                        <colgroup>
                                                                            <col style="width: 12.5%" />
                                                                            <col style="width: 12.5%" />
                                                                            <col style="width: 12.5%" />
                                                                            <col style="width: 12.5%" />
                                                                            <col style="width: 12.5%" />
                                                                            <col style="width: 12.5%" />
                                                                            <col style="width: 12.5%" />                                                                            
                                                                        </colgroup>
                                                                        <thead>
                                                                            <tr>
                                                                                <th>관련검사명</th>                                                                                
                                                                                <th>임상참고치</th>
                                                                                <th>현재결과</th>
                                                                                <th>낮은치</th>                                                                                
                                                                                <th>정상</th>                                                                                
                                                                                <th>높은치</th>                                                                                
                                                                                <th>대상질환</th>                                                                                
                                                                                <th><span class="skip">비교하기</span></th>
                                                                            </tr>
                                                                        </thead>                                                                     
                                                                        <tbody id="orientalMedicineTest">
													                                                                                                
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>                                                 
                                                <li>
                                                    <div class="co-accordion">
                                                        <a href="javascript:;" role="button" class="btn-accrodion">
                                                            <div class="left">
                                                                <div class="inner">
                                                                    <p class="txt">탈모검사</p>
                                                                </div>
                                                            </div>
                                                            <div class="right">
                                                                <div class="inner">
                                                                    <div class="cnt"></div>
                                                                    <div class="ico-accordion"><span class="is-blind">펼치기</span></div>
                                                                </div>
                                                            </div>
                                                        </a>
                                                        <div class="accrodion-panel">
                                                            <div class="panel-cont">
                                                                <div class="co-table cont-type04 tbl-center tbl-chkup-result01">
                                                                    <table class="table">                                                                        
                                                                        <colgroup>
                                                                            <col style="width: 12.5%" />
                                                                            <col style="width: 12.5%" />
                                                                            <col style="width: 12.5%" />
                                                                            <col style="width: 12.5%" />
                                                                            <col style="width: 12.5%" />
                                                                            <col style="width: 12.5%" />
                                                                            <col style="width: 12.5%" />                                                                            
                                                                        </colgroup>
                                                                        <thead>
                                                                            <tr>
                                                                                <th>관련검사명</th>                                                                                
                                                                                <th>임상참고치</th>
                                                                                <th>현재결과</th>
                                                                                <th>낮은치</th>                                                                                
                                                                                <th>정상</th>                                                                                
                                                                                <th>높은치</th>                                                                                
                                                                                <th>대상질환</th>                                                                                
                                                                                <th><span class="skip">비교하기</span></th>
                                                                            </tr>
                                                                        </thead>                                                                     
                                                                        <tbody id="hairLossTest">
													                                                                                                
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>                                                 
                                                
                                                <!-- ================================================================================== -->
                                                                                                                                                                                           
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
            
<!-- 검진결과텍스트비교하기 -->
<jsp:include page="../reservresult/modal/comparisonResultsTextModal.jsp"/>             
<!-- 검진결과비교하기 -->
<jsp:include page="../reservresult/modal/comparisonResultsNumberModal.jsp"/>                          
<!-- Footer -->                  
<jsp:include page="../common/footer.jsp"/>                                                            
</body>
<script src="${path }/resources/lib/swiper/js/swiper.js"></script>
<script src="${path }/resources/js/common.js"></script>
<script src="${path }/resources/lib/chart.js/dist/chart.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/chartjs-plugin-annotation/0.5.7/chartjs-plugin-annotation.min.js"></script>
<script type="text/javascript">

$( document ).ready(function() {
   param = sessionStorage.getItem("param");
   param = JSON.parse(param)
   
   
   
   $.ajax({
		url : '/resultpage/basalurinetest',
		type : 'get',
		data : {partnerCenterId:param.partnerCenterId, checkupNo:param.checkupNo, checkupProposNo:param.checkupProposNo},
		success : function(result) {			
			let h1 = '', h2 = '', h3 = '', h4 = '';
			let dnaTestBtn = [], biologicalAgeTestBtn = [], orientalMedicineTestBtn = [], hairLossTestBtn = [];
			let i1 = 0, i2 = 0, i3 = 0, i4 = 0;
			$.each(result, function(idx, p){	
				if(p.MID_CATEGORY == 91){			
					h1 += "<tr>";
	             	h1 += "<td class='ta-l'>" + p.CENTER_TEST_RESULT_CD_NAME + "</td>";
	             	if((p.MIN_VALUE != null && p.MAX_VALUE != null) && (p.MIN_VALUE != '' && p.MAX_VALUE != '')){
	             	h1 += "<td class='bg-gray-12'>" + p.MIN_VALUE + " ~ " + p.MAX_VALUE + "</td>";	
	             	}
	             	else if((p.MIN_VALUE == null && p.MAX_VALUE == null) || (p.MIN_VALUE == '' && p.MAX_VALUE == '')){
	             	h1 += "<td class='bg-gray-12'>"+ "-" + "</td>";	
	             	}
	             	else {
	             	h1 += "<td class='bg-gray-12'>" + p.MIN_VALUE + p.MAX_VALUE + "</td>";	
	             	} 
	             	if(p.RESULT_VALUE != null && p.MIN_VALUE != ''){
	                h1 += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";	
	                }
	             	else {
	                h1 += "<td class='bg-gray-12'></td>";	
	                }	              	
	              	if(p.RESULT_OPINION_CD == '10'){
	              	h1 += "<td class='bg-gray-12'>" + "*" + "</td>";		
	              	h1 += "<td class='bg-gray-12'>" + "" + "</td>";		
	              	h1 += "<td class='bg-gray-12'>" + "" + "</td>";		
	              	}
	              	if(p.RESULT_OPINION_CD == '00'){
	              	h1 += "<td class='bg-gray-12'>" + "" + "</td>";	
	              	h1 += "<td class='bg-gray-12'>" + "*" + "</td>";	
	              	h1 += "<td class='bg-gray-12'>" + "" + "</td>";	
	              	}
	              	if(p.RESULT_OPINION_CD == '20'){
	              	h1 += "<td class='bg-gray-12'>" + "" + "</td>";	
	              	h1 += "<td class='bg-gray-12'>" + "" + "</td>";	
	              	h1 += "<td class='bg-gray-12'>" + "*" + "</td>";	
	              	}                    		              	
// 	              	h1 += "<td class='bg-gray-12' rowspan='23'>" + "급-만성염증,빈혈,출혈성질환,기타혈액질환,각종백혈병,알레르기질환" + "</td>";	
	              	h1 += "<td class='bg-gray-12'></td>";
	              	h1 += "<td class='tbl-in-cont'>"
					h1 += "<button type='button' id='dnaTestBtn" + i1++ + "'class='co-btn is-outline-navy-1 btn-result-compare btn-open-popup' data-toggle='modal' data-target='#popupChkupResultCompareChart' onclick='compareBtnClick(this);'><span>비교하기</span></button>";
					h1 += "</td>"	  
	             	h1 += "</tr>";
	             	dnaTestBtn.push([p.CENTER_TEST_RESULT_CD_NAME,p.MID_CATEGORY,p.PARTNER_CENTER_NAME, p.VALUE_DIV_TYPE]);
				}
				if(p.MID_CATEGORY == 92){			
					h2 += "<tr>";
	             	h2 += "<td class='ta-l'>" + p.CENTER_TEST_RESULT_CD_NAME + "</td>";
	             	if((p.MIN_VALUE != null && p.MAX_VALUE != null) && (p.MIN_VALUE != '' && p.MAX_VALUE != '')){
	             	h2 += "<td class='bg-gray-12'>" + p.MIN_VALUE + " ~ " + p.MAX_VALUE + "</td>";	
	             	}
	             	else if((p.MIN_VALUE == null && p.MAX_VALUE == null) || (p.MIN_VALUE == '' && p.MAX_VALUE == '')){
	             	h2 += "<td class='bg-gray-12'>"+ "-" + "</td>";	
	             	}
	             	else {
	             	h2 += "<td class='bg-gray-12'>" + p.MIN_VALUE + p.MAX_VALUE + "</td>";	
	             	} 
	             	if(p.RESULT_VALUE != null && p.MIN_VALUE != ''){
	                h2 += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";	
	                }
	             	else {
	                h2 += "<td class='bg-gray-12'></td>";	
	                }	              	
	              	if(p.RESULT_OPINION_CD == '10'){
	              	h2 += "<td class='bg-gray-12'>" + "*" + "</td>";		
	              	h2 += "<td class='bg-gray-12'>" + "" + "</td>";		
	              	h2 += "<td class='bg-gray-12'>" + "" + "</td>";		
	              	}
	              	if(p.RESULT_OPINION_CD == '00'){
	              	h2 += "<td class='bg-gray-12'>" + "" + "</td>";	
	              	h2 += "<td class='bg-gray-12'>" + "*" + "</td>";	
	              	h2 += "<td class='bg-gray-12'>" + "" + "</td>";	
	              	}
	              	if(p.RESULT_OPINION_CD == '20'){
	              	h2 += "<td class='bg-gray-12'>" + "" + "</td>";	
	              	h2 += "<td class='bg-gray-12'>" + "" + "</td>";	
	              	h2 += "<td class='bg-gray-12'>" + "*" + "</td>";	
	              	}      
// 	              	h2 += "<td class='bg-gray-12' rowspan='23'>" + "급-만성염증,빈혈,출혈성질환,기타혈액질환,각종백혈병,알레르기질환" + "</td>";	
	              	h2 += "<td class='bg-gray-12'></td>";
	              	h2 += "<td class='tbl-in-cont'>"
					h2 += "<button type='button' id='biologicalAgeTestBtn" + i2++ + "'class='co-btn is-outline-navy-1 btn-result-compare btn-open-popup' data-toggle='modal' data-target='#popupChkupResultCompareChart' onclick='compareBtnClick(this);'><span>비교하기</span></button>";
					h2 += "</td>"	  
	             	h2 += "</tr>";
	             	biologicalAgeTestBtn.push([p.CENTER_TEST_RESULT_CD_NAME,p.MID_CATEGORY,p.PARTNER_CENTER_NAME, p.VALUE_DIV_TYPE]);
				}		
				if(p.MID_CATEGORY == 93){			
					h3 += "<tr>";
	             	h3 += "<td class='ta-l'>" + p.CENTER_TEST_RESULT_CD_NAME + "</td>";
	             	if((p.MIN_VALUE != null && p.MAX_VALUE != null) && (p.MIN_VALUE != '' && p.MAX_VALUE != '')){
	             	h3 += "<td class='bg-gray-12'>" + p.MIN_VALUE + " ~ " + p.MAX_VALUE + "</td>";	
	             	}
	             	else if((p.MIN_VALUE == null && p.MAX_VALUE == null) || (p.MIN_VALUE == '' && p.MAX_VALUE == '')){
	             	h3 += "<td class='bg-gray-12'>"+ "-" + "</td>";	
	             	}
	             	else {
	             	h3 += "<td class='bg-gray-12'>" + p.MIN_VALUE + p.MAX_VALUE + "</td>";	
	             	} 
	             	if(p.RESULT_VALUE != null && p.MIN_VALUE != ''){
	                h3 += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";	
	                }
	             	else {
	                h3 += "<td class='bg-gray-12'></td>";	
	                }	              	
	              	if(p.RESULT_OPINION_CD == '10'){
	              	h3 += "<td class='bg-gray-12'>" + "*" + "</td>";		
	              	h3 += "<td class='bg-gray-12'>" + "" + "</td>";		
	              	h3 += "<td class='bg-gray-12'>" + "" + "</td>";		
	              	}
	              	if(p.RESULT_OPINION_CD == '00'){
	              	h3 += "<td class='bg-gray-12'>" + "" + "</td>";	
	              	h3 += "<td class='bg-gray-12'>" + "*" + "</td>";	
	              	h3 += "<td class='bg-gray-12'>" + "" + "</td>";	
	              	}
	              	if(p.RESULT_OPINION_CD == '20'){
	              	h3 += "<td class='bg-gray-12'>" + "" + "</td>";	
	              	h3 += "<td class='bg-gray-12'>" + "" + "</td>";	
	              	h3 += "<td class='bg-gray-12'>" + "*" + "</td>";	
	              	}   
// 	              	h3 += "<td class='bg-gray-12' rowspan='23'>" + "급-만성염증,빈혈,출혈성질환,기타혈액질환,각종백혈병,알레르기질환" + "</td>";	
	              	h3 += "<td class='bg-gray-12'></td>";
	              	h3 += "<td class='tbl-in-cont'>"
					h3 += "<button type='button' id='orientalMedicineTestBtn" + i3++ + "'class='co-btn is-outline-navy-1 btn-result-compare btn-open-popup' data-toggle='modal' data-target='#popupChkupResultCompareChart' onclick='compareBtnClick(this);'><span>비교하기</span></button>";
					h3 += "</td>"	  
	             	h3 += "</tr>";
	             	orientalMedicineTestBtn.push([p.CENTER_TEST_RESULT_CD_NAME,p.MID_CATEGORY,p.PARTNER_CENTER_NAME, p.VALUE_DIV_TYPE]);
				}	
				if(p.MID_CATEGORY == 94){						
					h4 += "<tr>";
	             	h4 += "<td class='ta-l'>" + p.CENTER_TEST_RESULT_CD_NAME + "</td>";
	             	if((p.MIN_VALUE != null && p.MAX_VALUE != null) && (p.MIN_VALUE != '' && p.MAX_VALUE != '')){
	             	h4 += "<td class='bg-gray-12'>" + p.MIN_VALUE + " ~ " + p.MAX_VALUE + "</td>";	
	             	}
	             	else if((p.MIN_VALUE == null && p.MAX_VALUE == null) || (p.MIN_VALUE == '' && p.MAX_VALUE == '')){
	             	h4 += "<td class='bg-gray-12'>"+ "-" + "</td>";	
	             	}
	             	else {
	             	h4 += "<td class='bg-gray-12'>" + p.MIN_VALUE + p.MAX_VALUE + "</td>";	
	             	} 
	             	if(p.RESULT_VALUE != null && p.MIN_VALUE != ''){
	                h4 += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";	
	                }
	             	else {
	                h4 += "<td class='bg-gray-12'></td>";	
	                }	              	
	              	if(p.RESULT_OPINION_CD == '10'){
	              	h4 += "<td class='bg-gray-12'>" + "*" + "</td>";		
	              	h4 += "<td class='bg-gray-12'>" + "" + "</td>";		
	              	h4 += "<td class='bg-gray-12'>" + "" + "</td>";		
	              	}
	              	else if(p.RESULT_OPINION_CD == '00'){
	              	h4 += "<td class='bg-gray-12'>" + "" + "</td>";	
	              	h4 += "<td class='bg-gray-12'>" + "*" + "</td>";	
	              	h4 += "<td class='bg-gray-12'>" + "" + "</td>";	
	              	}
	              	else if(p.RESULT_OPINION_CD == '20'){
	              	h4 += "<td class='bg-gray-12'>" + "" + "</td>";	
	              	h4 += "<td class='bg-gray-12'>" + "" + "</td>";	
	              	h4 += "<td class='bg-gray-12'>" + "*" + "</td>";	
	              	}
	              	else {
	              	h4 += "<td class='bg-gray-12'></td>";	
		            h4 += "<td class='bg-gray-12'></td>";	
		            h4 += "<td class='bg-gray-12'></td>";
	              	}	              	
// 	              	h4 += "<td class='bg-gray-12' rowspan='23'>" + "철결핍성빈혈(만성질환에 의한 빈혈)" + "</td>";	
	              	h4 += "<td class='bg-gray-12'></td>";
	              	h4 += "<td class='tbl-in-cont'>"
					h4 += "<button type='button' id='hairLossTestBtn" + i4++ + "'class='co-btn is-outline-navy-1 btn-result-compare btn-open-popup' data-toggle='modal' data-target='#popupChkupResultCompareChart' onclick='compareBtnClick(this);'><span>비교하기</span></button>";
					h4 += "</td>"	  
	             	h4 += "</tr>";
	             	hairLossTestBtn.push([p.CENTER_TEST_RESULT_CD_NAME,p.MID_CATEGORY,p.PARTNER_CENTER_NAME, p.VALUE_DIV_TYPE]);     
	             	
				}
			});						
			
		$("#dnaTest").html(h1); 			// 유전자 검사
		$("#biologicalAgeTest").html(h2);   // 생체나이검사
		$("#orientalMedicineTest").html(h3);// 한방검사
		$("#hairLossTest").html(h4); 		// 탈모검사		
		for(var i = 0; i < dnaTestBtn.length; i++){
			$("#dnaTestBtn" + i).val(dnaTestBtn[i]);				
		}		
		for(var i = 0; i < biologicalAgeTestBtn.length; i++){
			$("#biologicalAgeTestBtn" + i).val(biologicalAgeTestBtn[i]);				
		}		
		for(var i = 0; i < orientalMedicineTestBtn.length; i++){
			$("#orientalMedicineTestBtn" + i).val(orientalMedicineTestBtn[i]);				
		}		
		for(var i = 0; i < hairLossTestBtn.length; i++){
			$("#hairLossTestBtn" + i).val(hairLossTestBtn[i]);				
		}
		}, error : function(error) {
		   console.log(error);
		}
	});
   
   
});

//비교하기 버튼 클릭시(클릭한 데이터 리스트 가져오기)
function compareBtnClick(data){	
	let resultName = '';
	let midCategory = '';
	let partnerCenterName = '';
	var myChart
	let id = data.id;	
	data = data.value.split(',');
	midCategory = data[1];	
	partnerCenterName = data[2];
	divType = data[3];
	// 모달창 안뜰시 
	$(".popupChkupResultCompareChart")[0].ariaHidden = "false";
	$(".popupChkupResultCompareChart")[0].className = 'c-layer-popup type04 popupChkupResultCompareChart show';	
	$(".popupCompareBtn")[0].ariaHidden = "false";
	$(".popupCompareBtn")[0].className = 'c-layer-popup type04 popupCompareBtn show';	
	// divType이 문자이면은
	if(divType == 20){		
		$(".popupCompareBtn")[0].style.display = ""
			$(".popupChkupResultCompareChart")[0].style.display = "none"
			resultName = data[0];
			$.ajax({
				url : '/resultpage/comparisonofresultslist',
	    		type : 'get',
	    		data : {partnerCenterId:param.partnerCenterId, checkupDt:param.checkupDt, resultName:resultName, midCategory:midCategory},
				success : function(result) {
					let h = '';
					$.each(result, function(idx, p){	
						h += "<tr>";
	                    h += "<td>" + p.CHECKUP_DT + "</td>" 
	                    h += "<td>" + p.PARTNER_CENTER_NAME + "</td>";
						h += "<td class='ta-l'>"
						h += "<ul class='co-list-card circle02'>"						
						if( p.RESULT_OPINION_CD == '00'){h += "<li>정상</li>";}
						else {h += "<li>" + p.RESULT_VALUE + "</li>";}													
						h += "</ul>";
						h += "</td>";
		                h += "</tr>";	            		                	               	                
					});
					$("#divTypeResult").html(h);
									
				}, error : function() {
				   console.log(error);
				}
			});
			
	}
	else { // divType이 숫자이면은				
		$(".popupChkupResultCompareChart")[0].style.display = ""
		$(".popupCompareBtn")[0].style.display = "none"    	    	
    		resultName = data[0];    		
    		$.ajax({
        		url : '/resultpage/comparisonofresultslist',
        		type : 'get',
        		data : {partnerCenterId:param.partnerCenterId, checkupDt:param.checkupDt, resultName:resultName, midCategory:midCategory},
        		success : function(result) {        			
        			let arr = [], hospitalNameArray = [], data = [], uniqueArr = [], value = [];
    				let label = '', ref = '', ymin = 0, ymax = 0;        				         			
    				$.each(result, function(idx, p){     		
    					// 병원이름저장
    					arr.push(p.PARTNER_CENTER_NAME);	
    					// 검사일, 병원이름 저장
    					hospitalNameArray.push([p.CHECKUP_DT,p.PARTNER_CENTER_NAME]); 																								
    					// 검사결과 저장
    					data.push(p.RESULT_VALUE);          					        					
    					value.push(parseInt(p.RESULT_VALUE));          					        					
    					// 임상참고치 
    					if(p.PARTNER_CENTER_NAME == partnerCenterName){
    						// 만약 임상참고치 값이 하나라도 있으면은 임상참고치 출력
        					if((p.MIN_VALUE != null || p.MAX_VALUE != null) && (p.MIN_VALUE != '' || p.MAX_VALUE != '')){         				
//	        						max.push(parseInt(p.MAX_VALUE));         							
//	    							min.push(parseInt(p.MIN_VALUE));	        						        						        				        					
    							label = "임상참고치 : " + p.MIN_VALUE + "~" + p.MAX_VALUE
    							ymin = p.MIN_VALUE;
    							ymax = p.MAX_VALUE;        						
    						}   
        					// 없으면 병원검사 결과 출력
        					else { 							
        						label = resultName;	
        						ymin = 0;
        						ymax = 0;
        						value.push(parseInt(p.RESULT_VALUE));
        					}	
    					}        					
    				});        				
    				// 최대값, 최소값         				         			
    				const minValue = Math.min.apply(null, value) - 25;
    				const maxValue = Math.max.apply(null, value) + 25;          				         				         					         				         					         		
      				         				         					         				         					         		

        				// 남아있던 css 및 html 제거				
        				for(var i = 0; i < 5; i++){					
        					$("#compareTabUl").children('li')[i].style.display = "none";	
        					$("#compareTabUl").children('li')[i].children[0].innerHTML =  ''; 		
        				}							
        				// 병원이름 중복 제거
        				uniqueArr = [];	
        				var alltableArray2 = Array.prototype.slice.call(result);
        				$.each(arr, function(k, val){ 
        					if($.inArray(val, uniqueArr) === -1){
   					        uniqueArr.push(val); 
   						}     						
        				});
        				// 병원 숫자만큼 display none 해제
        				$.each(uniqueArr, function(idx, p){     				     			
        					$("#compareTabUl").children('li')[idx].style.display = "";	
        					$("#compareTabUl").children('li')[idx].children[0].innerHTML =  p; 				
        					$("#compareTabUl").children('li')[idx].children[0].value =  resultName + "," +  midCategory + "," + p + "," + divType;				
        				});									     						
        				// 비교하기 공통으로 만들어 놓고 혈압, 시력 처럼 두개의 값들을 비교해야 할 때 어떻게 해야 할 지 생각 해보자
        				// 임상참고치는 이름하고 이름으로 한번 해보자
                    	let ctx = '';   
        				let canvasId = ''
        				// tab변경 시 변경한 tab의 아이디 가져오기
        	            $("#compareTabBody").children('div').each(function(idx, p){        	            	
        					if(p.className == 'tab-content on'){	
        						canvasId = $("#" + p.id).find('canvas')[0].id
        						ctx = document.getElementById(canvasId).getContext('2d');						
        	            	}	            	
        	            })	            
   					// 임상참고치 미만이거나 초과이면은 borderColor: red로 표시
   					let borderColor = [];   					
   					if(ymin != 0 || ymax != 0){
   						$.each(data, function(idx, p){
   							if(p > ymax || p < ymin){							
   								borderColor.push('red');
   							}else {
   								borderColor.push('rgb(75, 192, 192)');
   							}						
   						});
        				}
   					// 기존에 남아 있던 차트 데이터 초기화
   					if (window.myChart != undefined){						
   					    window.myChart.destroy();
   					}   					
   					// 차트    	   					
                    window.myChart = new Chart(ctx, {            
                    	type: 'line',
                           data: {
                              datasets: [
                                  {
                                  	fill: false,	
                                  	label: label,
                                  	data: data,          
   									borderColor: borderColor,
                                    type: 'line',	
                                    tension: 0,	   // 높이면 점점 둥근모양으로 변한다
                                    borderWidth: 2 // 그래프 선 크기
                                    },
                             ],
                             labels: hospitalNameArray,                             
                            },            	
                            options: {                        	       
                               annotation: {		// 그래프 뒤에 영역 설정
                                  annotations: [{
                                    drawTime: "beforeDatasetsDraw",
                                    type: "box",
                                    xScaleID: "x-axis-0",
                                    yScaleID: "y-axis-0",
                                    borderWidth: 0,
                                    yMin: ymin,
                                    yMax: ymax,
                                    backgroundColor: 'rgba(128, 216, 255, 0.1)'
                                  }]
                               },
                               scales: {
                    				yAxes: [{
                    					ticks: {		// 그래프 눈금 조절
//                     						min: minValue,
//           	         					max: maxValue,
                    						fontSize : 14,
                    						borderColor: 'red'
                    					}
                    				}],
                    				xAxes: [{ // labels 크기 및 컬러 변경
                   					ticks:{          
                   						fontColor : 'black',
                   						fontSize : 15
                   					}                    					
                   				}]
                    			},                 			
                               point: {
                                	borderRadius: 30,                            
                                   hoverRadius: 30,
                               },
                               hover: {
                    				animationDuration: 0
                    			},
                               animation: {   	// 그래프위에 value표사                     	
                    				duration: 1,
                    				onComplete: function () {
                    					var chartInstance = this.chart,            					
                    					ctx = chartInstance.ctx;
                    					ctx.font = Chart.helpers.fontString('15', 'normal', 'Helvetica Neue');
                    					ctx.fillStyle = 'black';
                    					ctx.textAlign = 'center';
                    					ctx.textBaseline = 'bottom';

                    					this.data.datasets.forEach(function (dataset, i) {
                    						var meta = chartInstance.controller.getDatasetMeta(i);
                    						meta.data.forEach(function (bar, index) {
                    							var data = dataset.data[index];							
                    							ctx.fillText(data, bar._model.x, bar._model.y - 20);
                    						});
                    					});
                    				}
                    			},
                            }                           
                        });                                 
        		}, error : function(error) {
        		   console.log(error);
        		}
        	});	     
	}
}
function closeBtnClick(){    	
	for(var i = 1; i < 5; i++){
		$("#compareTabUl").children('li').children('a')[0].className = 'on';
		$("#compareTabUl").children('li').children('a')[i].className = ''; 	
		$("#compareTabUl").children('li')[i -1].children[0].id = 'chkupResultCompareTab_0' + i; 	
	}	      	
} 


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
</script>  	 	
</html>