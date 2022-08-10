<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>결과 상담내역</title>
	
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

  <div class="contents-wrap result-consult-wrap">
                <!-- Contents -->
                <section class="contents">
                    <div class="contents-area">
                        <div class="co-location-wrap">
                            <div class="co-location">
                                <p>
                                    <a href="javascript:;" class="home" title="홈으로 이동"><span class="skip">Home</span></a>
                                </p>

                                <p>결과상담</p>


                                <p class="on">결과 상담이력</p>

                            </div>

                            <div class="co-title-field">
                                <h1 class="title">온라인 건강검진 결과 상담내역</h1>
                            </div>
                        </div>
                        <div class="co-cont-section">
                            <div class="co-title-field">
                                <h2 class="sub-title">상담내역</h2>
                                <a href="${path }/resultcounsel" class="co-btn bg-navy-1">문의하기</a>
                            </div>

                            <div class="co-table-field">
                                <!-- table-type02 -->
                                <div class="co-table list-type01 striped tbl-center">
                                    <table class="table">
                                        <caption>
                                            상담내역 정보 : 상담 신청일 , 신청자명, 제목, 진행사항에 대한 정보
                                        </caption>
                                        <colgroup>
                                            <col style="width: 120px" />
                                            <col style="width: 160px" />
                                            <col />
                                            <col style="width: 240px" />
                                        </colgroup>
                                        <thead>
                                            <tr>
                                                <th scope="col">
                                                    <span>상담 신청일</span>
                                                </th>
                                                <th scope="col">
                                                    <span>신청자명</span>
                                                </th>
                                                <th scope="col">
                                                    <span>제목</span>
                                                </th>
                                                <th scope="col">
                                                    <span>진행사항</span>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="list" items="${counselresultlist }" varStatus="status">
                                            <tr>
                                                <td>${list.reg_dt }</td>
                                                <td>${list.roster_name }</td>                                                
                                                <c:if test="${list.result_counsel_st == '10'}">
                                                	<td class="ta-l">                                                    
                                                        <p class="txtline-01">
                                                            ${list.question_title }
                                                        </p>                                                    
                                                	</td>
                                                	<td class="is-ready">답변준비 중</td>
                                                </c:if>
                                                <c:if test="${list.result_counsel_st == '50'}">
	                                                <td class="ta-l">
	                                                    <button class="btn-open-popup consAnsBtn" id="consAnsBtn" name="consAnsBtn" data-toggle="modal" data-target="#popupConsultApplyDetails" value="${list.result_counsel_no }" onclick="clickBtn(this)">
	                                                        <p class="txtline-01">
	                                                            ${list.question_title }
	                                                        </p>
	                                                    </button>
                                                	</td>
                                                	 <td>
                                                	 	<button class="co-link btn-open-popup consAnsBtn" id="consAnsBtn" name="consAnsBtn" data-toggle="modal" data-target="#popupConsultApplyDetails" value="${list.result_counsel_no }" onclick="clickBtn(this)">상담 답변 보기</button>                                                	 	                                                    
                                               		 </td>
                                                </c:if>
                                            </tr>
                                        </c:forEach>                                               
                                        </tbody>
                                    </table>
                                </div>

                                <div class="co-tbl-paging">
                                    <nav class="pagination">
                                        <ul>
                                            <li>
                                                <a class="page-link" href="javascript:goPage('1')" aria-label="처음">
                                                    <span class="is-blind p-first">처음</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a class="page-link" href="javascript:goPage('${pageMap.prevPage}')" aria-label="이전">
                                                    <span class="is-blind p-prev">이전</span>
                                                </a>
                                            </li>
                                            <c:forEach var="num" begin="${pageMap.blockBegin}" end="${pageMap.blockEnd}">
                                            	 <c:choose>
                                            	 	<c:when test="${num == pageMap.pageNo}">
					                            		<li><a class="page-link is-active" href="javascript:goPagepp('${num}')">${num}</a></li>
					                        		</c:when>
					                        		<c:otherwise>
					                            		<a class="page-link" href="javascript:goPage('${num}')">${num}</a>&nbsp;
					                        		</c:otherwise>
                                            	 </c:choose>
                                            </c:forEach>
                                            <li>
                                                <a class="page-link" href="javascript:goPage('${pageMap.nextPage}')" aria-label="다음">
                                                    <span class="is-blind p-next">다음</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a class="page-link" href="javascript:goPage('${pageMap.totPage}')" aria-label="끝">
                                                    <span class="is-blind p-end">끝</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>                                                                
                            </div>
                        </div>
                    </div>
                </section>
                <!-- // Contents -->
            </div>
            
<input type = "hidden" name = "pageNo" id = "pageNo" value = "1">
<input type = "hidden" name = "listSize" id = "listSize" value = "10">
<jsp:include page="../resultcounsel/modal/popupConsultApplyDetails.jsp"/>      			
<!-- Footer -->      
<jsp:include page="../common/footer.jsp"/>
<script>
//페이징 처리 
function goPage(num){
	let su = num;
	
	if(su == 0){		
		$("#pageNo").val(1);
	 	location.href = "/counselresultselect?pageNo=" + $("#pageNo").val() + "&listSize=" + $("#listSize").val();
	}else{
		$("#pageNo").val(num);
	 	location.href = "/counselresultselect?pageNo=" + $("#pageNo").val() + "&listSize=" + $("#listSize").val();	
	}	
} 	
// 재목, 진행사항 클릭 시
function clickBtn(data){
	let resultCounselNo = data.value;
	// 상담내역 상세보기
	$.ajax({
		url : '/resultcounsel/counselresultview',
		type : 'get',
		data : {resultCounselNo:resultCounselNo},
		success : function(result) {
			$("#questionTitle").text(result[0].question_title); 
			$("#regDt").text(result[0].reg_dt); 
			$("#questionContents").text(result[0].question_contents); 
			$("#answerContents").text(result[0].answer_contents); 						
		},
		error : function(error) {
		   console.log(error);
		}
	});	
}

</script>