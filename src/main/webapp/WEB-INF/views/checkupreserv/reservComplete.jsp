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

        <!-- Side Navigation -->
        <jsp:include page="../common/sidebar.jsp" />

        <!-- Content-Wrapper -->
            <!-- Header-->
            <jsp:include page="../common/header.jsp" />	
            <!-- // Header-->

            <div class="contents-wrap result-consult-wrap">
                <!-- Contents -->
                <section class="contents co-complete-wrap">
                    <div class="contents-area">
                        <div class="co-location-wrap">
                            <div class="co-location">
                                <p>
                                    <a href="javascript:;" class="home" title="홈으로 이동"><span class="skip">Home</span></a>
                                </p>

                                <p>검진예약/결과조회</p>


                                <p class="on">예약하기</p>

                            </div>

                            <div class="co-title-field">
                                <h1 class="title">최종 확인</h1>
                            </div>
                        </div>
                        <div class="co-complete-field">
                            <div class="logo"><img src="/resources/images/logo/kmi/kmi_08.png" alt="" /></div>
                            <p class="title">예약 신청이 완료 되었습니다.</p>
                            <p class="cont">
                                예약확정은 해당 검진센터의 예약담당자의 확인 후 확정 되며 영업일 기준 최대 3일 정도 소요될 수 있습니다. <br />
                                자세한 예약내역 확인 및 변경, 수정은 예약내역을 확인하여 주시기 바랍니다.
                            </p>

                            <div class="co-btn-field justify-cont-c">
                                <div class="buttons">
                                    <a href="javascript:;" class="co-btn bg-navy-1">예약내역 확인하기</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- // Contents -->
            </div>

            <!-- Footer -->
            <jsp:include page="/WEB-INF/views/common/footer.jsp" />

        

</body>

</html>