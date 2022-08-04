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
                                        <li class="is-now">
                                            <div class="rsv-step">
                                                <a href="javascrpit:;">
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
                                    <h1 class="title">혈액검사</h1>
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
                                                                    <p class="txt">혈액질환</p>
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
                                                                        <tbody id="bloodDiseaseTestTable">
													                                                                                                
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
                                                            <p class="txt">혈액 기타 검사</p>
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
                                                                        </colgroup>
                                                                        <thead>
                                                                            <tr>
                                                                                <th>관련검사명</th>                                                                                
                                                                                <th>임상참고치</th>
                                                                                <th>현재결과</th>
                                                                                <th>낮은치</th>                                                                                
                                                                                <th>정상</th>                                                                                
                                                                                <th>높은치</th>                                                                                                                                                                                                                                                
                                                                                <th><span class="skip">비교하기</span></th>
                                                                            </tr>
                                                                        </thead>                                                                     
                                                                        <tbody id="bloodTestTable">
													                                                                                                
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
                                                            <p class="txt">빈혈 관련 검사</p>
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
                                                                        <tbody id="anemiaRelatedTests">
													                                                                                                
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
                                                            <p class="txt">갑상선기능 검사</p>
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
                                                                        <tbody id="thyroidFunctionTest">
													                                                                                                     
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
                                                                    <p class="txt">간기능 검사</p>
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
                                                                        <tbody id="liverFunctionTest">
													                                                                                                     
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
                                                            <p class="txt">간염 표지사 검사</p>
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
                                                                                <th>관련검사명</th>                                                                                
                                                                                <th>임상참고치</th>                                                                                                                                                                                                                                                
                                                                                <th>현재결과</th>                                                                                                                                                                                                                                                
                                                                                <th>검사항목</th>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                <th>대상질환</th>                                                                                                                                                                                                                                                
                                                                                <th><span class="skip">비교하기</span></th>
                                                                            </tr>
                                                                        </thead>                                                                     
                                                                        <tbody id="hepatitisMarkerTest">
													                                                                                                     
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
                                                            <p class="txt">지질대사 및 심혈관계 검사</p>
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
                                                                        <tbody id="lipidTesting">
													                                                                                                    
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
                                                            <p class="txt">당뇨검사 </p>
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
                                                                        <tbody id="diabetesTest">
													                                                                                                   
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
                                                            <p class="txt">신장기능 검사 </p>
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
                                                                        <tbody id="kidneyFunctionTest">
													                                                                                                   
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
                                                            <p class="txt">췌장기능 검사 </p>
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
                                                                        <tbody id="pancreaticFunctionTest">
													                                                                                                     
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
                                                            <p class="txt">통풍 및 염증반응 검사</p>
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
                                                                        <tbody id="inflammationTest">
													                                                                                                     
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
                                                            <p class="txt">종양표지자 검사</p>
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
                                                                        <tbody id="tumorMarkerTest">
													                                                                                                     
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
			let h1 = '', h2 = '', h3 = '', h4 = '', h5 = '', h6 = '', h7 = '', h8 = '', h9 = '';
			let h10 = '', h11 = '', h12 = '', h13 = '', h14 = '', h15 = '';
			let bloodDiseaseTestBtn = [], bloodTestBtn = [], anemiaRelatedTestBtn = [], thyroidFunctionTestBtn = [];
			let liverFunctionTestBtn = [], hepatitisMarkerTestBtn = [], lipidTestBtn = [], diabetesTestBtn = [], 
				kidneyFunctionTestBtn = [], pancreaticFunctionTestBtn = [], inflammationTestBtn = [], tumorMarkerTestBtn = [];
			let i1 = 0, i2 = 0, i3 = 0, i4 = 0, i5 = 0, i6 = 0, i7 = 0, i8 = 0, i9 = 0, i10 = 0, i11 = 0, i12 = 0;			
			$.each(result, function(idx, p){				
				if(p.MID_CATEGORY == 21){			
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
	              	if(p.RESULT_OPINION_CD == '10'){
	              	h1 += p.RESULT_VALUE != null ?  "<td class='bg-gray-12' style='color: red;'>" + p.RESULT_VALUE + "</td>" : "<td class='bg-gray-12' style='color: red;'></td>"; 
	              	h1 += "<td class='bg-gray-12'>" + "*" + "</td>";		
	              	h1 += "<td class='bg-gray-12'>" + "" + "</td>";		
	              	h1 += "<td class='bg-gray-12'>" + "" + "</td>";		
	              	}
	              	if(p.RESULT_OPINION_CD == '00'){
	              	h1 += p.RESULT_VALUE != null ?  "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>" : "<td class='bg-gray-12' style='color: red;'></td>";
	              	h1 += "<td class='bg-gray-12'>" + "" + "</td>";	
	              	h1 += "<td class='bg-gray-12'>" + "*" + "</td>";	
	              	h1 += "<td class='bg-gray-12'>" + "" + "</td>";	
	              	}
	              	if(p.RESULT_OPINION_CD == '20'){
	              	h1 += p.RESULT_VALUE != null ?  "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>" : "<td class='bg-gray-12' style='color: red;'></td>";
	              	h1 += "<td class='bg-gray-12'>" + "" + "</td>";	
	              	h1 += "<td class='bg-gray-12'>" + "" + "</td>";	
	              	h1 += "<td class='bg-gray-12'>" + "*" + "</td>";	
	              	}                    	
// 	              	h1 += "<td class='bg-gray-12'>" + "급-만성염증,빈혈,출혈성질환,기타혈액질환,각종백혈병,알레르기질환" + "</td>";
	              	h1 += "<td class='bg-gray-12'></td>";
	              	h1 += "<td class='tbl-in-cont'>"
					h1 += "<button type='button' id='bloodDiseaseTestBtn" + i1++ + "'class='co-btn is-outline-navy-1 btn-result-compare btn-open-popup' data-toggle='modal' data-target='#popupChkupResultCompareChart' onclick='compareBtnClick(this);'><span>비교하기</span></button>";
					h1 += "</td>"	                	              		              	
	             	h1 += "</tr>"   
	             	bloodDiseaseTestBtn.push([p.CENTER_TEST_RESULT_CD_NAME,p.MID_CATEGORY,p.PARTNER_CENTER_NAME, p.VALUE_DIV_TYPE]);
				}		
				if(p.MID_CATEGORY == 22){
					j = 0;
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
	              	if(p.RESULT_OPINION_CD == '10'){
	              	h2 += p.RESULT_VALUE != null ?  "<td class='bg-gray-12' style='color: red;'>" + p.RESULT_VALUE + "</td>" : "<td class='bg-gray-12'></td>";
	              	h2 += "<td class='bg-gray-12'>" + "*" + "</td>";		
	              	h2 += "<td class='bg-gray-12'>" + "" + "</td>";		
	              	h2 += "<td class='bg-gray-12'>" + "" + "</td>";		
	              	}
	              	if(p.RESULT_OPINION_CD == '00'){
	              	h2 += p.RESULT_VALUE != null ?  "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>" : "<td class='bg-gray-12'></td>";
	              	h2 += "<td class='bg-gray-12'>" + "" + "</td>";	
	              	h2 += "<td class='bg-gray-12'>" + "*" + "</td>";	
	              	h2 += "<td class='bg-gray-12'>" + "" + "</td>";	
	              	}
	              	if(p.RESULT_OPINION_CD == '20'){
	              	h2 += p.RESULT_VALUE != null ?  "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>" : "<td class='bg-gray-12'></td>";
	              	h2 += "<td class='bg-gray-12'>" + "" + "</td>";	
	              	h2 += "<td class='bg-gray-12'>" + "" + "</td>";	
	              	h2 += "<td class='bg-gray-12'>" + "*" + "</td>";	
	              	}	              	
	              	h2 += "<td class='tbl-in-cont'>"
					h2 += "<button type='button' id='bloodTestBtn" + i2++ + "'class='co-btn is-outline-navy-1 btn-result-compare btn-open-popup' data-toggle='modal' data-target='#popupChkupResultCompareChart' onclick='compareBtnClick(this);'><span>비교하기</span></button>";
					h2 += "</td>"	  
					h2 += "</tr>";
					bloodTestBtn.push([p.CENTER_TEST_RESULT_CD_NAME,p.MID_CATEGORY,p.PARTNER_CENTER_NAME, p.VALUE_DIV_TYPE]);
				}						
				if(p.MID_CATEGORY == 24){						
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
	              	if(p.RESULT_OPINION_CD == '10'){
	              	h4 += p.RESULT_VALUE != null ?  "<td class='bg-gray-12' style='color: red;'>" + p.RESULT_VALUE + "</td>" : "<td class='bg-gray-12'></td>";
	              	h4 += "<td class='bg-gray-12'>" + "*" + "</td>";		
	              	h4 += "<td class='bg-gray-12'>" + "" + "</td>";		
	              	h4 += "<td class='bg-gray-12'>" + "" + "</td>";		
	              	}
	              	else if(p.RESULT_OPINION_CD == '00'){
	              	h4 += p.RESULT_VALUE != null ?  "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>" : "<td class='bg-gray-12'></td>";
	              	h4 += "<td class='bg-gray-12'>" + "" + "</td>";	
	              	h4 += "<td class='bg-gray-12'>" + "*" + "</td>";	
	              	h4 += "<td class='bg-gray-12'>" + "" + "</td>";	
	              	}
	              	else if(p.RESULT_OPINION_CD == '20'){
	              	h4 += p.RESULT_VALUE != null ?  "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>" : "<td class='bg-gray-12'></td>";	              		
	              	h4 += "<td class='bg-gray-12'>" + "" + "</td>";	
	              	h4 += "<td class='bg-gray-12'>" + "" + "</td>";	
	              	h4 += "<td class='bg-gray-12'>" + "*" + "</td>";	
	              	}
	              	else {
	              	h4 += p.RESULT_VALUE != null ?  "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>" : "<td class='bg-gray-12'></td>";	
	              	h4 += "<td class='bg-gray-12'></td>";	
		            h4 += "<td class='bg-gray-12'></td>";	
		            h4 += "<td class='bg-gray-12'></td>";
	              	}	              	
	              	//h4 += "<td class='bg-gray-12' rowspan='23'>" + "철결핍성빈혈(만성질환에 의한 빈혈)" + "</td>";	
					h4 += "<td class='bg-gray-12'></td>";
	              	h4 += "<td class='tbl-in-cont'>"
					h4 += "<button type='button' id='anemiaRelatedTestBtn" + i3++ + "'class='co-btn is-outline-navy-1 btn-result-compare btn-open-popup' data-toggle='modal' data-target='#popupChkupResultCompareChart' onclick='compareBtnClick(this);'><span>비교하기</span></button>";
					h4 += "</td>"	                	              		              	
	             	h4 += "</tr>"   
	             	anemiaRelatedTestBtn.push([p.CENTER_TEST_RESULT_CD_NAME,p.MID_CATEGORY,p.PARTNER_CENTER_NAME, p.VALUE_DIV_TYPE]);	             	
				}
				if(p.MID_CATEGORY == 49){									
					h5 += "<tr>";
	             	h5 += "<td class='ta-l'>" + p.CENTER_TEST_RESULT_CD_NAME + "</td>";
	             	if(p.CENTER_TEST_RESULT_CD_NAME != '소견'){	             		
		             	if((p.MIN_VALUE != null && p.MAX_VALUE != null) && (p.MIN_VALUE != '' && p.MAX_VALUE != '')){
		             	h5 += "<td class='bg-gray-12'>" + p.MIN_VALUE + " ~ " + p.MAX_VALUE + "</td>";	
		             	}
		             	else if((p.MIN_VALUE == null && p.MAX_VALUE == null) || (p.MIN_VALUE == '' && p.MAX_VALUE == '')){
		             	h5 += "<td class='bg-gray-12'>"+ "-" + "</td>";	
		             	}
		             	else {
		             	h5 += "<td class='bg-gray-12'>" + p.MIN_VALUE + p.MAX_VALUE + "</td>";	
		             	} 		             		              
		              	if(p.RESULT_OPINION_CD == '10'){
		              	h5 += p.RESULT_VALUE != null ?  "<td class='bg-gray-12' style='color: red;'>" + p.RESULT_VALUE + "</td>" : "<td class='bg-gray-12'></td>";	
		              	h5 += "<td class='bg-gray-12'>" + "*" + "</td>";		
		              	h5 += "<td class='bg-gray-12'>" + "" + "</td>";		
		              	h5 += "<td class='bg-gray-12'>" + "" + "</td>";		
		              	}
		              	else if(p.RESULT_OPINION_CD == '00'){
		              	h5 += p.RESULT_VALUE != null ?  "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>" : "<td class='bg-gray-12'></td>";	
		              	h5 += "<td class='bg-gray-12'>" + "" + "</td>";	
		              	h5 += "<td class='bg-gray-12'>" + "*" + "</td>";	
		              	h5 += "<td class='bg-gray-12'>" + "" + "</td>";	
		              	}
		              	else if(p.RESULT_OPINION_CD == '20'){
		              	h5 += p.RESULT_VALUE != null ?  "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>" : "<td class='bg-gray-12'></td>";		              		
		              	h5 += "<td class='bg-gray-12'>" + "" + "</td>";	
		              	h5 += "<td class='bg-gray-12'>" + "" + "</td>";	
		              	h5 += "<td class='bg-gray-12'>" + "*" + "</td>";	
		              	}
		              	else {
		              	h5 += p.RESULT_VALUE != null ?  "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>" : "<td class='bg-gray-12'></td>";	
		              	h5 += "<td class='bg-gray-12'></td>";	
			            h5 += "<td class='bg-gray-12'></td>";	
			            h5 += "<td class='bg-gray-12'></td>";
		              	}			              
	             	}
	             	else {
	             		if(p.RESULT_OPINION_CD == '00'){
	             		h5 += "<td class='bg-gray-12' colspan='5'>정상</td>";
	             		}
	             	}		             		             	
		          //h5 += "<td class='bg-gray-12' rowspan='23'>" + "심근경색,증동맥경화증,고지혈증" + "</td>";
		          	h5 += "<td class='bg-gray-12'></td>";
	              	h5 += "<td class='tbl-in-cont'>"
					h5 += "<button type='button' id='thyroidFunctionTestBtn" + i4++ + "'class='co-btn is-outline-navy-1 btn-result-compare btn-open-popup' data-toggle='modal' data-target='#popupChkupResultCompareChart' onclick='compareBtnClick(this);'><span>비교하기</span></button>";
					h5 += "</td>"	                	              		              	
	             	h5 += "</tr>"   	             	
	             	thyroidFunctionTestBtn.push([p.CENTER_TEST_RESULT_CD_NAME,p.MID_CATEGORY,p.PARTNER_CENTER_NAME, p.VALUE_DIV_TYPE]);	    
				}
				if(p.MID_CATEGORY == 15){
					//cnt++;
					h6 += "<tr>";
	             	h6 += "<td class='ta-l'>" + p.CENTER_TEST_RESULT_CD_NAME + "</td>";
	             	if((p.MIN_VALUE != null && p.MAX_VALUE != null) && (p.MIN_VALUE != '' && p.MAX_VALUE != '')){
	             	h6 += "<td class='bg-gray-12'>" + p.MIN_VALUE + " ~ " + p.MAX_VALUE + "</td>";	
	             	}
	             	else if((p.MIN_VALUE == null && p.MAX_VALUE == null) || (p.MIN_VALUE == '' && p.MAX_VALUE == '')){
	             	h6 += "<td class='bg-gray-12'>"+ "-" + "</td>";	
	             	}
	             	else {
	             	h6 += "<td class='bg-gray-12'>" + p.MIN_VALUE + p.MAX_VALUE + "</td>";	
	             	} 	             		              	
	             	if(p.RESULT_OPINION_CD == '10'){
	             	h6 += p.RESULT_VALUE != null ?  "<td class='bg-gray-12' style='color: red;'>" + p.RESULT_VALUE + "</td>" : "<td class='bg-gray-12'></td>";	
		            h6 += "<td class='bg-gray-12'>" + "*" + "</td>";		
		            h6 += "<td class='bg-gray-12'>" + "" + "</td>";		
		            h6 += "<td class='bg-gray-12'>" + "" + "</td>";		
		            }
		            else if(p.RESULT_OPINION_CD == '00'){
		            h6 += p.RESULT_VALUE != null ?  "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>" : "<td class='bg-gray-12'></td>";	
		            h6 += "<td class='bg-gray-12'>" + "" + "</td>";	
		            h6 += "<td class='bg-gray-12'>" + "*" + "</td>";	
		            h6 += "<td class='bg-gray-12'>" + "" + "</td>";	
		            }
		            else if(p.RESULT_OPINION_CD == '20'){
		            h6 += p.RESULT_VALUE != null ?  "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>" : "<td class='bg-gray-12'></td>";	
		            h6 += "<td class='bg-gray-12'>" + "" + "</td>";	
		            h6 += "<td class='bg-gray-12'>" + "" + "</td>";	
		            h6 += "<td class='bg-gray-12'>" + "*" + "</td>";	
		            }
		            else {
		            h6 += p.RESULT_VALUE != null ?  "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>" : "<td class='bg-gray-12'></td>";	
		            h6 += "<td class='bg-gray-12'></td>";	
			        h6 += "<td class='bg-gray-12'></td>";	
			        h6 += "<td class='bg-gray-12'></td>";
		            } 	             		             	
	              //h6 += "<td class='bg-gray-12' rowspan='13'>" + "급ㆍ만성간염\n지방간\n알콜성간장애\n폐쇄성 황달\n간경화" + "</td>";
	                h6 += "<td class='bg-gray-12'></td>";
	              	h6 += "<td class='tbl-in-cont'>"
					h6 += "<button type='button' id='liverFunctionTestBtn" + i5++ + "'class='co-btn is-outline-navy-1 btn-result-compare btn-open-popup' data-toggle='modal' data-target='#popupChkupResultCompareChart' onclick='compareBtnClick(this);'><span>비교하기</span></button>";
					h6 += "</td>"	                	              		              	   	             
	             	h6 += "</tr>";   
	             	liverFunctionTestBtn.push([p.CENTER_TEST_RESULT_CD_NAME,p.MID_CATEGORY,p.PARTNER_CENTER_NAME, p.VALUE_DIV_TYPE]);	    
				}	
				if(p.MID_CATEGORY == 42){
					//cnt ++;
					h7 += "<tr>";
	             	h7 += "<td class='ta-l'>" + p.CENTER_TEST_RESULT_CD_NAME + "</td>";
	             	if(p.CENTER_TEST_RESULT_CD_NAME != '소견'){
		             	if((p.MIN_VALUE != null && p.MAX_VALUE != null) && (p.MIN_VALUE != '' && p.MAX_VALUE != '')){
		             	h7 += "<td class='bg-gray-12'>" + p.MIN_VALUE + " ~ " + p.MAX_VALUE + "</td>";	
		             	}
		             	else if((p.MIN_VALUE == null && p.MAX_VALUE == null) || (p.MIN_VALUE == '' && p.MAX_VALUE == '')){
		             	h7 += "<td class='bg-gray-12'>"+ "-" + "</td>";	
		             	}	             	
		             	else {
		             	h7 += "<td class='bg-gray-12'>" + p.MIN_VALUE + p.MAX_VALUE + "</td>";	
		             	} 
		             	if(p.RESULT_VALUE != null && p.RESULT_VALUE != ''){
		                h7 += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";	
		                }	             	
		             	else {
		                h7 += "<td class='bg-gray-12'></td>";	
		                }	              	
		             	h7 += "<td class='bg-gray-12'>" + p.TEST_ITEM_NAME + "</td>";							              	 	              		              	
	              	}
	             	else {
	             		h7 += "<td class='bg-gray-12' colspan='3'></td>";
	              	}		             	
	              //h7 += "<td class='bg-gray-12' rowspan='1'>" + "급ㆍ만성간염\n지방간\n알콜성간장애\n폐쇄성 황달\n간경화" + "</td>";
	                h7 += "<td class='bg-gray-12'></td>";
	              	h7 += "<td class='tbl-in-cont'>"
					h7 += "<button type='button' id='hepatitisMarkerTestBtn" + i6++ + "'class='co-btn is-outline-navy-1 btn-result-compare btn-open-popup' data-toggle='modal' data-target='#popupChkupResultCompareChart' onclick='compareBtnClick(this);'><span>비교하기</span></button>";
					h7 += "</td>"	                	              		              	   	             
	             	h7 += "</tr>";   
	             	hepatitisMarkerTestBtn.push([p.CENTER_TEST_RESULT_CD_NAME,p.MID_CATEGORY,p.PARTNER_CENTER_NAME, p.VALUE_DIV_TYPE]);		             	
				}	
				if(p.MID_CATEGORY == 43){
					h8 += "<tr>";
	             	h8 += "<td class='ta-l'>" + p.CENTER_TEST_RESULT_CD_NAME + "</td>";
	             	if(p.CENTER_TEST_RESULT_CD_NAME != '소견'){
		             	if((p.MIN_VALUE != null && p.MAX_VALUE != null) && (p.MIN_VALUE != '' && p.MAX_VALUE != '')){
		             	h8 += "<td class='bg-gray-12'>" + p.MIN_VALUE + " ~ " + p.MAX_VALUE + "</td>";	
		             	}
		             	else if((p.MIN_VALUE == null && p.MAX_VALUE == null) || (p.MIN_VALUE == '' && p.MAX_VALUE == '')){
		             	h8 += "<td class='bg-gray-12'>"+ "-" + "</td>";	
		             	}
		             	else {
		             	h8 += "<td class='bg-gray-12'>" + p.MIN_VALUE + p.MAX_VALUE + "</td>";	
		             	} 
		             	if(p.RESULT_VALUE != null && p.MIN_VALUE != ''){
		                h8 += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";	
		                }
		             	else {
		                h8 += "<td class='bg-gray-12'></td>";	
		                }	              	
		              	if(p.RESULT_OPINION_CD == '10'){
		              	h8 += "<td class='bg-gray-12'>" + "*" + "</td>";		
		              	h8 += "<td class='bg-gray-12'>" + "" + "</td>";		
		              	h8 += "<td class='bg-gray-12'>" + "" + "</td>";		
		              	}
		              	else if(p.RESULT_OPINION_CD == '00'){
		              	h8 += "<td class='bg-gray-12'>" + "" + "</td>";	
		              	h8 += "<td class='bg-gray-12'>" + "*" + "</td>";	
		              	h8 += "<td class='bg-gray-12'>" + "" + "</td>";	
		              	}
		              	else if(p.RESULT_OPINION_CD == '20'){
		              	h8 += "<td class='bg-gray-12'>" + "" + "</td>";	
		              	h8 += "<td class='bg-gray-12'>" + "" + "</td>";	
		              	h8 += "<td class='bg-gray-12'>" + "*" + "</td>";	
		              	}
		              	else {
		              	h8 += "<td class='bg-gray-12'></td>";	
			            h8 += "<td class='bg-gray-12'></td>";	
			            h8 += "<td class='bg-gray-12'></td>";
		              	}		              		  
	             	}
	             	else {
	             		h8 += "<td class='bg-gray-12' colspan='5'></td>";
	             	}		             	
		          //h8 += "<td class='bg-gray-12' rowspan='23'>" + "심근경색,증동맥경화증,고지혈증" + "</td>";
		            h8 += "<td class='bg-gray-12'></td>";
	              	h8 += "<td class='tbl-in-cont'>"
					h8 += "<button type='button' id='lipidTestBtn" + i7++ + "'class='co-btn is-outline-navy-1 btn-result-compare btn-open-popup' data-toggle='modal' data-target='#popupChkupResultCompareChart' onclick='compareBtnClick(this);'><span>비교하기</span></button>";
					h8 += "</td>"	                	              		              	   	             
	             	h8 += "</tr>";   
	             	lipidTestBtn.push([p.CENTER_TEST_RESULT_CD_NAME,p.MID_CATEGORY,p.PARTNER_CENTER_NAME, p.VALUE_DIV_TYPE]);	             	
				}
				if(p.MID_CATEGORY == 44){
					h9 += "<tr>";
	             	h9 += "<td class='ta-l'>" + p.CENTER_TEST_RESULT_CD_NAME + "</td>";
	             	if(p.CENTER_TEST_RESULT_CD_NAME != '소견'){
		             	if((p.MIN_VALUE != null && p.MAX_VALUE != null) && (p.MIN_VALUE != '' && p.MAX_VALUE != '')){
		             	h9 += "<td class='bg-gray-12'>" + p.MIN_VALUE + " ~ " + p.MAX_VALUE + "</td>";	
		             	}
		             	else if((p.MIN_VALUE == null && p.MAX_VALUE == null) || (p.MIN_VALUE == '' && p.MAX_VALUE == '')){
		             	h9 += "<td class='bg-gray-12'>"+ "-" + "</td>";	
		             	}
		             	else {
		             	h9 += "<td class='bg-gray-12'>" + p.MIN_VALUE + p.MAX_VALUE + "</td>";	
		             	} 
		             	if(p.RESULT_VALUE != null && p.MIN_VALUE != ''){
		                h9 += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";	
		                }
		             	else {
		                h9 += "<td class='bg-gray-12'></td>";	
		                }	              	
		              	if(p.RESULT_OPINION_CD == '10'){
		              	h9 += "<td class='bg-gray-12'>" + "*" + "</td>";		
		              	h9 += "<td class='bg-gray-12'>" + "" + "</td>";		
		              	h9 += "<td class='bg-gray-12'>" + "" + "</td>";		
		              	}
		              	else if(p.RESULT_OPINION_CD == '00'){
		              	h9 += "<td class='bg-gray-12'>" + "" + "</td>";	
		              	h9 += "<td class='bg-gray-12'>" + "*" + "</td>";	
		              	h9 += "<td class='bg-gray-12'>" + "" + "</td>";	
		              	}
		              	else if(p.RESULT_OPINION_CD == '20'){
		              	h9 += "<td class='bg-gray-12'>" + "" + "</td>";	
		              	h9 += "<td class='bg-gray-12'>" + "" + "</td>";	
		              	h9 += "<td class='bg-gray-12'>" + "*" + "</td>";	
		              	}
		              	else {
		              	h9 += "<td class='bg-gray-12'></td>";	
			            h9 += "<td class='bg-gray-12'></td>";	
			            h9 += "<td class='bg-gray-12'></td>";
		              	}		              		  
	             	}
	             	else {
	             		h9 += "<td class='bg-gray-12' colspan='5'></td>";
	             	}		             		             	
		          //h9 += "<td class='bg-gray-12' rowspan='23'>" + "심근경색,증동맥경화증,고지혈증" + "</td>";
		            h9 += "<td class='bg-gray-12'></td>";
	              	h9 += "<td class='tbl-in-cont'>"
					h9 += "<button type='button' id='diabetesTestBtn" + i8++ + "'class='co-btn is-outline-navy-1 btn-result-compare btn-open-popup' data-toggle='modal' data-target='#popupChkupResultCompareChart' onclick='compareBtnClick(this);'><span>비교하기</span></button>";
					h9 += "</td>"	                	              		              	   	             
	             	h9 += "</tr>";   
	             	diabetesTestBtn.push([p.CENTER_TEST_RESULT_CD_NAME,p.MID_CATEGORY,p.PARTNER_CENTER_NAME, p.VALUE_DIV_TYPE]);	  	             		             	
				}
				if(p.MID_CATEGORY == 45){									
					h10 += "<tr>";
	             	h10 += "<td class='ta-l'>" + p.CENTER_TEST_RESULT_CD_NAME + "</td>";
	             	if(p.CENTER_TEST_RESULT_CD_NAME != '소견'){	             		
		             	if((p.MIN_VALUE != null && p.MAX_VALUE != null) && (p.MIN_VALUE != '' && p.MAX_VALUE != '')){
		             	h10 += "<td class='bg-gray-12'>" + p.MIN_VALUE + " ~ " + p.MAX_VALUE + "</td>";	
		             	}
		             	else if((p.MIN_VALUE == null && p.MAX_VALUE == null) || (p.MIN_VALUE == '' && p.MAX_VALUE == '')){
		             	h10 += "<td class='bg-gray-12'>"+ "-" + "</td>";	
		             	}
		             	else {
		             	h10 += "<td class='bg-gray-12'>" + p.MIN_VALUE + p.MAX_VALUE + "</td>";	
		             	} 
		             	if(p.RESULT_VALUE != null && p.MIN_VALUE != ''){
		                h10 += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";	
		                }
		             	else {
		                h10 += "<td class='bg-gray-12'></td>";	
		                }	              	
		              	if(p.RESULT_OPINION_CD == '10'){
		              	h10 += "<td class='bg-gray-12'>" + "*" + "</td>";		
		              	h10 += "<td class='bg-gray-12'>" + "" + "</td>";		
		              	h10 += "<td class='bg-gray-12'>" + "" + "</td>";		
		              	}
		              	else if(p.RESULT_OPINION_CD == '00'){
		              	h10 += "<td class='bg-gray-12'>" + "" + "</td>";	
		              	h10 += "<td class='bg-gray-12'>" + "*" + "</td>";	
		              	h10 += "<td class='bg-gray-12'>" + "" + "</td>";	
		              	}
		              	else if(p.RESULT_OPINION_CD == '20'){
		              	h10 += "<td class='bg-gray-12'>" + "" + "</td>";	
		              	h10 += "<td class='bg-gray-12'>" + "" + "</td>";	
		              	h10 += "<td class='bg-gray-12'>" + "*" + "</td>";	
		              	}
		              	else {
		              	h10 += "<td class='bg-gray-12'></td>";	
			            h10 += "<td class='bg-gray-12'></td>";	
			            h10 += "<td class='bg-gray-12'></td>";
		              	}			              
	             	}
	             	else {
	             		h10 += "<td class='bg-gray-12' colspan='5'></td>";
	             	}		             	
		          //h10 += "<td class='bg-gray-12' rowspan='23'>" + "심근경색,증동맥경화증,고지혈증" + "</td>";	
	             	h10 += "<td class='bg-gray-12'></td>";
	              	h10 += "<td class='tbl-in-cont'>"
					h10 += "<button type='button' id='kidneyFunctionTestBtn" + i9++ + "'class='co-btn is-outline-navy-1 btn-result-compare btn-open-popup' data-toggle='modal' data-target='#popupChkupResultCompareChart' onclick='compareBtnClick(this);'><span>비교하기</span></button>";
					h10 += "</td>"	                	              		              	   	             
	             	h10 += "</tr>";   
	             	kidneyFunctionTestBtn.push([p.CENTER_TEST_RESULT_CD_NAME,p.MID_CATEGORY,p.PARTNER_CENTER_NAME, p.VALUE_DIV_TYPE]);	  	         	             	
				}
				if(p.MID_CATEGORY == 46){									
					h11 += "<tr>";
	             	h11 += "<td class='ta-l'>" + p.CENTER_TEST_RESULT_CD_NAME + "</td>";
	             	if(p.CENTER_TEST_RESULT_CD_NAME != '소견'){	             		
		             	if((p.MIN_VALUE != null && p.MAX_VALUE != null) && (p.MIN_VALUE != '' && p.MAX_VALUE != '')){
		             	h11 += "<td class='bg-gray-12'>" + p.MIN_VALUE + " ~ " + p.MAX_VALUE + "</td>";	
		             	}
		             	else if((p.MIN_VALUE == null && p.MAX_VALUE == null) || (p.MIN_VALUE == '' && p.MAX_VALUE == '')){
		             	h11 += "<td class='bg-gray-12'>"+ "-" + "</td>";	
		             	}
		             	else {
		             	h11 += "<td class='bg-gray-12'>" + p.MIN_VALUE + p.MAX_VALUE + "</td>";	
		             	} 
		             	if(p.RESULT_VALUE != null && p.MIN_VALUE != ''){
		                h11 += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";	
		                }
		             	else {
		                h11 += "<td class='bg-gray-12'></td>";	
		                }	              	
		              	if(p.RESULT_OPINION_CD == '10'){
		              	h11 += "<td class='bg-gray-12'>" + "*" + "</td>";		
		              	h11 += "<td class='bg-gray-12'>" + "" + "</td>";		
		              	h11 += "<td class='bg-gray-12'>" + "" + "</td>";		
		              	}
		              	else if(p.RESULT_OPINION_CD == '00'){
		              	h11 += "<td class='bg-gray-12'>" + "" + "</td>";	
		              	h11 += "<td class='bg-gray-12'>" + "*" + "</td>";	
		              	h11 += "<td class='bg-gray-12'>" + "" + "</td>";	
		              	}
		              	else if(p.RESULT_OPINION_CD == '20'){
		              	h11 += "<td class='bg-gray-12'>" + "" + "</td>";	
		              	h11 += "<td class='bg-gray-12'>" + "" + "</td>";	
		              	h11 += "<td class='bg-gray-12'>" + "*" + "</td>";	
		              	}
		              	else {
		              	h11 += "<td class='bg-gray-12'></td>";	
			            h11 += "<td class='bg-gray-12'></td>";	
			            h11 += "<td class='bg-gray-12'></td>";
		              	}			              
	             	}
	             	else {
	             		if(p.RESULT_OPINION_CD == '00'){
	             		h11 += "<td class='bg-gray-12' colspan='5'>정상</td>";
	             		}
	             	}		             	
		          //h11 += "<td class='bg-gray-12' rowspan='23'>" + "심근경색,증동맥경화증,고지혈증" + "</td>";
		            h11 += "<td class='bg-gray-12'></td>";
	              	h11 += "<td class='tbl-in-cont'>"
					h11 += "<button type='button' id='pancreaticFunctionTestBtn" + i10++ + "'class='co-btn is-outline-navy-1 btn-result-compare btn-open-popup' data-toggle='modal' data-target='#popupChkupResultCompareChart' onclick='compareBtnClick(this);'><span>비교하기</span></button>";
					h11 += "</td>"	                	              		              	   	             
	             	h11 += "</tr>"; 
	             	pancreaticFunctionTestBtn.push([p.CENTER_TEST_RESULT_CD_NAME,p.MID_CATEGORY,p.PARTNER_CENTER_NAME, p.VALUE_DIV_TYPE]);	  	         	                 	
				}
				if(p.MID_CATEGORY == 47){									
					h12 += "<tr>";
	             	h12 += "<td class='ta-l'>" + p.CENTER_TEST_RESULT_CD_NAME + "</td>";
	             	if(p.CENTER_TEST_RESULT_CD_NAME != '소견'){	             		
		             	if((p.MIN_VALUE != null && p.MAX_VALUE != null) && (p.MIN_VALUE != '' && p.MAX_VALUE != '')){
		             	h12 += "<td class='bg-gray-12'>" + p.MIN_VALUE + " ~ " + p.MAX_VALUE + "</td>";	
		             	}
		             	else if((p.MIN_VALUE == null && p.MAX_VALUE == null) || (p.MIN_VALUE == '' && p.MAX_VALUE == '')){
		             	h12 += "<td class='bg-gray-12'>"+ "-" + "</td>";	
		             	}
		             	else {
		             	h12 += "<td class='bg-gray-12'>" + p.MIN_VALUE + p.MAX_VALUE + "</td>";	
		             	} 
		             	if(p.RESULT_VALUE != null && p.MIN_VALUE != ''){
		                h12 += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";	
		                }
		             	else {
		                h12 += "<td class='bg-gray-12'></td>";	
		                }	              	
		              	if(p.RESULT_OPINION_CD == '10'){
		              	h12 += "<td class='bg-gray-12'>" + "*" + "</td>";		
		              	h12 += "<td class='bg-gray-12'>" + "" + "</td>";		
		              	h12 += "<td class='bg-gray-12'>" + "" + "</td>";		
		              	}
		              	else if(p.RESULT_OPINION_CD == '00'){
		              	h12 += "<td class='bg-gray-12'>" + "" + "</td>";	
		              	h12 += "<td class='bg-gray-12'>" + "*" + "</td>";	
		              	h12 += "<td class='bg-gray-12'>" + "" + "</td>";	
		              	}
		              	else if(p.RESULT_OPINION_CD == '20'){
		              	h12 += "<td class='bg-gray-12'>" + "" + "</td>";	
		              	h12 += "<td class='bg-gray-12'>" + "" + "</td>";	
		              	h12 += "<td class='bg-gray-12'>" + "*" + "</td>";	
		              	}
		              	else {
		              	h12 += "<td class='bg-gray-12'></td>";	
			            h12 += "<td class='bg-gray-12'></td>";	
			            h12 += "<td class='bg-gray-12'></td>";
		              	}			              
	             	}
	             	else {
	             		if(p.RESULT_OPINION_CD == '00'){
	             		h12 += "<td class='bg-gray-12' colspan='5'>정상</td>";
	             		}
	             	}		             	
				  //h12 += "<td class='bg-gray-12' rowspan='23'>" + "심근경색,증동맥경화증,고지혈증" + "</td>";
				  	h12 += "<td class='bg-gray-12'></td>";
	              	h12 += "<td class='tbl-in-cont'>"
					h12 += "<button type='button' id='inflammationTestBtn" + i11++ + "'class='co-btn is-outline-navy-1 btn-result-compare btn-open-popup' data-toggle='modal' data-target='#popupChkupResultCompareChart' onclick='compareBtnClick(this);'><span>비교하기</span></button>";
					h12 += "</td>"	                	              		              	   	             
	             	h12 += "</tr>"; 
	             	inflammationTestBtn.push([p.CENTER_TEST_RESULT_CD_NAME,p.MID_CATEGORY,p.PARTNER_CENTER_NAME, p.VALUE_DIV_TYPE]);	  	     	             	
				}
				if(p.MID_CATEGORY == 48){									
					h13 += "<tr>";
	             	h13 += "<td class='ta-l'>" + p.CENTER_TEST_RESULT_CD_NAME + "</td>";
	             	if(p.CENTER_TEST_RESULT_CD_NAME != '소견'){	             		
		             	if((p.MIN_VALUE != null && p.MAX_VALUE != null) && (p.MIN_VALUE != '' && p.MAX_VALUE != '')){
		             	h13 += "<td class='bg-gray-12'>" + p.MIN_VALUE + " ~ " + p.MAX_VALUE + "</td>";	
		             	}
		             	else if((p.MIN_VALUE == null && p.MAX_VALUE == null) || (p.MIN_VALUE == '' && p.MAX_VALUE == '')){
		             	h13 += "<td class='bg-gray-12'>"+ "-" + "</td>";	
		             	}
		             	else {
		             	h13 += "<td class='bg-gray-12'>" + p.MIN_VALUE + p.MAX_VALUE + "</td>";	
		             	} 
		             	if(p.RESULT_VALUE != null && p.MIN_VALUE != ''){
		                h13 += "<td class='bg-gray-12'>" + p.RESULT_VALUE + "</td>";	
		                }
		             	else {
		                h13 += "<td class='bg-gray-12'></td>";	
		                }	              	
		              	if(p.RESULT_OPINION_CD == '10'){
		              	h13 += "<td class='bg-gray-12'>" + "*" + "</td>";		
		              	h13 += "<td class='bg-gray-12'>" + "" + "</td>";		
		              	h13 += "<td class='bg-gray-12'>" + "" + "</td>";		
		              	}
		              	else if(p.RESULT_OPINION_CD == '00'){
		              	h13 += "<td class='bg-gray-12'>" + "" + "</td>";	
		              	h13 += "<td class='bg-gray-12'>" + "*" + "</td>";	
		              	h13 += "<td class='bg-gray-12'>" + "" + "</td>";	
		              	}
		              	else if(p.RESULT_OPINION_CD == '20'){
		              	h13 += "<td class='bg-gray-12'>" + "" + "</td>";	
		              	h13 += "<td class='bg-gray-12'>" + "" + "</td>";	
		              	h13 += "<td class='bg-gray-12'>" + "*" + "</td>";	
		              	}
		              	else {
		              	h13 += "<td class='bg-gray-12'></td>";	
			            h13 += "<td class='bg-gray-12'></td>";	
			            h13 += "<td class='bg-gray-12'></td>";
		              	}			              
	             	}
	             	else {
	             		if(p.RESULT_OPINION_CD == '00'){
	             		h13 += "<td class='bg-gray-12' colspan='5'>정상</td>";
	             		}
	             	}		             	
				  //h13 += "<td class='bg-gray-12' rowspan='23'>" + "심근경색,증동맥경화증,고지혈증" + "</td>";	
	             	h13 += "<td class='bg-gray-12'></td>";
	              	h13 += "<td class='tbl-in-cont'>"
					h13 += "<button type='button' id='tumorMarkerTestBtn" + i12++ + "'class='co-btn is-outline-navy-1 btn-result-compare btn-open-popup' data-toggle='modal' data-target='#popupChkupResultCompareChart' onclick='compareBtnClick(this);'><span>비교하기</span></button>";
					h13 += "</td>"	                	              		              	   	             
	             	h13 += "</tr>"; 
	             	tumorMarkerTestBtn.push([p.CENTER_TEST_RESULT_CD_NAME,p.MID_CATEGORY,p.PARTNER_CENTER_NAME, p.VALUE_DIV_TYPE]);		             	
				}
				
		});						
			
		$("#bloodDiseaseTestTable").html(h1); 	// 혈액질환
		$("#bloodTestTable").html(h2); 			// 혈액기타검사
		$("#anemiaRelatedTests").html(h4); 		// 빈혈관련 검사
		$("#thyroidFunctionTest").html(h5); 	// 갑상선기능 검사
		$("#liverFunctionTest").html(h6);  		// 간기능검사
		$("#hepatitisMarkerTest").html(h7); 	// 간염표지자검사
		$("#lipidTesting").html(h8); 			// 지질대사 및 심혈관계 검사
		$("#diabetesTest").html(h9); 			// 당뇨검사
		$("#kidneyFunctionTest").html(h10); 	// 신장기능 검사
		$("#pancreaticFunctionTest").html(h11); // 췌장기능 검사
		$("#inflammationTest").html(h12); 		// 통풍 및 염증반응 검사
		$("#tumorMarkerTest").html(h13); 		// 중앙표지자 검사
				
		for(var i = 0; i < bloodDiseaseTestBtn.length; i++){
			$("#bloodDiseaseTestBtn" + i).val(bloodDiseaseTestBtn[i]);				
		}		
		for(var i = 0; i < bloodTestBtn.length; i++){
			$("#bloodTestBtn" + i).val(bloodTestBtn[i]);				
		}		
		for(var i = 0; i < anemiaRelatedTestBtn.length; i++){
			$("#anemiaRelatedTestBtn" + i).val(anemiaRelatedTestBtn[i]);				
		}		
		for(var i = 0; i < thyroidFunctionTestBtn.length; i++){
			$("#thyroidFunctionTestBtn" + i).val(thyroidFunctionTestBtn[i]);				
		}		
		for(var i = 0; i < liverFunctionTestBtn.length; i++){
			$("#liverFunctionTestBtn" + i).val(liverFunctionTestBtn[i]);				
		}		
		for(var i = 0; i < hepatitisMarkerTestBtn.length; i++){
			$("#hepatitisMarkerTestBtn" + i).val(hepatitisMarkerTestBtn[i]);				
		}		
		for(var i = 0; i < lipidTestBtn.length; i++){
			$("#lipidTestBtn" + i).val(lipidTestBtn[i]);				
		}		
		for(var i = 0; i < diabetesTestBtn.length; i++){
			$("#diabetesTestBtn" + i).val(diabetesTestBtn[i]);				
		}		
		for(var i = 0; i < kidneyFunctionTestBtn.length; i++){
			$("#kidneyFunctionTestBtn" + i).val(kidneyFunctionTestBtn[i]);				
		}		
		for(var i = 0; i < pancreaticFunctionTestBtn.length; i++){
			$("#pancreaticFunctionTestBtn" + i).val(pancreaticFunctionTestBtn[i]);				
		}		
		for(var i = 0; i < inflammationTestBtn.length; i++){
			$("#inflammationTestBtn" + i).val(inflammationTestBtn[i]);				
		}		
		for(var i = 0; i < tumorMarkerTestBtn.length; i++){
			$("#tumorMarkerTestBtn" + i).val(tumorMarkerTestBtn[i]);				
		}		
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
				// 이전 결과(종전 결과, 체성분 검사 ~ 심장초음파 검사)				
				let h3 = previousResults.length == 0 ? "" : "<td class='bg-gray-12'></td>";					
				let arr = [];
				$.each(previousResults, function(idx, p){							
					
				});	
				// 현재 결과(체성분 검사 ~ 심장초음파 검사)
				$.each(currentResult, function(idx, p){				
					
				});
								
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
						p.RESULT_OPINION_CD == '00' ? h += "<li>정상</li>" : h += "<li>" + p.RESULT_VALUE + "</li>";						
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
</script>  	 	
</html>