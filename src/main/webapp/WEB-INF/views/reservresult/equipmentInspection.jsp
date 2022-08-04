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
                                        <li class="is-now">
                                            <div class="rsv-step">
                                                <a href="javascrpit:;">
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
                                    <h1 class="title">장비검사</h1>
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
                                                            <p class="txt">폐기능 검사</p>
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
                                                                        </colgroup>
                                                                        <thead>
                                                                            <tr>
                                                                                <th>구분</th>                                                                                
                                                                                <th>노력성폐활량(FVC%)</th>                                                                                
                                                                                <th>1초간노력성폐활량(FEV1%)</th>                                                                                
                                                                                <th>1초율(FEV1/FVC%)</th>                                                                                                                                                                                                                                               
                                                                            </tr>
                                                                        </thead>                                                                     
                                                                        <tbody id="lungFunctionTest">
													                        <tr>
													                        	<td>현재결과</td>													                        	
													                        	<td class='bg-gray-12'><div id="lungCapacity"></div></td>													                        	
													                        	<td class='bg-gray-12'><div id="second1lungCapacity"></div></td>													                        	
													                        	<td class='bg-gray-12'><div id="second1rate"></div></td>													                        	
													                        </tr>              
													                        <tr>
													                        	<td>소견</td>													                        	
													                        	<td class='bg-gray-12' colspan="3"><div id="opinion"></div></td>
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
                                                            <p class="txt">체성분 검사</p>
                                                            <div class="ico-accordion"><span class="is-blind">펼치기</span></div>
                                                        </a>
                                                        <div class="accrodion-panel">
                                                            <div class="panel-cont">
                                                                <div class="co-table cont-type04 tbl-center tbl-chkup-result01">
                                                                    <table class="table">                                                                        
                                                                        <colgroup>
                                                                            <col style="width: 12.5%" />
                                                                            <col style="width: 12.5%" />                                                                                                                                                                                                                                 
                                                                        </colgroup>
                                                                        <thead>
                                                                            <tr>
                                                                                <th>종전결과</th>                                                                                
                                                                                <th>현재결과</th>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
                                                                            </tr>
                                                                        </thead>                                                                     
                                                                        <tbody>
													                         <tr id="bodyCompositionTest">
													                         
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
                                                            <p class="txt">심전도 검사</p>
                                                            <div class="ico-accordion"><span class="is-blind">펼치기</span></div>
                                                        </a>
                                                        <div class="accrodion-panel">
                                                            <div class="panel-cont">
                                                                <div class="co-table cont-type04 tbl-center tbl-chkup-result01">
                                                                    <table class="table">                                                                        
                                                                        <colgroup>
                                                                            <col style="width: 12.5%" />
                                                                            <col style="width: 12.5%" />                                                                                                                                                                                                                                 
                                                                        </colgroup>
                                                                        <thead>
                                                                            <tr>
                                                                                <th>종전결과</th>                                                                                
                                                                                <th>현재결과</th>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
                                                                            </tr>
                                                                        </thead>                                                                     
                                                                        <tbody>
													                        <tr id="cardiography">
													                        
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
                                                            <p class="txt">골밀도 검사</p>
                                                            <div class="ico-accordion"><span class="is-blind">펼치기</span></div>
                                                        </a>
                                                        <div class="accrodion-panel">
                                                            <div class="panel-cont">
                                                                <div class="co-table cont-type04 tbl-center tbl-chkup-result01">
                                                                    <table class="table">                                                                        
                                                                        <colgroup>
                                                                            <col style="width: 12.5%" />
                                                                            <col style="width: 12.5%" />                                                                                                                                                                                                                                 
                                                                        </colgroup>
                                                                        <thead>
                                                                            <tr>
                                                                                <th>종전결과</th>                                                                                
                                                                                <th>현재결과</th>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
                                                                            </tr>
                                                                        </thead>                                                                     
                                                                        <tbody>
													                        <tr id="boneDensityTest">
													                        
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
                                                            <p class="txt">동맥경화 검사</p>
                                                            <div class="ico-accordion"><span class="is-blind">펼치기</span></div>
                                                        </a>
                                                        <div class="accrodion-panel">
                                                            <div class="panel-cont">
                                                                <div class="co-table cont-type04 tbl-center tbl-chkup-result01">
                                                                    <table class="table">                                                                        
                                                                        <colgroup>
                                                                            <col style="width: 12.5%" />
                                                                            <col style="width: 12.5%" />                                                                                                                                                                                                                                 
                                                                        </colgroup>
                                                                        <thead>
                                                                            <tr>
                                                                                <th>종전결과</th>                                                                                
                                                                                <th>현재결과</th>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
                                                                            </tr>
                                                                        </thead>                                                                     
                                                                        <tbody>
													                        <tr id="arteriosclerosisTest">
													                        
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
                                                            <p class="txt">복부초음파 검사</p>
                                                            <div class="ico-accordion"><span class="is-blind">펼치기</span></div>
                                                        </a>
                                                        <div class="accrodion-panel">
                                                            <div class="panel-cont">
                                                                <div class="co-table cont-type04 tbl-center tbl-chkup-result01">
                                                                    <table class="table">                                                                        
                                                                        <colgroup>
                                                                            <col style="width: 12.5%" />
                                                                            <col style="width: 12.5%" />                                                                                                                                                                                                                                 
                                                                        </colgroup>
                                                                        <thead>
                                                                            <tr>
                                                                                <th>종전결과</th>                                                                                
                                                                                <th>현재결과</th>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
                                                                            </tr>
                                                                        </thead>                                                                     
                                                                        <tbody>
													                        <tr id="abdominalUltrasound">
													                        
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
                                                            <p class="txt">갑상선초음파 검사</p>
                                                            <div class="ico-accordion"><span class="is-blind">펼치기</span></div>
                                                        </a>
                                                        <div class="accrodion-panel">
                                                            <div class="panel-cont">
                                                                <div class="co-table cont-type04 tbl-center tbl-chkup-result01">
                                                                    <table class="table">                                                                        
                                                                        <colgroup>
                                                                            <col style="width: 12.5%" />
                                                                            <col style="width: 12.5%" />                                                                                                                                                                                                                                 
                                                                        </colgroup>
                                                                        <thead>
                                                                            <tr>
                                                                                <th>종전결과</th>                                                                                
                                                                                <th>현재결과</th>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
                                                                            </tr>
                                                                        </thead>                                                                     
                                                                        <tbody>
													                        <tr id="thyroidUltrasound">
													                        
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
                                                            <p class="txt">경동맥초음파 검사</p>
                                                            <div class="ico-accordion"><span class="is-blind">펼치기</span></div>
                                                        </a>
                                                        <div class="accrodion-panel">
                                                            <div class="panel-cont">
                                                                <div class="co-table cont-type04 tbl-center tbl-chkup-result01">
                                                                    <table class="table">                                                                        
                                                                        <colgroup>
                                                                            <col style="width: 12.5%" />
                                                                            <col style="width: 12.5%" />                                                                                                                                                                                                                                 
                                                                        </colgroup>
                                                                        <thead>
                                                                            <tr>
                                                                                <th>종전결과</th>                                                                                
                                                                                <th>현재결과</th>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
                                                                            </tr>
                                                                        </thead>                                                                     
                                                                        <tbody>
													                        <tr id="carotidArteryUltrasound">
													                        
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
                                                            <p class="txt">전립선초음파 검사</p>
                                                            <div class="ico-accordion"><span class="is-blind">펼치기</span></div>
                                                        </a>
                                                        <div class="accrodion-panel">
                                                            <div class="panel-cont">
                                                                <div class="co-table cont-type04 tbl-center tbl-chkup-result01">
                                                                    <table class="table">                                                                        
                                                                        <colgroup>
                                                                            <col style="width: 12.5%" />
                                                                            <col style="width: 12.5%" />                                                                                                                                                                                                                                 
                                                                        </colgroup>
                                                                        <thead>
                                                                            <tr>
                                                                                <th>종전결과</th>                                                                                
                                                                                <th>현재결과</th>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
                                                                            </tr>
                                                                        </thead>                                                                     
                                                                        <tbody>
													                        <tr id="prostateUltrasound">
													                        
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
                                                            <p class="txt">심장초음파 검사</p>
                                                            <div class="ico-accordion"><span class="is-blind">펼치기</span></div>
                                                        </a>
                                                        <div class="accrodion-panel">
                                                            <div class="panel-cont">
                                                                <div class="co-table cont-type04 tbl-center tbl-chkup-result01">
                                                                    <table class="table">                                                                        
                                                                        <colgroup>
                                                                            <col style="width: 12.5%" />
                                                                            <col style="width: 12.5%" />                                                                                                                                                                                                                                 
                                                                        </colgroup>
                                                                        <thead>
                                                                            <tr>
                                                                                <th>종전결과</th>                                                                                
                                                                                <th>현재결과</th>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
                                                                            </tr>
                                                                        </thead>                                                                     
                                                                        <tbody>
													                        <tr id="echocardiography">
													                        
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
                                                            <p class="txt">부인과 검사</p>
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
                                                                                <th>구분</th>                                                                                
                                                                                <th>종전결과</th>                                                                                
                                                                                <th>현재결과</th>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
                                                                            </tr>
                                                                        </thead>                                                                     
                                                                        <tbody id="gynecologicalExamination">
																																					                                                                             
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
                                                            <p class="txt">위 검사</p>
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
                                                                                <th>구분</th>                                                                                
                                                                                <th>종전결과</th>                                                                                
                                                                                <th>현재결과</th>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
                                                                            </tr>
                                                                        </thead>                                                                     
                                                                        <tbody id="stomachTest">
																																					                                                                             
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
                                                            <p class="txt">대장 검사</p>
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
                                                                                <th>구분</th>                                                                                
                                                                                <th>종전결과</th>                                                                                
                                                                                <th>현재결과</th>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
                                                                            </tr>
                                                                        </thead>                                                                     
                                                                        <tbody id="colonExamination">
																																					                                                                             
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
                                                            <p class="txt">흉부 X선 검사</p>
                                                            <div class="ico-accordion"><span class="is-blind">펼치기</span></div>
                                                        </a>
                                                        <div class="accrodion-panel">
                                                            <div class="panel-cont">
                                                                <div class="co-table cont-type04 tbl-center tbl-chkup-result01">
                                                                    <table class="table">                                                                        
                                                                        <colgroup>
                                                                            <col style="width: 12.5%" />
                                                                            <col style="width: 12.5%" />                                                                            
                                                                        </colgroup>
                                                                        <thead>
                                                                            <tr>
                                                                                <th>종전결과</th>                                                                                
                                                                                <th>현재결과</th>                                                                                                                                                                                                                                                
<!--                                                                                 <th><span class="skip">비교하기</span></th> -->
                                                                            </tr>
                                                                        </thead>                                                                     
                                                                        <tbody id="chestXrayTests">
													                                                                                                     
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


            
            
            
<!-- Footer -->                  
<jsp:include page="../common/footer.jsp"/>                                                            
</body>
<script src="${path }/resources/lib/swiper/js/swiper.js"></script>
<script src="${path }/resources/js/common.js"></script>

<script type="text/javascript">

$( document ).ready(function() {
   param = sessionStorage.getItem("param");
   param = JSON.parse(param)
   let lungCapacity = '';													                        	
   let second1lungCapacity = '';													                        	
   let second1rate = '';
   let opinion = '';
   $.ajax({
		url : '/resultpage/basalurinetest',
		type : 'get',
		data : {partnerCenterId:param.partnerCenterId, checkupNo:param.checkupNo, checkupProposNo:param.checkupProposNo},
		success : function(result) {			
			$.each(result, function(idx, p){				
				if(p.MID_CATEGORY == 50){																				             	
	             	if(p.TEST_ITEM_CD == 'KMI0137'){
	             	lungCapacity =   p.RESULT_VALUE + "(" + p.VALUE_SYMBOL + ")"	             			
	             	}
	             	if(p.TEST_ITEM_CD == 'KMI0138'){
	             	second1lungCapacity =   p.RESULT_VALUE + "(" + p.VALUE_SYMBOL + ")"	
	             	}
	             	if(p.TEST_ITEM_CD == 'KMI0139'){
	             	second1rate =   p.RESULT_VALUE + "(" + p.VALUE_SYMBOL + ")"	          	
	             	}
	             	if(p.TEST_ITEM_CD == 'KMI0140'){
	             		if(p.RESULT_OPINION_CD == '00'){
	             			opinion = "정상"
	             		}	             			          	
	             	}	             			             		  		             		             		             		             		             	             	  	             	
				}
			});						
		$("#lungCapacity").text(lungCapacity);				 // 노력성폐활량
		$("#second1lungCapacity").text(second1lungCapacity); // 1초간노력성폐활량
		$("#second1rate").text(second1rate); 				 // 1초율
		$("#opinion").text(opinion); 						 // 소견
		}, error : function(error) {
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


function equipmentInspectionResultsFunction(currentResult, previousResults) {	
	// 이전 결과(종전 결과, 체성분 검사 ~ 심장초음파 검사)
	let h10 = "",h11 = "", h12 = "", h13 = "";
	let arr = [];			
	if(previousResults.length != 0){		
		h1 = "<td class='bg-gray-12'></td>", h2 = "<td class='bg-gray-12'></td>", h3 = "<td class='bg-gray-12'></td>",
		h4 = "<td class='bg-gray-12'></td>", h5 = "<td class='bg-gray-12'></td>", h6 = "<td class='bg-gray-12'></td>",
		h7 = "<td class='bg-gray-12'></td>", h8 = "<td class='bg-gray-12'></td>", h9 = "<td class='bg-gray-12'></td>"	
		h14 = "<td class='bg-gray-12'></td>";	
	}
	else {		
		h1 = '', h2 = '', h3 = '', h4 = '', h5 = '', h6 = '', h7 = '', h8 = '', h9 = '', h14 = '';	
	}	
	$.each(previousResults, function(idx, p){				
		if(p.MID_CATEGORY == 51){			
			if(p.RESULT_VALUE != ''){
				h1 = '';
    	       	h1 += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";
			}								
		}		
		if(p.MID_CATEGORY == 52){
			if(p.RESULT_VALUE != ''){				
				h2 = '';
           		h2 += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";
			}			
		}
		if(p.MID_CATEGORY == 53){
			if(p.RESULT_VALUE != ''){
				h3 = '';
            	h3 += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";
			}			
		}
		if(p.MID_CATEGORY == 54){
			if(p.RESULT_VALUE != ''){
				h4 = '';
            	h4 += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";
			}			
		}
		if(p.MID_CATEGORY == 55){
			if(p.RESULT_VALUE != ''){
				h5 = '';
             	h5 += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";
			}			
		}
		if(p.MID_CATEGORY == 56){						
			if(p.RESULT_VALUE != ''){
				h6 = '';
            	h6 += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";
			}			
		}
		if(p.MID_CATEGORY == 57){
			if(p.RESULT_VALUE != ''){
				h7 = '';
             	h7 += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";
			}			
		}
		if(p.MID_CATEGORY == 58){
			if(p.RESULT_VALUE != ''){		
				h8 = '';
             	h8 += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";
			}			
		}
		if(p.MID_CATEGORY == 59){	
			if(p.RESULT_VALUE != ''){
				h9 = '';
             	h9 += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";
			}			
		}		
		if(p.MID_CATEGORY == 60){			
			arr.push(p);
		}		
		if(p.MID_CATEGORY == 61){		       	             	 
			arr.push(p);
		}
		if(p.MID_CATEGORY == 62){		       	             	 
			arr.push(p);
		}		
		if(p.MID_CATEGORY == 23){			
			if(p.RESULT_VALUE != ''){				
				h14 = '';
    	       	h14 += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";
			}								
		}
	});	
	
	// 현재 결과(체성분 검사 ~ 심장초음파 검사)				
	$.each(currentResult, function(idx, p){
		if(p.MID_CATEGORY == 51){		
			if(p.RESULT_VALUE != ''){			        
         	h1 += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";
			}
			else{			
			h1 += "<td class='bg-gray-12'></td>";	
			}
		}
		if(p.MID_CATEGORY == 52){
			if(p.RESULT_VALUE != ''){							
         	h2 += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";
			}
			else{
			h2 += "<td class='bg-gray-12'></td>";;	
			}
		}
		if(p.MID_CATEGORY == 53){
			if(p.RESULT_VALUE != ''){
         	h3 += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";
			}
			else{
			h3 += "<td class='bg-gray-12'></td>";;	
			}
		}
		if(p.MID_CATEGORY == 54){
			if(p.RESULT_VALUE != ''){
         	h4 += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";
			}
			else{
			h4 += "<td class='bg-gray-12'></td>";;	
			}
		}
		if(p.MID_CATEGORY == 55){
			if(p.RESULT_VALUE != ''){
         	h5 += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";
			}
			else{			
			h5 += "<td class='bg-gray-12'></td>";;	
			}
		}
		if(p.MID_CATEGORY == 56){						
			if(p.RESULT_VALUE != ''){
         	h6 += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";
			}
			else{
			h6 += "<td class='bg-gray-12'></td>";;	
			}
		}
		if(p.MID_CATEGORY == 57){
			if(p.RESULT_VALUE != ''){
         	h7 += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";
			}
			else{
			h7 += "<td class='bg-gray-12'></td>";;	
			}
		}
		if(p.MID_CATEGORY == 58){			
			if(p.RESULT_VALUE != ''){							
         	h8 += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";
			}
			else {
			h8 += "<td class='bg-gray-12'></td>";
			}			
		}
		if(p.MID_CATEGORY == 59){	
			if(p.RESULT_VALUE != ''){
         	h9 += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";
			}
			else{
			h9 += "<td class='bg-gray-12'></td>";;	
			}
		}
		if(p.MID_CATEGORY == 60){			
			arr.push(p);
		}
		if(p.MID_CATEGORY == 61){		       	             	 
			arr.push(p);
		}
		if(p.MID_CATEGORY == 62){		       	             	 
			arr.push(p);
		}		
		if(p.MID_CATEGORY == 23){			
			if(p.RESULT_VALUE != ''){				
         	h14 += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";
			}
			else{
			h14 += "<td class='bg-gray-12'></td>";;	
			}					
		}
	});  
// 부인과 검사 ~ 대사증후군 검사
let arr2 = [];			
let i = 0;
$.each(arr, function(idx, p){	
	if(p.MID_CATEGORY == 60){ // 부인과 검사						
		if(p.CHECKUP_NO != param.checkupNo){
			arr2.push(p.RESULT_VALUE);			
		}
		if(p.CHECKUP_NO == param.checkupNo){ 			
			h10 += "<tr>"					
	        h10 += "<td class='bg-gray-12'>" + p.CENTER_TEST_RESULT_CD_NAME + "</td>";         		       	               
	        h10 += arr2.length == 0 ? "<td class='bg-gray-12'></td>" : "<td class='bg-gray-12'>" + arr2[i++]+ "</td>";		       	               
	        h10 += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";			            			            			            			            
	        h10 += "</tr>";
		}
	}						
	if(p.MID_CATEGORY == 61){ // 위 검사
		if(p.CHECKUP_NO != param.checkupNo){
			arr2.push(p.RESULT_VALUE);
		}
		if(p.CHECKUP_NO == param.checkupNo){			
			h11 += "<tr>"					
            h11 += "<td class='bg-gray-12'>" + p.CENTER_TEST_RESULT_CD_NAME + "</td>";
            h11 += arr2.length == 0 ? "<td class='bg-gray-12'></td>" : "<td class='bg-gray-12'>" + arr2[i++]+ "</td>";
            h11 += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>"; 			            			            
            h11 += "</tr>";			            			            			            			            
		}
	}
	if(p.MID_CATEGORY == 62){ // 대장 검사
		if(p.CHECKUP_NO != param.checkupNo){
			arr2.push(p.RESULT_VALUE);
		}
		if(p.CHECKUP_NO == param.checkupNo){						
			h12 += "<tr>"					
            h12 += "<td class='bg-gray-12'>" + p.CENTER_TEST_RESULT_CD_NAME + "</td>";		       	             	              
            h12 += arr2.length == 0 ? "<td class='bg-gray-12'></td>" : "<td class='bg-gray-12'>" + arr2[i++]+ "</td>";
            h12 += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";			            			            			            			            
            h12 += "</tr>";			            			            			            			            
		}
							
	}

});	

$("#bodyCompositionTest").html(h1); 	  // 체성분 검사
$("#cardiography").html(h2); 			  // 심전도 검사
$("#boneDensityTest").html(h3); 		  // 골밀도 검사
$("#arteriosclerosisTest").html(h4); 	  // 동맥경화 검사
$("#abdominalUltrasound").html(h5);  	  // 복부초음파 검사
$("#thyroidUltrasound").html(h6); 	      // 갑상선초음파 검사
$("#carotidArteryUltrasound").html(h7);   // 경동맥 초음파 검사
$("#prostateUltrasound").html(h8); 		  // 전립선초음파 검사
$("#echocardiography").html(h9); 		  // 심장초음파 검사
$("#gynecologicalExamination").html(h10); // 부인과 검사
$("#stomachTest").html(h11); 			  // 위검사	
$("#colonExamination").html(h12); 		  // 대장검사		
$("#chestXrayTests").html(h14); 		  // 흉부x선검사
	
}

</script>  	 	
</html>