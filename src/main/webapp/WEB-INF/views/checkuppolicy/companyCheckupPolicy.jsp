<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>우리회사 검진 제도 안내</title>	
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
 <div class="contents-wrap healthexam-system-wrap">
                <!-- Contents -->
                <section class="contents">
                    <div class="contents-area">
                        <div class="co-location-wrap">
                            <div class="co-location">
                                <p>
                                    <a href="${path }/main" class="home" title="홈으로 이동"><span class="skip">Home</span></a>
                                </p>

                                <p>건강검진제도</p>


                                <p class="on">우리회사 검진제도안내</p>

                            </div>

                            <div class="co-title-field">
                                <h1 class="title">우리회사 검진제도안내</h1>
                            </div>
                        </div>
                        <div class="co-cont-section">
                            <div class="co-article">
                                <div class="co-title-field">
                                    <h2 class="sub-title">검진신청 기준</h2>
                                </div>                               
								<div class="co-cont-article type02">
									<div class="inner">
										<div class="chkup-apply-criteria-cont">
											<div class="cont-field">			
											<div id="body"></div>
											</div>
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
<jsp:include page="../common/footer.jsp"/>
<script>
$(window).on('load', function() {
	let userId = 'gogil123';
	//gogil123
    $.ajax({
		url : '/checkuppolicy/companycheckuppolicy',
		type : 'post',
		data : {userId:userId},
		success : function(result) {			
			if(Object.keys(result).length != 0){
				$("#body").append(result.companycheckuppolicy.CHECKUP_POLICY_GUIDE);	
			}
			else {				
				$("#body").append("<div style='height:300px;  text-align : center; padding : 250px 0;'>내용이 없습니다.</div>");
			}			
		},
		error : function(error) {
		   console.log(error);
		}
	});	
});
</script>
</body>
</html>