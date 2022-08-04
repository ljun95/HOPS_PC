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
                                        <li>
                                            <div class="rsv-step">
                                                <a href="${path }/resultpage/resultinfo">
                                                    <p class="rsv-title">종합소견</p>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="is-now">
                                            <div class="rsv-step">
                                                <a href="javascrpit:;">
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
                                    <h1 class="title">기초검사</h1>
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
                                                    <div class="co-accordion on">
                                                        <a href="javascript:;" role="button" class="btn-accrodion">
                                                            <div class="left">
                                                                <div class="inner">
                                                                    <p class="txt">신체 계측 및 혈압 검사</p>
                                                                </div>
                                                            </div>
                                                            <div class="right">
                                                                <div class="inner">
                                                                    <div class="cnt">(<span id="resultCount">0</span>)</div>
                                                                    <div class="ico-accordion"><span class="is-blind">펼치기</span></div>
                                                                </div>
                                                            </div>
                                                        </a>
                                                        <div class="accrodion-panel">
                                                            <div class="panel-cont">
                                                                <div class="chkup-result-cont type01">
                                                                    <div class="row">
                                                                        <div class="col-6">
                                                                            <div class="row inner result-card01">
                                                                                <div class="col-4 col-title">
                                                                                    <p class="title">신장</p>
                                                                                </div>
                                                                                <div class="col-4 col-compare">
                                                                                    <div class="compare-info">
                                                                                        <div class="unit-box" id="kidneyList">
                                                                                            
                                                                                        </div>                                                                                        
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-4 col-btn">
                                                                                    <div class="buttons">                                                                                    	
                                                                                        <button type="button" id="kidneyBtn" class="co-btn is-outline-navy-1 btn-result-compare btn-open-popup" data-toggle="modal" data-target="#popupChkupResultCompareChart" onclick="compareBtnClick(this);"><span>비교하기</span></button>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-6">
                                                                            <div class="row inner result-card01">
                                                                                <div class="col-4 col-title">
                                                                                    <p class="title">혈압</p>
                                                                                    <button class="btn-chkup-info-detail btn-open-popup" data-toggle="modal" data-target="#popupChkupResultCtg01">
                                                                                        <i class="ico-type01 t-i-info01"></i>
                                                                                    </button>
                                                                                </div>
                                                                                <div class="col-4 col-compare">
                                                                                    <div class="compare-info">
                                                                                        <div class="unit-box" id="bloodPressureList">
                                                                                           
                                                                                        </div>                                                                                        
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-4 col-btn">
                                                                                    <div class="buttons">
                                                                                        <button type="button" id="bloodPressureBtn" class="co-btn is-outline-navy-1 btn-result-compare btn-open-popup" data-toggle="modal" data-target="#popupChkupResultCompareChart" onclick="compareBtnClick(this);"><span>비교하기</span></button>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row">
                                                                        <div class="col-6">
                                                                            <div class="row inner result-card01">
                                                                                <div class="col-4 col-title">
                                                                                    <p class="title">체중</p>
                                                                                </div>
                                                                                <div class="col-4 col-compare">
                                                                                    <div class="compare-info">
                                                                                        <div class="unit-box" id="weightList">
                                                                                            
                                                                                        </div>                                                                                        
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-4 col-btn">
                                                                                    <div class="buttons">
                                                                                        <button type="button" id="weightBtn" class="co-btn is-outline-navy-1 btn-result-compare btn-open-popup" data-toggle="modal" data-target="#popupChkupResultCompareChart" onclick="compareBtnClick(this);"><span>비교하기</span></button>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-6">
                                                                            <div class="row inner result-card01">
                                                                                <div class="col-4 col-title">
                                                                                    <p class="title">허리둘레</p>
                                                                                    <button class="btn-chkup-info-detail">
                                                                                        <i class="ico-type01 t-i-info01"><span>설명 자세히 보기</span></i>
                                                                                    </button>
                                                                                </div>
                                                                                <div class="col-4 col-compare">
                                                                                    <div class="compare-info">
                                                                                        <div class="unit-box" id="waistCircumferenceList">                                                                                            
                                                                                        </div>                                                                                        
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-4 col-btn">
                                                                                    <div class="buttons">
                                                                                        <button type="button" id="waistCircumferenceBtn" class="co-btn is-outline-navy-1 btn-result-compare btn-open-popup" data-toggle="modal" data-target="#popupChkupResultCompareChart" onclick="compareBtnClick(this);"><span>비교하기</span></button>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row">
                                                                        <div class="col-6">
                                                                            <div class="row inner result-card01">
                                                                                <div class="col-4 col-title">
                                                                                    <p class="title">체질량지수</p>
                                                                                    <button class="btn-chkup-info-detail">
                                                                                        <i class="ico-type01 t-i-info01"><span>설명 자세히 보기</span></i>
                                                                                    </button>
                                                                                </div>
                                                                                <div class="col-4 col-compare">
                                                                                    <div class="compare-info">
                                                                                        <div class="unit-box" id="bodyMassIndexList">                                                                                            
                                                                                        </div>                                                                                        
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-4 col-btn">
                                                                                    <div class="buttons">
                                                                                        <button type="button" id="bodyMassIndexBtn" class="co-btn is-outline-navy-1 btn-result-compare btn-open-popup" data-toggle="modal" data-target="#popupChkupResultCompareChart" onclick="compareBtnClick(this);"><span>비교하기</span></button>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-6">
                                                                            <div class="row inner result-card01">
                                                                                <div class="col-4 col-title">
                                                                                    <p class="title">허벅지둘레</p>
                                                                                </div>
                                                                                <div class="col-4 col-compare">
                                                                                    <div class="compare-info">
                                                                                        <div class="unit-box" id="thighCircumferenceList">                                                                                           
                                                                                        </div>                                                                                        
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-4 col-btn">
                                                                                    <div class="buttons">
                                                                                        <button type="button" id="thighCircumferenceBtn" class="co-btn is-outline-navy-1 btn-result-compare btn-open-popup" data-toggle="modal" data-target="#popupChkupResultCompareChart" onclick="compareBtnClick(this);"><span>비교하기</span></button>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>   
                                                <li>
                                                    <div class="co-accordion">
                                                        <a href="javascript:;" role="button" class="btn-accrodion">
                                                            <p class="txt">시력, 안저촬영, 안압검사</p>
                                                            <div class="ico-accordion"><span class="is-blind">펼치기</span></div>
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
                                                                                <th>구분</th>                                                                                
                                                                                <th colspan="2">현재결과</th>
                                                                                <th><span class="skip">비교하기</span></th>
                                                                                <th>구분</th>
                                                                                <th colspan="2">현재결과</th>                                                                                
                                                                                <th><span class="skip">비교하기</span></th>
                                                                            </tr>
                                                                        </thead>                                                                     
                                                                        <tbody id="">
													                        <tr>
																				<td class='ta-l'>좌측시력</td>																																		                                                                  
																				<td class='bg-gray-12'><div id="leftVision"></div></td>                                                                                
																				<td class='bg-gray-12'><div id="leftVisionResult"></div></td>																					
																				<td class='tbl-in-cont'>
																					<button type="button" id="leftVisionBtn" class="co-btn is-outline-navy-1 btn-result-compare btn-open-popup" data-toggle="modal" data-target="#popupChkupResultCompareChart" onclick="compareBtnClick(this);"><span>비교하기</span></button>
																				</td>																																																																																
																				<td class='ta-l'>안압</td>     
																				                                                                           
																				<td class='bg-gray-12'>
																					<div id="leftIntraocularPressure"></div>
																				</td>                                                                                                                                                               
																				<td class='bg-gray-12'>
																					<div id="rightIntraocularPressure"></div>
																				</td>				
																				<td class='tbl-in-cont'>
																					<button type="button" id="intraocularPressureBtn" class="co-btn is-outline-navy-1 btn-result-compare btn-open-popup" data-toggle="modal" data-target="#popupChkupResultCompareChart" onclick="compareBtnClick(this);"><span>비교하기</span></button>
																				</td>																					                                                                                                                                                              																				
																			</tr>											
																			<tr>
															                    <td class='ta-l'>우측시력</td>                                                                                
																				<td class='bg-gray-12'>
																					<div id="rightVision"></div>
																				</td>                   																				               						
																				<td class='bg-gray-12'>
																					<div id="rightVisionResult"></div>
																				</td>                   
																				<td class='tbl-in-cont'>
																					<button type="button" id="rightVisionBtn" class="co-btn is-outline-navy-1 btn-result-compare btn-open-popup" data-toggle="modal" data-target="#popupChkupResultCompareChart" onclick="compareBtnClick(this);"><span>비교하기</span></button>
																				</td>					               																								
																				<td class='ta-l'>색각</td>                                                                                
																				<td class='bg-gray-12' colspan="2">
																					<div id="colorVision"></div>
																				</td>                                                                                                                                                               
																				                                                                                                                                                              
																				<td class='tbl-in-cont'>
																					<button type="button" id="colorVisionBtn" class="co-btn is-outline-navy-1 btn-result-compare btn-open-popup" data-toggle="modal" data-target="#popupChkupResultCompareChart" onclick="compareBtnClick(this);"><span>비교하기</span></button>
																				</td>
																			</tr>											
																			<tr>
																				<td class='ta-l'>안저</td>                                                                                
																				<td class='bg-gray-12' colspan='6'>
																					<div id="fundus"></div>
																				</td>                                                                                                                                                                                                                                                                                                                              
																				<td class='tbl-in-cont'>
																					<button type="button" id="fundusBtn" class="co-btn is-outline-navy-1 btn-result-compare btn-open-popup" data-toggle="modal" data-target="#popupChkupResultCompareChart" onclick="compareBtnClick(this);"><span>비교하기</span></button>
																				</td>
																			</tr>	                                                                             
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
                                                            <p class="txt">청력검사</p>
                                                            <div class="ico-accordion"><span class="is-blind">펼치기</span></div>
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
                                                                                <th>구분</th>                                                                                
                                                                                <th>250Hz</th>
                                                                                <th>500Hz</th>
                                                                                <th>1000Hz</th>
                                                                                <th>2000Hz</th>
                                                                                <th>3000Hz</th>
                                                                                <th>4000Hz</th>                                                                                                                                                                
                                                                                <th>6000Hz</th>                                                                                                                                                                
<!--                                                                                 <th><span class="skip">비교하기</span></th> -->
                                                                            </tr>
                                                                        </thead>                                                                     
                                                                        <tbody id="basicInspectionInfoTable">
													                        <tr>
																				<td class='ta-l'>좌dB/우dB</td>																																		                                                                 
																				<td class='bg-gray-12'><div id="result250Hz"></div></td>                                                                                
																				<td class='bg-gray-12'><div id="result500Hz"></div></td>																																																																																																						
																				<td class='bg-gray-12'><div id="result1000Hz"></div></td>																																																																																																						
																				<td class='bg-gray-12'><div id="result2000Hz"></div></td>																																																																																																						
																				<td class='bg-gray-12'><div id="result3000Hz"></div></td>																																																																																																						
																				<td class='bg-gray-12'><div id="result4000Hz"></div></td>																																																																																																						
																				<td class='bg-gray-12'><div id="result6000Hz"></div></td>																																																																																																						
<!-- 																				<td class='tbl-in-cont'> -->
<!-- 																					<button type='button' class='co-btn bg-navy-1 btn-result-compare'><span>비교하기</span></button> -->
<!-- 																				</td> -->
																			</tr>
																			<tr>
																				<td class='ta-l'>소견</td>																																		                                                                 
																				<td class='bg-gray-12' colspan="7"><div id="peeOpinion"></div></td>
<!-- 																				<td class='tbl-in-cont'> -->
<!-- 																					<button type='button' class='co-btn bg-navy-1 btn-result-compare'><span>비교하기</span></button> -->
<!-- 																				</td> -->
																			</tr>																														                                                                            
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
                                                            <p class="txt">소변검사</p>
                                                            <div class="ico-accordion"><span class="is-blind">펼치기</span></div>
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
                                                                        <tbody id="basalUrineTestTable">
													                                                                                                
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
                                                            <p class="txt">대사증후군 검사</p>
                                                            <div class="ico-accordion"><span class="is-blind">펼치기</span></div>
                                                        </a>
                                                        <div class="accrodion-panel">
                                                            <div class="panel-cont">
                                                                <div class="co-table cont-type04 tbl-center tbl-chkup-result01">
                                                                    <table class="table">                                                                        
                                                                        <colgroup>
                                                                            <col style="width: 12.5%" />
                                                                            <col style="width: 12.5%" />                                                                                                                                                                                                                                 
                                                                            <col style="width: 12.5%" />                                                                                                                                                                                                                                 
                                                                        </colgroup>
                                                                        <thead>
                                                                            <tr>
                                                                                <th>위험요인</th>                                                                                
                                                                                <th>진단기준</th>                                                                                
                                                                                <th>종전결과</th>                                                                                
                                                                                <th>현재결과</th>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
                                                                            </tr>
                                                                        </thead>                                                                     
                                                                        <tbody id="metabolicSyndromeTest">
																																					                                                                             
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
<!-- 검진결과숫자비교하기 -->
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
   $("#kidneyList").empty();
   $("#bloodPressureList").empty();
   $("#weightList").empty();
   $("#waistCircumferenceList").empty();
   $("#bodyMassIndexList").empty();
   $("#thighCircumferenceList").empty();	
   $("#leftVision").empty();							
   $("#leftVisionResult").empty();
   $("#rightVision").empty();							
   $("#rightVisionResult").empty();
   $("#rightIntraocularPressure").empty();							
   $("#leftIntraocularPressure").empty();							
   $("#colorVision").empty();
   $("#fundus").empty();		
   let h = '';
   let i = 0;
   $.ajax({
     		url : '/resultpage/examinationresultlookupinformationList',
     		type : 'get',
     		data : {partnerCenterId:param.partnerCenterId, checkupNo:param.checkupNo, checkupProposNo:param.checkupProposNo},
     		success : function(result) {
     			let bpResult = [];
     			let bpSymbol = '';
     			let bpName = '';
     			let resultName = '';
     			let category = '';
     			let centerName = '';
     			$.each(result, function(idx, p){
     					
     					if(p.MID_CATEGORY == 13){										
     						if(p.CENTER_TEST_RESULT_CD_NAME == '신장'){							     							
     							$("#kidneyList").append("<em class='r-value' id='kidneyValue'>" + p.RESULT_VALUE +"</em>");
     							$("#kidneyList").append("<span class='unit'  id='kidneySymbol'>" + p.VALUE_SYMBOL + "</span>");							
     							$("#kidneyBtn").val([p.CENTER_TEST_RESULT_CD_NAME,p.MID_CATEGORY,p.PARTNER_CENTER_NAME, p.VALUE_DIV_TYPE])						
     							if(p.RESULT_VALUE != null &&  p.RESULT_VALUE != ''){							
     								i++;							
     							}
     						}   							
     						if(p.CENTER_TEST_RESULT_CD_NAME == '혈압_이완기' || p.CENTER_TEST_RESULT_CD_NAME == '혈압_수축기'){
     							bpName += p.CENTER_TEST_RESULT_CD_NAME + "|";     							
     							bpResult.push(p.RESULT_VALUE);
     							bpSymbol = p.VALUE_SYMBOL;
     							$("#bloodPressureBtn").val([bpName,p.MID_CATEGORY,p.PARTNER_CENTER_NAME, p.VALUE_DIV_TYPE, 'multigraph'])			
     							if(p.CENTER_TEST_RESULT_CD_NAME == '혈압_이완기' && p.RESULT_VALUE != null &&  p.RESULT_VALUE != ''){							
     								i++;							     								
     							}
     						}
     						if(p.CENTER_TEST_RESULT_CD_NAME == '체중'){     							
     							$("#weightList").append("<em class='r-value'>" + p.RESULT_VALUE +"</em>");
     							$("#weightList").append("<span class='unit'>" + p.VALUE_SYMBOL + "</span>");							
     							$("#weightBtn").val([p.CENTER_TEST_RESULT_CD_NAME,p.MID_CATEGORY,p.PARTNER_CENTER_NAME, p.VALUE_DIV_TYPE])	
     							if(p.RESULT_VALUE != null &&  p.RESULT_VALUE != ''){							
     								i++;							
     							}
     						}
     						if(p.CENTER_TEST_RESULT_CD_NAME == '허리둘레'){     							
     							$("#waistCircumferenceList").append("<em class='r-value'>" + p.RESULT_VALUE +"</em>");
     							$("#waistCircumferenceList").append("<span class='unit'>" + p.VALUE_SYMBOL + "</span>");							
     							$("#waistCircumferenceBtn").val([p.CENTER_TEST_RESULT_CD_NAME,p.MID_CATEGORY,p.PARTNER_CENTER_NAME, p.VALUE_DIV_TYPE])	
     							if(p.RESULT_VALUE != null &&  p.RESULT_VALUE != ''){							
     								i++;							
     							}
     						}
     						if(p.CENTER_TEST_RESULT_CD_NAME == '체질량지수'){     							
     							$("#bodyMassIndexList").append("<em class='r-value'>" + p.RESULT_VALUE +"</em>");
     							$("#bodyMassIndexList").append("<span class='unit'>" + p.VALUE_SYMBOL + "</span>");							
     							$("#bodyMassIndexBtn").val([p.CENTER_TEST_RESULT_CD_NAME,p.MID_CATEGORY,p.PARTNER_CENTER_NAME, p.VALUE_DIV_TYPE])
     							if(p.RESULT_VALUE != null &&  p.RESULT_VALUE != ''){							
     								i++;							
     							}
     						}
     						if(p.CENTER_TEST_RESULT_CD_NAME == '허벅지둘레'){     						
     							$("#thighCircumferenceList").append("<em class='r-value'>" + p.RESULT_VALUE +"</em>");
     							$("#thighCircumferenceList").append("<span class='unit'>" + p.VALUE_SYMBOL + "</span>");							
     							$("#thighCircumferenceBtn").val([p.CENTER_TEST_RESULT_CD_NAME,p.MID_CATEGORY,p.PARTNER_CENTER_NAME, p.VALUE_DIV_TYPE])
     							if(p.RESULT_VALUE != null &&  p.RESULT_VALUE != ''){							
     								i++;							
     							}
     						}												
     					}						
     					if(p.MID_CATEGORY == 16){						
     						if(p.CENTER_TEST_RESULT_CD_NAME == '좌측시력'){							
     							$("#leftVision").text(p.RESULT_VALUE); 							
     							$("#leftVisionResult").text('교정)'); 
     							$("#leftVisionBtn").val([p.CENTER_TEST_RESULT_CD_NAME,p.MID_CATEGORY,p.PARTNER_CENTER_NAME, p.VALUE_DIV_TYPE])
     						}
     						if(p.CENTER_TEST_RESULT_CD_NAME == '우측시력'){
     							$("#rightVision").text(p.RESULT_VALUE); 							
     							$("#rightVisionResult").text('교정)'); 
     							$("#rightVisionBtn").val([p.CENTER_TEST_RESULT_CD_NAME,p.MID_CATEGORY,p.PARTNER_CENTER_NAME, p.VALUE_DIV_TYPE])
     						}	
     						if(p.CENTER_TEST_RESULT_CD_NAME == '우안압'){
     							$("#rightIntraocularPressure").text("우) " + p.RESULT_VALUE); 
     							resultName += p.CENTER_TEST_RESULT_CD_NAME + "|";
     							category = p.MID_CATEGORY;
     							centerName = p.PARTNER_CENTER_NAME;
     							$("#intraocularPressureBtn").val([resultName,category,centerName, p.VALUE_DIV_TYPE, 'multigraph'])
     						}	
     						if(p.CENTER_TEST_RESULT_CD_NAME == '좌안압'){
     							$("#leftIntraocularPressure").text("좌) " + p.RESULT_VALUE); 
     							resultName += p.CENTER_TEST_RESULT_CD_NAME + "|";     							
     							category = p.MID_CATEGORY;
     							centerName = p.PARTNER_CENTER_NAME;
     							$("#intraocularPressureBtn").val([resultName,category,centerName, p.VALUE_DIV_TYPE, 'multigraph'])
     						}	
     						if(p.CENTER_TEST_RESULT_CD_NAME == '색각'){
     							$("#colorVision").text(p.RESULT_VALUE); 
     							$("#colorVisionBtn").val([p.CENTER_TEST_RESULT_CD_NAME,p.MID_CATEGORY,p.PARTNER_CENTER_NAME, p.VALUE_DIV_TYPE])
     						}			
     						if(p.CENTER_TEST_RESULT_CD_NAME == '안저'){
     							$("#fundus").text(p.RESULT_VALUE); 
     							$("#fundusBtn").val([p.CENTER_TEST_RESULT_CD_NAME,p.MID_CATEGORY,p.PARTNER_CENTER_NAME, p.VALUE_DIV_TYPE])     							
     						}
     					}		
     				});		     				
     				// 최대값, 최소값     
     				let minValue = '';	//이완기
     				let maxValue = '';	//수축기
     				let value = '';		//결과값    				
     				if(bpResult.length != 0){
     					minValue = Math.min.apply(null, bpResult);
         				maxValue = Math.max.apply(null, bpResult);
         				value = minValue + " / " + maxValue; 
     				}  				     				
     				$("#resultCount").text(i);      				
     				$("#bloodPressureList").append("<em class='r-value'>" + value  +"</em>");					     				
					$("#bloodPressureList").append("<span class='unit'>" + bpSymbol + "</span>");
     		}, error : function() {
     		   console.log(error);
     		}
     	});     	
     	
   
   
   $.ajax({
		url : '/resultpage/basichearingtest',
		type : 'get',
		data : {partnerCenterId:param.partnerCenterId, checkupNo:param.checkupNo, checkupProposNo:param.checkupProposNo},
		success : function(result) {			
			let right250HzValue = '';
			let left250HzValue = '';			
			let right500HzValue = '';
			let left500HzValue = '';			
			let right1000HzValue = '';
			let left1000HzValue = '';			
			let right2000HzValue = '';
			let left2000HzValue = '';			
			let right3000HzValue = '';
			let left3000HzValue = '';			
			let right4000HzValue = '';
			let left4000HzValue = '';			
			let right6000HzValue = '';
			let left6000HzValue = '';			
			let opinion = '';			
									
			$.each(result, function(idx, p){
				
				if(p.MID_CATEGORY == 31){
					if(p.TEST_ITEM_CD == "KMI1031"){						
						if(p.CENTER_TEST_RESULT_CD_NAME.indexOf('우') != '-1'){							
								right250HzValue = p.RESULT_VALUE
						}
						if(p.CENTER_TEST_RESULT_CD_NAME.indexOf('좌') != '-1'){							
								left250HzValue =   p.RESULT_VALUE
						}							
					}										
					if(p.TEST_ITEM_CD == "KMI1032"){
						if(p.CENTER_TEST_RESULT_CD_NAME.indexOf('우') != '-1'){						
							right500HzValue =   p.RESULT_VALUE
						}
						if(p.CENTER_TEST_RESULT_CD_NAME.indexOf('좌') != '-1'){							
							left500HzValue =   p.RESULT_VALUE
						}					
					}					
					if(p.TEST_ITEM_CD == "KMI1033"){
						if(p.CENTER_TEST_RESULT_CD_NAME.indexOf('우') != '-1'){						
							right1000HzValue =   p.RESULT_VALUE
						}
						if(p.CENTER_TEST_RESULT_CD_NAME.indexOf('좌') != '-1'){							
							left1000HzValue =   p.RESULT_VALUE
						}	
					}					
					if(p.TEST_ITEM_CD == "KMI1034"){
						if(p.CENTER_TEST_RESULT_CD_NAME.indexOf('우') != '-1'){						
							right2000HzValue =   p.RESULT_VALUE
						}
						if(p.CENTER_TEST_RESULT_CD_NAME.indexOf('좌') != '-1'){							
							left2000HzValue =   p.RESULT_VALUE
						}						
					}					
					if(p.TEST_ITEM_CD == "KMI1035"){
						if(p.CENTER_TEST_RESULT_CD_NAME.indexOf('우') != '-1'){						
							right3000HzValue =   p.RESULT_VALUE
						}
						if(p.CENTER_TEST_RESULT_CD_NAME.indexOf('좌') != '-1'){							
							left3000HzValue =   p.RESULT_VALUE
						}	
					}					
					if(p.TEST_ITEM_CD == "KMI1036"){
						if(p.CENTER_TEST_RESULT_CD_NAME.indexOf('우') != '-1'){						
							right4000HzValue =   p.RESULT_VALUE
						}
						if(p.CENTER_TEST_RESULT_CD_NAME.indexOf('좌') != '-1'){							
							left4000HzValue =   p.RESULT_VALUE
						}	
					}					
					if(p.TEST_ITEM_CD == "KMI1037"){
						if(p.CENTER_TEST_RESULT_CD_NAME.indexOf('우') != '-1'){						
							right6000HzValue =   p.RESULT_VALUE
						}
						if(p.CENTER_TEST_RESULT_CD_NAME.indexOf('좌') != '-1'){							
							left6000HzValue =   p.RESULT_VALUE
						}
					}															
					if(p.TEST_ITEM_CD == "KMI1038"){					
						if(p.RESULT_OPINION_CD == '00'){
							opinion = "정상"	
						}
						
					}															
				}
			});
			
			$("#result250Hz").text(left250HzValue + "/" + right250HzValue);			// 청력검사
			$("#result500Hz").text(left500HzValue + "/" + right500HzValue);			// 청력검사
			$("#result1000Hz").text(left1000HzValue + "/" + right1000HzValue);		// 청력검사
			$("#result2000Hz").text(left2000HzValue + "/" + right2000HzValue);		// 청력검사
			$("#result3000Hz").text(left3000HzValue + "/" + right3000HzValue);		// 청력검사
			$("#result4000Hz").text(left4000HzValue + "/" + right4000HzValue);		// 청력검사
			$("#result6000Hz").text(left6000HzValue + "/" + right6000HzValue);		// 청력검사						
			$("#peeOpinion").text(opinion);											// 청력검사
			
		}, error : function() {
		   console.log(error);
		}
	});
   
   $.ajax({
		url : '/resultpage/basalurinetest',
		type : 'get',
		data : {partnerCenterId:param.partnerCenterId, checkupNo:param.checkupNo, checkupProposNo:param.checkupProposNo},
		success : function(result) {
			let h = '';			
			let basalUrineTestBtn = [];
			let j = 0;
			$.each(result, function(idx, p){			
				if(p.MID_CATEGORY == 32){
					var i = 0;
					h += "<tr>";
                 	h += "<td class='ta-l'>" + p.CENTER_TEST_RESULT_CD_NAME + "</td>";
                 	if((p.MIN_VALUE != null && p.MAX_VALUE != null) && (p.MIN_VALUE != '' && p.MAX_VALUE != '')){
                 	h += "<td class='bg-gray-12'>" + p.MIN_VALUE + " ~ " + p.MAX_VALUE + "</td>";	
                 	}
                 	else if((p.MIN_VALUE == null && p.MAX_VALUE == null) || (p.MIN_VALUE == '' && p.MAX_VALUE == '')){
                 	h += "<td class='bg-gray-12'>"+ "-" + "</td>";	
                 	}
                 	else {
                 	h += "<td class='bg-gray-12'>" + p.MIN_VALUE + p.MAX_VALUE + "</td>";	
                 	}                 		                 	                 	                  	
                  	if(p.RESULT_OPINION_CD == '10'){
                  	h += "<td class='bg-gray-12' style='color: red;'>" + p.RESULT_VALUE + "</td>";                  	
                  	h += "<td class='bg-gray-12'>" + "*" + "</td>";		
                  	h += "<td class='bg-gray-12'>" + "" + "</td>";		
                  	h += "<td class='bg-gray-12'>" + "" + "</td>";		
                  	}
                  	if(p.RESULT_OPINION_CD == '00'){                  	
                  	h += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";
                  	h += "<td class='bg-gray-12'>" + "" + "</td>";	
                  	h += "<td class='bg-gray-12'>" + "*" + "</td>";	
                  	h += "<td class='bg-gray-12'>" + "" + "</td>";	
                  	}
                  	if(p.RESULT_OPINION_CD == '20'){
                  	h += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";
                  	h += "<td class='bg-gray-12'>" + "" + "</td>";	
                  	h += "<td class='bg-gray-12'>" + "" + "</td>";	
                  	h += "<td class='bg-gray-12'>" + "*" + "</td>";	
                  	}                    	                  	
                  	h += "<td class='bg-gray-12'>" + "방광염,요도염,요로결석,당뇨병,황달" + "</td>";	                  	
                  	h += "<td class='tbl-in-cont'>"
					h += "<button type='button' id='basalUrineTestBtn" + j++ + "'class='co-btn is-outline-navy-1 btn-result-compare btn-open-popup' data-toggle='modal' data-target='#popupChkupResultCompareChart' onclick='compareBtnClick(this);'><span>비교하기</span></button>";
					h += "</td>"
                 	h += "</tr>";                 	
                 	basalUrineTestBtn.push([p.CENTER_TEST_RESULT_CD_NAME,p.MID_CATEGORY,p.PARTNER_CENTER_NAME, p.VALUE_DIV_TYPE]);                 	
				}					
			});				        						
			$("#basalUrineTestTable").html(h); 		// 소변검사			
			// 버튼 value에 값넣기
			for(var i = 0; i < basalUrineTestBtn.length; i++){
				$("#basalUrineTestBtn" + i).val(basalUrineTestBtn[i]);				
			}			
		}, error : function() {
		   console.log(error);
		}
	});
   
   $.ajax({
		url : '/resultpage/inspectionresultlist',
		type : 'get',
		data : {partnerCenterId:param.partnerCenterId, checkupNo:param.checkupNo, checkupProposNo:param.checkupProposNo, checkupDt:param.checkupDt},
		success : function(result) {				
			var currentResult = result.currentResult
			var previousResults = result.previousResults
			equipmentInspectionResultsFunction(currentResult, previousResults);
		}, error : function(error) {
		   console.log(error);
		}
	});		
   
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
						h += "<li>" + p.RESULT_VALUE + "</li>";					
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
    	// 혈압 비교하기 버튼 클릭 시
    	if(data[4] == 'multigraph'){     		
    		bpName = data[0];
    		resultName = data[0].slice(0, -1);         		
    		$.ajax({
        		url : '/resultpage/bloodpressurecomparisonresult',
        		type : 'get',
        		data : {partnerCenterId:param.partnerCenterId, checkupDt:param.checkupDt, resultName:resultName, midCategory:midCategory},
        		success : function(result) {     			
        			  	let arr = [];
        			  	let hospitalNameArray = [];         			  	
        			  	let name = bpName.split('|');         			  	
        			  	var name1 = name[0];
        			  	var name2 = name[1];
        			  	let diastolic = [];
        			  	let systolic = [];
        			  	let ymin = 0;
        			  	let ymax = 0;              			  	
        			  	// 방법1. 일단 이완기, 수축기를 구분에서 arr에 저장을한다
        			  	// ex) arr1 = 이완기...
       			  	// ex) arr2 = 수축기...         			  	
        			  	$.each(result, function(idx, p){
        					arr.push(p.PARTNER_CENTER_NAME);
        					// 검사일, 병원이름 저장
         					hospitalNameArray.push([p.CHECKUP_DT,p.PARTNER_CENTER_NAME]);          					          					
	         				// 혈압 수축기 
        					if(name1 == p.CENTER_TEST_RESULT_CD_NAME){         						
        						systolic.push(parseInt(p.RESULT_VALUE));
	         				}
	         				// 혈압 이완기
	         				if(name2 == p.CENTER_TEST_RESULT_CD_NAME){
	         					diastolic.push(parseInt(p.RESULT_VALUE));
	         				}
	         				// 임상참고치	         				
							if(p.PARTNER_CENTER_NAME == partnerCenterName){								
								// box annotation
								if(p.MAX_VALUE != null || p.MIN_VALUE != null){									
									label = "임상참고치 : " + p.MIN_VALUE + " ~ " + p.MAX_VALUE;
									ymax = p.MAX_VALUE;
									ymin = p.MIN_VALUE;
								}
								else {
									label = '임상참고치';
								}								
         					}
        			  	});    
        				// 최대값, 최소값         				         			
        				const maxValue = Math.max.apply(null, systolic) + 20;
        				const minValue = Math.min.apply(null, diastolic) - 20;        				
	         			// 남아있던 css 및 html 제거				
	       				for(var i = 0; i < 5; i++){					
	       					$("#compareTabUl").children('li')[i].style.display = "none";	
	       					$("#compareTabUl").children('li')[i].children[0].innerHTML =  ''; 		
	       				}							
	       				// 병원이름 중복 제거
	       				uniqueArr = [];		       				
	       				$.each(arr, function(k, val){ 
	       					if($.inArray(val, uniqueArr) === -1){
	  					        uniqueArr.push(val); 
	  						}     						
	       				});         			       				
	       				// 증복제거(차트 labels에 사용)	  	       				
	       				var uniqueNameArr = [];
	       				var itemFound = {};
	       				for(var i = 0; i < hospitalNameArray.length; i++){
	       					var stringfield = JSON.stringify(hospitalNameArray[i]);
	       					if(itemFound[stringfield]){
	       						continue;
	       					}
	       					uniqueNameArr.push(hospitalNameArray[i]);
	       					itemFound[stringfield] = true;
	       				}	       					       				    
	       				// 병원 숫자만큼 display none 해제	       				
	       				$.each(uniqueArr, function(idx, p){	       					
	       					$("#compareTabUl").children('li')[idx].style.display = "";	
	       					$("#compareTabUl").children('li')[idx].children[0].innerHTML =  p; 				       					
	       					$("#compareTabUl").children('li')[idx].children[0].value =  resultName + "|," +  midCategory + "," + p  + "," + divType + ",multigraph";					       								
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
	   					let backgroundColor1 = [];    							
	   					let backgroundColor2 = [];    							
	   					if(ymin != 0 || ymax != 0){
   						// 혈압 이완기
   						$.each(diastolic, function(idx, p){	    						
   							if(p < ymin){							
   								backgroundColor1.push('red');
   							}else {
   								backgroundColor1.push('blue');
   							}						
   						});
   						// 혈압 수축기
   						$.each(systolic, function(idx, p){    							    						
   							if(p < ymax){							    								
   								backgroundColor2.push('blue');
   							}else {
   								backgroundColor2.push('red');
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
                                     },
                                    {
                                    	fill: false,	
                                    	label: '수축기',
                                    	data: systolic,          
   									borderColor: 'red',
   									backgroundColor: backgroundColor2,
                                       type: 'line',
                                       tension: 0,
                                       borderWidth: 0.7
                                    },
                                    {
                                    	fill: false,	
                                    	label: '이완기',
                                    	data: diastolic,          
   									borderColor: 'blue',
   									backgroundColor: backgroundColor1,
                                       type: 'line',
                                       tension: 0,
                                       borderWidth: 0.7
                                    },                                     
                                ],
                             labels: uniqueNameArr,                             
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
                    					ticks: {
                    						// 그래프 눈금 조절
                    						min: minValue,
          	         						max: maxValue,
                    						fontSize : 14,
                    						borderColor: 'red'
                    					}
                    				}],
                    				// labels 크기 및 컬러 변경
	                 				xAxes: [{ 
	                					ticks:{          
	                						fontColor : 'black',
	                						fontSize : 15
	                					}                    					
	                				}]
                    			},                 			
                               point: {borderRadius: 30,hoverRadius: 30,},
                               hover: {animationDuration:0},
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
                    							ctx.fillText(data, bar._model.x, bar._model.y - 5);
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
    	else {    		
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
// 	        						max.push(parseInt(p.MAX_VALUE));         							
// 	    							min.push(parseInt(p.MIN_VALUE));	        						        						        				        					
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
        	            });	            
	   					// 임상참고치 미만이거나 초과이면은 borderColor: red로 표시
	   					let borderColor = [];   					
	   					if(ymin != 0 || ymax != 0){
	   						$.each(data, function(idx, p){
	   							if(p > parseInt(ymax) || p < parseInt(ymin)){							
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
	                        data:{																					// 높이면 점점 둥근모양으로 변한다, 그래프 선 크기		
	                             datasets: [{fill: false, label: label, data: data, borderColor: borderColor, type: 'line', tension: 0, borderWidth: 2}],
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
// 	                    		 				min: minValue,
// 	          	         		 				max: maxValue,
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
	                             point: {borderRadius: 30,hoverRadius: 30,},
	                             hover: {animationDuration:0},
	                          	 // 그래프위에 value
	                             animation: {   	                     	
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
		                    					ctx.fillText(data, bar._model.x, bar._model.y - 15);
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
}
function closeBtnClick(){    	
	for(var i = 1; i < 5; i++){		
		$("#compareTabUl").children('li').children('a')[0].className = 'on';
		$("#compareTabUl").children('li').children('a')[i].className = ''; 	
		$("#compareTabUl").children('li')[i -1].children[0].id = 'chkupResultCompareTab_0' + i; 	
	}	      	
}      

function equipmentInspectionResultsFunction(currentResult, previousResults){
	let h = '', i = 0;;
	let arr = [], arr2 = [];	
	$.each(previousResults, function(idx, p){
		if(p.MID_CATEGORY == 63){		       	             	 
			arr.push(p);
		}
	});
	// 현재 결과(체성분 검사 ~ 심장초음파 검사)				
	$.each(currentResult, function(idx, p){
		if(p.MID_CATEGORY == 63){		       	             	 
			arr.push(p);
		}	
	});
	$.each(arr, function(idx, p){	
		if(p.MID_CATEGORY == 63){ // 대사증후군 검사
			if(p.CHECKUP_NO != param.checkupNo){			
				arr2.push(p.RESULT_VALUE);
			}
			else if(p.CHECKUP_NO == param.checkupNo){	
				h += "<tr>"					
				if(p.CENTER_TEST_RESULT_CD_NAME != '소견'){
				    h += "<td class='bg-gray-12' style='width: 15%'>" + p.CENTER_TEST_RESULT_CD_NAME + "</td>";				
			        if(p.MALE_MAX_VALUE != '' && p.MALE_MIN_VALUE != '' && p.FEMALE_MAX_VALUE != '' && p.FEMALE_MIN_VALUE != ''){
			           	h += "<td class='bg-gray-12' style='width: 15%'>" + p.MALE_MAX_VALUE + "</td>";	
			        }
			    	else if((p.MALE_MAX_VALUE != '' || p.MALE_MIN_VALUE != '') && (p.FEMALE_MAX_VALUE != '' || p.FEMALE_MIN_VALUE != '')){
			        	h += "<td class='bg-gray-12' style='width: 15%'>"+ "남자 " + p.MALE_MAX_VALUE + "<br>여자 " + p.FEMALE_MAX_VALUE + "</td>";
			        }
			       	else {
			        	h += "<td class='bg-gray-12' style='width: 15%'></td>";
			        }			            		       	             	  
			            h += arr2.length == 0 ? "<td class='bg-gray-12'></td>" : "<td class='bg-gray-12'>" + arr2[i++]+ "</td>";
			            h += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";			            			            			            			            
				}else {
						h += "<td class='bg-gray-12'>" + p.CENTER_TEST_RESULT_CD_NAME + "</td>";
						h += "<td class='bg-gray-12' colspan='3'></td>";
				}
		            h += "</tr>";
			}						
		}
	});
$("#metabolicSyndromeTest").html(h); 	// 대사증후군 검사	
}
</script>  	 	
</html>