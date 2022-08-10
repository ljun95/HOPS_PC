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
                                <p class="on">결과 상담하기</p>
                            </div>
                            <div class="co-title-field">
                                <h1 class="title">건강검진 결과 상담</h1>
                            </div>
                        </div>
                        
                        
                        <!-- 결과 상담 -->
                        <div class="co-cont-section" id="resultCounselBody">
                            <div class="co-article">
                                <div class="co-cont-article type02">
                                    <div class="inner">
                                        <div class="cont">
                                            등록된 건강검진 결과를 바탕으로 고객의 건강 상태와 다양한 문의 사항에 대해서 전문의료 인력이 상담하여 드립니다. <br />
                                            <p class="co-ref-txt">※ 온라인 건강검진 결과 상담은 본인은 검진 결과에 대한 상담만 가능합니다.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="co-article">
                                <div class="row type02">
                                    <div class="col-6">
                                        <div class="co-title-field">
                                            <h2 class="sub-title">상담 문의</h2>
                                        </div>
                                        <div class="co-cont-article input-cont-article">
                                            <div class="inner">
                                                <div class="c-input-list-basic input-cont">
                                                    <div class="row">
                                                        <div class="col-12 label-input">
                                                            <label for="inputResultConsulting_01">이름</label>
                                                            <input type="text" class="c-input" id="name" value="홍길동" disabled />
                                                        </div>                                                        
                                                    </div>
                                                    <div class="row">
                                                        <div class="col label-input">
                                                            <label class="c-label-txt">휴대폰 전화번호</label>
                                                            <div class="c-input-phone-group">
                                                                <div class="row inner">
                                                                    <div class="col input-phone-01">
                                                                        <div class="c-select">
                                                                            <select title="휴대폰 전화번호 앞 3자리 선택" id="phone1">
                                                                                <option value="none">선택</option>
                                                                                <option value="010">010</option>
                                                                                <option value="011">011</option>
                                                                                <option value="016">016</option>
                                                                                <option value="017">017</option>
                                                                                <option value="018">018</option>
                                                                                <option value="019">019</option>                                                                                			                                                                    
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col input-phone-02">
                                                                    	<input type="text" id="phone2" class="c-input" title="휴대폰 전화번호 중간 4자리 입력" maxlength="4" oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1');"/>
                                                                    	<span id="hpMsg2" data-flag></span>
                                                                    </div>
                                                                    <div class="col input-phone-03">
                                                                    	<input type="text" id="phone3" class="c-input" title="휴대폰 전화번호 끝 4자리 입력"  maxlength="4" oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1');"/>
                                                                    	<span id="hpMsg3" data-flag></span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col label-input">
                                                            <label class="c-label-txt">이메일</label>
                                                            <div class="c-input-email-group">
                                                                <div class="row inner">
                                                                    <div class="col-6 input-email-01">
                                                                        <input type="text" class="c-input" title="이메일 계정입력" id="email" value="" />
                                                                        <span id="emailMsg" data-flag></span>
                                                                    </div>
                                                                    <div class="col-6 input-email-02">
                                                                        <div class="row">
                                                                            <div class="col-6">
                                                                                <input type="text" class="c-input" title="이메일 도메인 입력" id="emailAddress" value="" />                                                                                
                                                                            </div>
                                                                            <div class="col-6">
                                                                                <div class="c-select">
                                                                                    <select title="이메일 도메인 선택" id="emailAddressChoose">
								                                                        <option value="none" selected>직접입력</option>
								                                                        <option value="gmail.com">gmail.com</option>
								                                                        <option value="naver.com">naver.com</option>
								                                                        <option value="daum.net">daum.net</option>
								                                                        <option value="hanmail.net">hanmail.net</option>
								                                                    </select>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                               
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                    	<div class="col-6 label-input">
                                                    		<label for="inputResultConsulting_02">상담유형</label>
                                                            <div class="c-select">                                                            
                                                                <select title="상담유형 선택" id="counselingType">
                                                                    <option value="none">선택</option>
                                                                    <option value="10">결과상담</option>
                                                                    <option value="20">질환상담</option>
                                                                    <option value="30">이상소견상담</option>
                                                                    <option value="90">기타</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    	<div class="col-6 label-input">
                                                    		<label for="inputResultConsulting_02">검진이력</label>
                                                            <div class="c-select">                                                            
                                                                <select title="검진이력 선택" id="checkupHistType">                                                                                                                               
                                                                    <option value="none">선택</option>
                                                                    <c:forEach var="list" items="${checkupHistList }" varStatus="status">
                                                                    	<option value="${list.checkup_no }">${list.checkup_dt } / ${list.partner_center_name }</option>
																	</c:forEach>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>   
                                                    <div class="row">
                                                        <div class="col label-input">
                                                            <label for="inpuTxtA01">상담내용</label>
														<!--<span id="byteInfo">0</span>/2000Byte -->
                                                            <div class="c-txtarea-field">
                                                                <textarea id="counselContent" class="c-txt-area type01" onKeyUp="javascript:fnChkByte(this,'2000')"></textarea>                                                                
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="co-title-field">
                                            <h2 class="sub-title">개인정보 정보 수집 • 이용 동의 안내</h2>
                                        </div>
                                        <div class="co-terms-chk-card">
                                            <div class="c-chkbox type01">
                                                <input type="checkbox" id="privacyCheck" />
                                                <label for="privacyCheck" class="chk-label"><i></i><span>[필수] 개인정보 정보 수집 동의서</span></label>
                                            </div>
                                            <div class="co-terms-detail terms-scroll">
                                                <div class="inner">
                                                    <div class="terms-row">
                                                        <div class="cont">
                                                            수집항목<br />
                                                            이름, 휴대폰 전화번호, 이메일 주소, 상담내용
                                                            <br />이용목적<br />
                                                            온라인 상담 시 기초자료 수집을 위해서 다음과 귀화의 개인정보를 수집 이용합니다.
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="co-ref-txt">※위의 개인정보 수집·이용에 동의하지 않으실 경우 건강검진 상담 진행이 제한 될 수 있습니다.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="co-btn-field">
                                <div class="buttons">
                                    <button class="co-btn bg-navy-1 btn-open-popup" type="button" id="consultationRequestBtn" data-toggle="modal" data-target="#consultationRequestBtn"><span>상담 신청</span></button>                                     
                                </div>
                            </div>
                        </div>
                        <!--  -->
                        <div class="co-complete-field" id="resultCounselCompleteBody" style="display:none">
                            <div class="logo"><img src="/resources/images//logo/kmi/kmi_08.png" alt="" /></div>
                            <p class="title">온라인 건강검진 결과 상담 신청이 완료 되었습니다.</p>
                            <p class="cont">신청하신 상담내역은 2~3일 이내에 상담 답변을 드리겠습니다. <br />감사합니다.</p>
                            <div class="co-btn-field justify-cont-c">
                                <div class="buttons">
                                    <a href="${path }/counselresultlist" class="co-btn bg-navy-1">상담 내역</a>
                                </div>
                            </div>
                        </div>
                        
                      
                   </div>
                </section>
                <!-- // Contents -->            
            </div>            
            
<button type="button" hidden="hidden" class="btn-open-popup" data-toggle="modal" data-target="#confirmModal" id="confirmModalBtn" onclick='handleButtonOnclick()' data-counselInfo></button>            
<!-- 상담신청 버튼 클릭 시  -->
<jsp:include page="../resultcounsel/modal/consentGuide.jsp"/>              
<jsp:include page="../resultcounsel/modal/confirmModal.jsp"/>              
<!-- Footer -->            
<jsp:include page="../common/footer.jsp"/>
<script>
//이메일 주소 선택시 직접입력 disabled
$("#emailAddressChoose").change(function() {
	if($("#emailAddressChoose").val() == 'gmail.com'){
		//oMsg.style.display = "none";
		$("#email").focus();
		$("#emailAddress").val('gmail.com');
	}
	if($("#emailAddressChoose").val() == 'naver.com'){
		//oMsg.style.display = "none";
		$("#email").focus();
		$("#emailAddress").val('naver.com');
	}
	if($("#emailAddressChoose").val() == 'daum.net'){
		//oMsg.style.display = "none";
		$("#email").focus();
		$("#emailAddress").val('daum.net');
	}
	if($("#emailAddressChoose").val() == 'hanmail.net'){
		//oMsg.style.display = "none";
		$("#email").focus();
		$("#emailAddress").val('hanmail.com');
	}		
	if($("#emailAddressChoose").val() == "none") {		
		$("#emailAddress").attr("disabled", false);		
	}
	else {
		$("#emailAddress").attr("disabled", true);
	}				
});

// 휴대폰 체크 
$("#phone2").blur(function(){
	var phone2 = $("#phone2").val();	
	var oMsg = document.getElementById("hpMsg2");
	let flag = true;
	if (phone2.length > 0 && phone2.length < 4) {
	 	flag = false
		oMsg.style.display = "block";
		oMsg.style.color = "red";
		oMsg.innerHTML = '휴대폰 전화번호 중간 4자리를 입력해주세요.';				
	}	
	if (flag) {
		flag = true;
		oMsg.style.display = "none";		
	}
	$('#hpMsg2').data('flag', flag);
	return flag;
});

$("#phone3").blur(function(){
	var phone3 = document.getElementById("phone3").value;
	var oMsg = document.getElementById("hpMsg3");
	let flag = true;
	if (phone3.length > 0 && phone3.length < 4) {
		flag = false;
		oMsg.style.display = "block";
		oMsg.style.color = "red";
		oMsg.innerHTML = '휴대폰 전화번호 끝 4자리를 입력해주세요.';				
	}	
	if (flag) {
		flag = true;
		oMsg.style.display = "none";		
	}
	$('#hpMsg3').data('flag', flag);
	return flag;
});

// 이메일 체크
$("#email").blur(function(){
	var email = document.getElementById("email").value;	
	var oMsg = document.getElementById("emailMsg");
	let emailFlag = true;	
	var isEmail = /^[a-z0-9_-]*$/; 	
	if (!isEmail.test(email)) {
		oMsg.style.display = "block";
		oMsg.style.color = "red";
		oMsg.innerHTML = "이메일 주소를 다시 확인해주세요.";
		emailFlag = false;		
	}						
	if (emailFlag) {
		oMsg.style.display = "none";
		emailFlag = true;		
	}
	$('#emailMsg').data('flag', emailFlag);
	return emailFlag;
});  

$("#emailAddress").blur(function(){	
	var email2 = document.getElementById("emailAddress").value;
	var email = $('#email').val() + "@" + $('#emailAddress').val();
	var oMsg = document.getElementById("emailMsg");	
	let emailFlag = true;		
	var isEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;			
	if (!isEmail.test(email)) {
		oMsg.style.display = "block";
		oMsg.style.color = "red";
		oMsg.innerHTML = "이메일 주소를 다시 확인해주세요.";		
		emailFlag = false;		
	}	
	if (emailFlag) {
		oMsg.style.display = "none";
		emailFlag = true;
	}
	$('#emailMsg').data('flag', emailFlag);
	return emailFlag;
});


// textarea 입력 byte 체크
function fnChkByte(obj, maxByte){
	var str = obj.value;
	var str_len = str.length;	
	var rbyte = 0;
	var rlen = 0;
	var one_char = "";
	var str2 = "";
	
	for(var i=0; i<str_len; i++){
		one_char = str.charAt(i);
		if(escape(one_char).length > 4){
			//한글2Byte	
			rbyte += 2;                                         
		}else{
			//영문 등 나머지 1Byte
		    rbyte++;                                            
		}
		if(rbyte <= maxByte){
			//return할 문자열 갯수
		    rlen = i+1;                                          
		}
	}
	if(rbyte > maxByte){
	    //alert("한글 "+(maxByte/2)+"자 / 영문 "+maxByte+"자를 초과 입력할 수 없습니다.");
	    str2 = str.substr(0,rlen); //문자열 자르기
	    obj.value = str2;
	    fnChkByte(obj, maxByte);
	}
	else{
	    //document.getElementById('byteInfo').innerText = rbyte;
	}	
	
}	
// 상담신청 버튼 클릭 시
$('#consultationRequestBtn').click(function(event){		
	let flag = true;
	let checked = document.getElementById('privacyCheck').checked;
	let email = '';
	let phone = '';	
	let counselInfo = {};
	let hpFlag1 = $("#hpMsg2").data('flag');
	let hpFlag2 = $("#hpMsg3").data('flag');
	let emailFlag = $("#emailMsg").data('flag'); 
	counselInfo.name = $('#name').val(); // 상담자 이름 
		
	$(".consultationRequestModal")[0].style.display = 'none';
	
	if($('#phone2').val() == '' && $('#phone3').val() == ''){
		hpFlag1 = true, hpFlag2 = true;;
	}
	else {
		counselInfo.phone = $('#phone1').val() + $('#phone2').val() +  $('#phone3').val(); // 상담자 전화번호;	
	}
	if($('#email').val() == '' &&  $('#emailAddress').val() == ''){	
		emailFlag = true;		
	}
	else {
		counselInfo.email = $("#email").val()+"@"+$("#emailAddress").val(); // 상담자 이메일
	}
	if($('#counselingType').val() == 'none'){
		$(".consultationRequestModal")[0].style.display = '';
		$("#contentsModal")[0].innerHTML  = '상담유형을 선택해 주세요.'		
		$('#counselingType').focus();
		flag = false;		
	}else {
		counselInfo.type = $('#counselingType').val(); // 상담 유형 
	}	
	if($('#counselContent').val() == ''){
		$(".consultationRequestModal")[0].style.display = '';
		$("#contentsModal")[0].innerHTML  = '상담내용을 입력해 주세요.'
		$('#counselContent').focus();
		flag = false;		
	}else {
		counselInfo.title =  $('#counselContent').val().substr(0,20) // 상담 제목
		counselInfo.content =  $('#counselContent').val();	// 상담내용				
	}
	if($('#checkupHistType').val() == 'none'){	// 검진이력유형
		$(".consultationRequestModal")[0].style.display = '';
		$("#contentsModal")[0].innerHTML  = '검진이력유형을 선택해 주세요.'		
		$('#counselingType').focus();
		$('#counselingType').focus();
		flag = false;		
	}else {
		counselInfo.checkupNo = $('#checkupHistType').val(); // 상담 유형 
	}
	
	if(checked == false){		
		$(".consultationRequestModal")[0].style.display = '';
		$("#contentsModal")[0].innerHTML  = '개인정보 수집, 이용 미 동의 시 <br/>온라인 상담 서비스가 지원되지 않습니다.'
		$('#privacyCheck').focus();
		flag = false;		
	}		
	if(flag && hpFlag1 && hpFlag2 && emailFlag){		
		handleButtonOnclick();		
		$('#confirmModalBtn').data('counselInfo', counselInfo);
	}		
});

// 결과 상담신청 confirm 실행
function handleButtonOnclick()  {  
  document.getElementById('confirmModalBtn').click();
}
// 상담신청 확인 버튼 클릭 시
$("#trueBtn").click(function () {		
	var counselInfo = $('#confirmModalBtn').data('counselInfo');	
	$.ajax({
		url : '/resultcounsel/counselappl',
		type : 'get',		
		data : counselInfo,
		success : function(result) {
			if(result == 1){
				document.getElementById("resultCounselBody").style.display = 'none';
				document.getElementById("resultCounselCompleteBody").style.display = '';
			}	
		}, error : function(error) {
		   console.log(error);
		}
	});	
	
});	
</script>