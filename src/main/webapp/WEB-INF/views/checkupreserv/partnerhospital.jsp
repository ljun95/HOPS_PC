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
    <jsp:include page="../common/sidebar.jsp" />

            <!-- Header-->    
			<jsp:include page="../common/header.jsp" />	
            <!-- // Header-->
<button hidden="" id="partnerMo" type="button" data-toggle="modal" data-target="#pcModal" class="ico-bg-type is-blue info01 btn-open-popup"></button>
<button hidden="" id="productMo" type="button" data-toggle="modal" data-target="#prModal" class="ico-bg-type is-blue info01 btn-open-popup"></button>	
 <div class="contents-wrap examination-institue-items-wrap">
                <!-- Contents -->
                <section class="contents">
                    <div class="cont-wrap">
                        <!-- reservation-sidebar -->
                        <div class="reservation-sidebar">
                            <div class="inner-wrap">
                                <em class="top-title">대상자 선택</em>
                                <div class="reservation-step-field">
                                    <!-- [comment] 
										- side list 상태별 스타일 제어 class
										- is-now : 현재
										- is-end : 완료
									-->
                                    <ul class="reservation-step-list">
                                        <li class="is-end">
                                            <div class="rsv-step">
                                                <a href="rosterchoice" onclick="saveData()">
                                                    <p class="rsv-title">01. 대상자 선택</p>
                                                    <p class="rsv-data">01. 대상자 선택</p>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="is-now">
                                            <div class="rsv-step">
                                                <p class="rsv-title">02. 검진기관 및 검진항목</p>
                                                <p class="rsv-data">검진기관 및 검진항목</p>
                                            </div>
                                        </li>
                                        <li class="is-end">
                                            <div class="rsv-step" onclick="gochoiceCheckup()">
                                                <p class="rsv-title">03. 선택검사</p>
                                                <p class="rsv-data">선택검사</p>
                                            </div>
                                        </li>
                                        <li class="is-end">
                                            <div class="rsv-step" onclick="goPage('addtest')">
                                                <p class="rsv-title">04. 추가검사</p>
                                                <p class="rsv-data">추가검사</p>
                                            </div>
                                        </li>
                                        <li class="is-end">
                                            <div class="rsv-step" onclick="goPage('checkupdaylist')">
                                                <p class="rsv-title">05. 검진일자</p>
                                                <p class="rsv-data">검진일자</p>
                                            </div>
                                        </li>
                                        <li class="is-end">
                                            <div class="rsv-step" onclick="goPage('checkupinfolist')">
                                                <p class="rsv-title">06. 검진자 정보 입력</p>
                                                <p class="rsv-data">검진자 정보 입력</p>
                                            </div>
                                        </li>
                                        <li class="is-end">
                                            <div class="rsv-step" onclick="goPage('finalcorfirm')">
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
                                    <h1 class="title">검진기관 및 검진항목</h1>
                                </div>
                            </div>
                            <div class="co-cont-section">
                                <div class="select-box region02">
                                    <div class="c-select">
                                        <select title="지역 선택">
                                            <option value="" selected="">전체</option>
                                            <option value="">option</option>
                                            <option value="">option</option>
                                            <option value="">option</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="rsv-institution-list-wrap">
                                    <h2 class="skip">건강검진 기관 목록</h2>
                                    <!-- [comment] 
										- data-name, data-target 연결
									-->
																	
                                    <div class="rsv-institution-list">
                                        <!-- list-row -->
                                        <div class="list-row">
                                            <!-- card-row -->                             
                                            <c:forEach items="${partnerCenterId}" var="list" begin="0" end="${parCenCount}" step="4" varStatus="status">
                                            	<div class="card-row">
	                                                <div class="rsv-institution-card" id="${list.partnerCenterId}">
	                                                    <a href="javascript:;" role="button" id="${status.index}" data-name=${list.partnerCenterId} onclick="goDetail('${list.partnerCenterId}', '${status.index}')">
	                                                        <div class="thumbnail">
	                                                            <div class="img" style="background-image: url(/resources/images/center/institution_01.jpg)"></div>
	                                                        </div>
	                                                        <div class="cont">
	                                                            <p class="location">${list.addrress}</p>
	                                                            <p class="title">${list.partnerCenterName}</p>
	                                                        </div>
	                                                    </a>
	                                                </div>
	                                                <c:if test="${status.index+1 < parCenCount}">
		                                                <div class="rsv-institution-card" id="${partnerCenterId2[status.index+1].partnerCenterId}">
		                                                    <a href="javascript:;" role="button" id="${status.index}" data-name=${partnerCenterId2[status.index+1].partnerCenterId} onclick="goDetail('${partnerCenterId2[status.index+1].partnerCenterId}', '${status.index}')">
		                                                        <div class="thumbnail">
		                                                            <div class="img" style="background-image: url(/resources/images/center/institution_01.jpg)"></div>
		                                                        </div>
		                                                        <div class="cont">
		                                                            <p class="location">${partnerCenterId2[status.index+1].addrress}</p>
		                                                            <p class="title">${partnerCenterId2[status.index+1].partnerCenterName}</p>
		                                                        </div>
		                                                    </a>
		                                                </div>
	                                                </c:if>
	                                                <c:if test="${status.index+2 < parCenCount}">
		                                                <div class="rsv-institution-card" id="${partnerCenterId2[status.index+2].partnerCenterId}">
		                                                    <a href="javascript:;" role="button" id="${status.index}" data-name=${partnerCenterId2[status.index+2].partnerCenterId} onclick="goDetail('${partnerCenterId2[status.index+2].partnerCenterId}', '${status.index}')">
		                                                        <div class="thumbnail">
		                                                            <div class="img" style="background-image: url(/resources/images/center/institution_01.jpg)"></div>
		                                                        </div>
		                                                        <div class="cont">
		                                                            <p class="location">${partnerCenterId2[status.index+2].addrress}</p>
		                                                            <p class="title">${partnerCenterId2[status.index+2].partnerCenterName}</p>
		                                                        </div>
		                                                    </a>
		                                                </div>
	                                                </c:if>
	                                                <c:if test="${status.index+3 < parCenCount}">
		                                                <div class="rsv-institution-card" id="${partnerCenterId2[status.index+3].partnerCenterId}">
		                                                    <a href="javascript:;" role="button" id="${status.index}" data-name=${partnerCenterId2[status.index+3].partnerCenterId} onclick="goDetail('${partnerCenterId2[status.index+3].partnerCenterId}', '${status.index}')">
		                                                        <div class="thumbnail">
		                                                            <div class="img" style="background-image: url(/resources/images/center/institution_01.jpg)"></div>
		                                                        </div>
		                                                        <div class="cont">
		                                                            <p class="location">${partnerCenterId2[status.index+3].addrress}</p>
		                                                            <p class="title">${partnerCenterId2[status.index+3].partnerCenterName}</p>
		                                                        </div>
		                                                    </a>
		                                                </div>
	                                                </c:if>
	                                            </div>                                        
	                                        	<div class="detail-card-list" id="frm${status.index}"></div>
											</c:forEach>    
                                            </div>
                                        </div>        
                                    </div>
                                </div>
                           
                            <div class="resevation-btmbar-wrap show">
                                <div class="resevation-btm-bar type02">
                                    <button type="button" class="btn-bar-toggle"><span class="is-blind">접기</span></button>
                                    <div class="top-box">
                                        <div class="compare-product">
                                            <i class="ico-bg-type is-red favorite"></i>
                                            <p>상품 비교하기
                                            <div class="cnt">(<span class="compareSu">0/</span><span>3</span>)</div>
                                            </p>
                                        </div>
                                        <button type="button" onclick="productResetBtn()" class="btn-reset-product">
                                            <span>상품 초기화</span>
                                        </button>
                                    </div>
                                    <div class="btm-compare-list-field">
                                        <ul class="btm-compare-list">
                                            <li>
                                                <div class="compare-card is-has 1">
                                                    <button class="btn-del-compare" onclick="delCompare(1)"><span class="ico-type01 t-i-close01-01">삭제</span></button>
                                                    <p class="name">상품명</p>
                                                    <div class="price-info">
                                                        <span>개인 추가금</span>
                                                        <em class="compare"></em>원
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="compare-card is-has 2">
                                                    <button class="btn-del-compare" onclick="delCompare(2)"><span class="ico-type01 t-i-close01-01">삭제</span></button>
                                                    <p class="name">상품명</p>
                                                    <div class="price-info">
                                                        <span>개인 추가금</span>
                                                        <em class="compare"></em>원
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="compare-card is-has 3">
                                                    <button class="btn-del-compare" onclick="delCompare(3)"><span class="ico-type01 t-i-close01-01">삭제</span></button>
                                                    <p class="name">상품명</p>
                                                    <div class="price-info ">
                                                        <span>개인 추가금</span>
                                                        <em class="compare"></em>원
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="myhistory-card">
                                                    <div class="label-input">
                                                        <label class="c-label-txt" for="chkupMyHistory">나의 검진이력</label>
                                                        <div class="c-select">
                                                            <select id="chkupMyHistory">
                                                                <option value="" selected="">선택</option>
                                                                <option value="">option</option>
                                                                <option value="">option</option>
                                                                <option value="">option</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="buttons">
                                        <div class="left">
                                            <a onclick="goRosterchoice()" class="co-btn btn-reservation-prev is-active"><span>이전</span></a>
                                        </div>
                                        <div class="right">
                                            <button type="button" class="co-btn is-outline-navy-1 btn-open-popup" data-toggle="modal" data-target="#abc"><span>비교하기</span></button>
                                            <a href="javascript:gochoiceCheckup()" class="co-btn bg-navy-1 btn-reservation-next"><span>다음</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- // Contents -->
            </div>
            <input type="hidden" name="saveChekupRosterNo" id="saveChekupRosterNo" value=${SaveReserv.saveChekupRosterNo}>
            <input type="hidden" name="saveCustomerId" id="saveCustomerId" value=${srs.saveCustomerId}>
            <input type="hidden" name="savePoilcyYear" id="savePoilcyYear" value=${srs.savePoilcyYear}>
            <input type="hidden" name="saveProduct" id="saveProduct"> 
            <input type="hidden" name="svPartnerCenterId" id="svPartnerCenterId">
            <input type="hidden" name="svIndex" id="svIndex"> 
            <input type="hidden" name="svitemNum" id="svitemNum"> 
            <input type="hidden" name="svitemName" id="svitemName"> 
            <input type="hidden" name="svproductSt" id="svproductSt"> 
            <input type="hidden" name="svproductEd" id="svproductEd"> 
            <!-- Footer -->
            <jsp:include page="/WEB-INF/views/checkupreserv/modal/comapremodal.jsp" />
            <jsp:include page="/WEB-INF/views/checkupreserv/modal/productmodal.jsp" />				
			<jsp:include page="/WEB-INF/views/checkupreserv/modal/partnercentermodal.jsp" />
    		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a96065ed4ed445b8e6cb7a5b5e6aef39&libraries=services"></script>
           	<jsp:include page="/WEB-INF/views/common/footer.jsp" />
    <script>
	
	var compareSu = 0;
    $(window).on('resize load', function() {
        rsvInstitutionCard();
        reservationSideBarFloating();
    });
    checkupProduct();
    btmCompareBar();

    $(window).on('load resize scroll', function() {
        reservationBtmBarFixed();
    });
    
    function goDetail(str, index){
    	let i = index;
    	let pc = str;
    	let ci = $("#saveCustomerId").val();
    	let py = $("#savePoilcyYear").val();
    		
    	$.ajax({
    		url:"chekupreserv/productdetail",
    		data:{pc:pc, ci:ci, py:py},
    		type:'post',
    		success:function(data){
    			$("#frm"+i).html(data);
    		},
    		error:function(){
    			
    		}
    	});
    }
  	//체크한 상품 로컬스토리지에 데이터 저장
    function saveData(){					
    	let itemName = $('#svitemName').val();				//상품이름		
    	let itemNum = $('#saveProduct').val();			//상품번호
    	let productSt = $('#svproductSt').val();
    	let productEd = $('#svproductEd').val();
    	let svPartnerCenterId = $("#svPartnerCenterId").val();		//파트너센터아이디
    	let svIndex = $("#svIndex").val();
    	let saveItemNum = JSON.parse(localStorage.getItem('itemNum') || 'null');	
    	    	
    	if(saveItemNum == null || saveItemNum.name == itemNum){	//저장되어 있는 값이 없거나 저장되어 있는 값과 같을때
    		localStorage.setItem('testItemCd+i', JSON.stringify({name: itemNum}));	//선택검사에서 동적으로 getItem할 때 필요
           	localStorage.setItem('itemNum', JSON.stringify({name: itemNum}));
       		localStorage.setItem('itemName', JSON.stringify({name: itemName}));
       		localStorage.setItem('svPartnerCenterId', JSON.stringify({name: svPartnerCenterId})); 
       		localStorage.setItem('svIndex', JSON.stringify({name: svIndex})); 
           	localStorage.setItem('productSt', JSON.stringify({name: productSt}));
           	localStorage.setItem('productEd', JSON.stringify({name: productEd}));
    	}else{	//저장되어 있는 값과 다를 때
    		let testItemCount = JSON.parse(localStorage.getItem('testItemCount') || 'null');
    		if(testItemCount != null){	//선택검사 체크 값이 있을 때
    			localStorage.removeItem("testItemCount");
    			localStorage.removeItem("testItemSu");
    			for(let i =0; i<testItemCount.name; i++){
    				localStorage.removeItem("testItemCd"+i);
    			}
    		}
    		localStorage.setItem('testItemCd+i', JSON.stringify({name: itemNum}));
           	localStorage.setItem('itemNum', JSON.stringify({name: itemNum}));
       		localStorage.setItem('itemName', JSON.stringify({name: itemName}));
       		localStorage.setItem('svPartnerCenterId', JSON.stringify({name: svPartnerCenterId})); 
       		localStorage.setItem('svIndex', JSON.stringify({name: svIndex}));
       		localStorage.setItem('productSt', JSON.stringify({name: productSt}));
           	localStorage.setItem('productEd', JSON.stringify({name: productEd}));
    	} 			
    }
    //로컬스토리지에 저장된 데이터 불러와서 체크
    $(document).ready(function(){
    	let itemName = JSON.parse(localStorage.getItem('itemName') || 'null');
    	let svPartnerCenterId = JSON.parse(localStorage.getItem('svPartnerCenterId') || 'null');
    	let svIndex = JSON.parse(localStorage.getItem('svIndex') || 'null');
    	let itemNum = JSON.parse(localStorage.getItem('itemNum') || 'null');
    	let productSt = JSON.parse(localStorage.getItem('productSt') || 'null');
    	let productEd = JSON.parse(localStorage.getItem('productEd') || 'null');
    	if(svPartnerCenterId != null){
    		$("#"+svPartnerCenterId.name).addClass("on");
            $("#svIndex").val(svIndex.name);
            $("#svPartnerCenterId").val(svPartnerCenterId.name);
            if(itemNum != null){
            	$('#saveProduct').val(itemNum.name);
                $('#svitemName').val(itemName.name);
            	$('#svproductSt').val(productSt.name);
            	$('#svproductEd').val(productEd.name);
            }
    		goDetail(svPartnerCenterId.name, svIndex.name);	
    	}
    });
    
    function delCompare(str){	//비교하기 삭제
		 if(str == '1'){
			 if($(".compare-card.is-has.1").find(".name").text() != "상품명"){
				 $(".compare-card.is-has.1").find(".name").text("상품명");
				 $(".compare-card.is-has.1").find(".compare").text("");
				 compareSu --;
				 $(".compareSu").text(compareSu+"/");
			 }
		 }
		 else if(str == '2'){
			 if($(".compare-card.is-has.2").find(".name").text() != "상품명"){
				 $(".compare-card.is-has.2").find(".name").text("상품명");
				 $(".compare-card.is-has.2").find(".compare").text("");
				 compareSu --;
				 $(".compareSu").text(compareSu+"/");
			 }
		 }
		 else if(str == '3'){
			 if($(".compare-card.is-has.3").find(".name").text() != "상품명"){
				 $(".compare-card.is-has.3").find(".name").text("상품명");
				 $(".compare-card.is-has.3").find(".compare").text("");
				 compareSu --;
				 $(".compareSu").text(compareSu+"/");
			 }
		 }
    }
    
    function addCompare(num){	//비교하기 추가
		$.ajax({								
			 url:"chekupreserv/addcompare",
			 data:{num:num},
		  	 type:'post',
		  	 context:this,
		  	 success:function(data){
		  		$(".compare-card.is-has").each(function(){
		  			if($(this).find(".name").text() == "상품명"){
		  				$(this).find(".name").text(data.checkupProductTitle);
		  				$(this).find(".compare").text(data.checkupPrice);
		  				compareSu ++;
						$(".compareSu").text(compareSu+"/");
		  				return false;
		  			}		  			
				 }) 	  
		  	 },
		     error:function(){
		    	 alert("error");
		     }
		 })		 
	 }
	 
	 function chk0(){	// 개인추가금 없음 체크박스
		 
		  if($("#chk-individual-add01").is(":checked")){
			  $(".institution-detail-card").each(function(){
				 	$(this).show();
				 }) 

		  }else{
			  $(".institution-detail-card").each(function(){
					 if($(this).find(".price").text()!='0'){
						 $(this).hide();
					 }
				 }) 
		  }
		  
	 }
	 
	 function goProductModal(num, partnerid){	//세부 검진항목 모달
		 let prNum = num;						
		 let pcId = partnerid;
		 $("#productMo").click();
		 $.ajax({
			 url:"chekupreserv/productmodal",
			 data:{prNum:prNum, pcId:pcId},
			 type:"post",
			 success:function(data){
				 	$('#productTable > tbody > tr').remove();
				 	$(data).each(function(){
				 		if(this.checkupMainCategoryCd != null){
					 		let tableCount = '';
							tableCount += "<TR>";
							tableCount += '<TD class="mainCategory">' + this.checkupMainCategoryCd + '</TD><TD class="midCategory">' + this.checkupMidCategoryCd + '</TD><TD>' + this.itemName +'</TD><TD>' + this.relationDiseaseContent +'</TD><TD>' + this.checkupItemSt +'</TD>';
							tableCount += '</TR>';
							$("#productTable").append(tableCount);
				 		}
				 	});
				 	mainCategoryCount();
				    checkupMidCategoryCd();
			 },
			 error:function(){
				 alert("error");
			 }
		 })
		 
	 }
	 
	 function mainCategoryCount(){				//대분류 줄 합치기
		
		let arr = new Array();
	 	let i = 0;
	 	let j = 0;
	 	let x = 0;
	 	$('.mainCategory').each(function(){		//arr에 대분류 text값 넣기
			if(arr.indexOf($(this).text()) == -1){
				arr.push($(this).text());
			}
		});
		
		var key ="cm";
 		for(i=0; i<arr.length; i++){			//대분류 값 변수만들기	
			eval("var "+key+arr[i] + "= 0");
		} 
		
		$('.mainCategory').each(function(){		//총개수 구하기
			for(j=0; j<arr.length; j++){				
				if($(this).text() == arr[j]){
					eval('cm'+arr[j]+'++');
				}
			}
		});
		
		$('.mainCategory').each(function(){		//rowspan추가하고 나머지 삭제		
			for(x=0; x<arr.length; x++){				
				if($(this).text() == arr[x]){
					$(this).attr("rowspan", eval('cm'+arr[x]));
					$(this).attr('id', eval('cm'+arr[x]));
					
					$('.mainCategory').each(function(){	
						if($(this).text() == arr[x]  && $(this).attr('id') == null){
							$(this).remove();
						}
					});
				}
			}
		});
	 }
	 	 
	 
	 function checkupMidCategoryCd(){ 			
		 let arr = new Array();
		 let i = 0;
		 let j = 0;
		 let x = 0;
		 
		 $('.midCategory').each(function(){		
				if(arr.indexOf($(this).text()) == -1){
					arr.push($(this).text());
				}
			});
			
			var key ="mm";
	 		for(i=0; i<arr.length; i++){				
				eval("var "+key+arr[i] + "= 0");
			} 
			
			$('.midCategory').each(function(){		
				for(j=0; j<arr.length; j++){				
					if($(this).text() == arr[j]){
						eval('mm'+arr[j]+'++');
					}
				}
			});
			
			$('.midCategory').each(function(){			
				for(x=0; x<arr.length; x++){				
					if($(this).text() == arr[x]){
						$(this).attr("rowspan", eval('mm'+arr[x]));
						$(this).attr('id', eval('mm'+arr[x]));
						
						$('.midCategory').each(function(){	
							if($(this).text() == arr[x]  && $(this).attr('id') == null){
								$(this).remove();
							}
						});
					}
				}
			});
		 }
	 
	//선택검사 페이지 이동	
	 function gochoiceCheckup(){ 
		 saveData();
		 let itemNum = JSON.parse(localStorage.getItem('itemNum')).name;
	     let itemName = JSON.parse(localStorage.getItem('itemName')).name;
	     let svPartnerCenterId = JSON.parse(localStorage.getItem('svPartnerCenterId')).name;
	     if(itemNum == null){
	    	 alert("상품을 선택해주세요.");
	    	 return false;
	     }
		 location.href = "choicecheckup?checkupProductNo=" + itemNum +"&partnerCenterId=" +svPartnerCenterId;
	 }
	 
	 function gomo(id){		//협력병원 상세보기 
		 let partnerId = id;
		 $("#partnerMo").click();
		 $.ajax({
			 url:"chekupreserv/partnercenterdetail",
			 data:{partnerId:partnerId},
			 type:"post",
			 success:function(data){
				$('#popupChkupInstitutionTab_01').attr('class', 'on');
				$('#popupChkupInstitutionTab_02').attr('class', 'off');
				$('#popupChkupInstitutionTab_03').attr('class', 'off');
				$("#popupChkupInstitutionTabPanel_01").html(data);
				
				goMap();
			 },
			 error:function(){
				 alert("error");
			 }
		 });
	 }
	 
	 function goStaffDetail(){	//의료진 상세보기
		let centerId = $("#partnerCenterIdModal0").val();
	 	$.ajax({
	 		url:"chekupreserv/gocenterstaffdetail",
	 		data:{centerId:centerId},
	 		type:"post",
	 		success:function(data){
	 			$("#popupChkupInstitutionTabPanel_01").html(data);
	 		},
	 		error:function(){
	 			alert("error");
	 		}
	 	});
	 }
	 
	 function goEquipment(){
		 let centerId = $("#partnerCenterIdModal0").val();
		 $.ajax({
			url:"chekupreserv/goequipment",
			data:{centerId:centerId},
			type:"post",
			success:function(data){
				$("#popupChkupInstitutionTabPanel_01").html(data);
			},
			error:function(){
				alert("error");
			}
		 });
	 }
	 // 상품 비교하기 초기화
	 function productResetBtn(){
		 delCompare(1);
		 delCompare(2);
		 delCompare(3);
	 }
	 
	 //대상자 선택 페이지 이동
	 function goRosterchoice(){
		 saveData();
		 location.href = "rosterchoice";
	 }
	 
     function goPage(page){
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
    	let inItemNum = $('.institution-detail-card.on').attr('title');			

    	if(itemNum != null && itemNum.name == inItemNum){
	        	if(page == "checkupdaylist"){
	        		if(chked != null && testItemSu != null && testItemCount != null &&(testItemSu.name == testItemCount.name)){
		        		location.href = "checkupdaylist";
	        		}else{
	        			alert("이전 페이지부터 입력해주세요.");
	        		}
	        	}else if(page == "addtest"){
	        		if(testItemSu != null){
	        			if(testItemSu != null && testItemCount != null && testItemSu.name == testItemCount.name){
		    	        		location.href = "addtest?checkupProductNo="+itemNum.name+"&partnerCenterId="+svPartnerCenterId.name;
		        		}else{
		        			alert("이전 페이지부터 입력해주세요.");
	        			}
	        		}else{
	        			alert("이전 페이지부터 입력해주세요.");
	        		}
	        		
	        	}else if(page == "finalcorfirm"){
	        		if(rosterInfo != null && rsvHopeDate01 != null && rsvHopeDate02 != null && rsvHopeTime01 != null && rsvHopeTime02 != null && (itemNum != null || itemNum.name != '')){
		        		if(rsvHopeDate01.name != '' && rsvHopeDate02.name != '' && rsvHopeTime01.name != '' && rsvHopeTime02.name != ''
		        				&& rosterInfo.name.addr != '' && rosterInfo.name.addrDetail != '' && rosterInfo.name.addrNum != '' && rosterInfo.name.mobileNum != ''
		        				&& rosterInfo.name.chk1 != '' && rosterInfo.name.chk2 != '' && rosterInfo.name.chk3 != ''
		        				&& rosterInfo.name.chk4 != '' && rosterInfo.name.email != '' && rosterInfo.name.resultReceive != ''){
			            	location.href="finalconfirmlist?svpartnercenterid="+svPartnerCenterId.name +"&itemnum="+itemNum.name +"&chekuprosterno="+crn.name;
		        		}else{
		        			alert("이전 페이지부터 입력해주세요.");
		        		}
	        		}else{
	        			alert("이전 페이지부터 입력해주세요.");
	        		}
	        	}else if(page == "checkupinfolist"){
	        		if(rsvHopeDate01 != null && rsvHopeDate02 != null && rsvHopeTime01 != null && rsvHopeTime02 != null && (itemNum != null || itemNum.name != undefined)){
		        		if(rsvHopeDate01.name != '' && rsvHopeDate02.name != '' && rsvHopeTime01.name != '' && rsvHopeTime02.name != ''){
		        			location.href = "checkupinfolist?rosterNum="+crn.name;
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
     
     function goMap(){
    	let addr = $('.co-location-map.addr').attr('id');
 	    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
 	    mapOption = {
 	        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
 	        level: 3 // 지도의 확대 레벨
 	    };  
 	 	// 지도를 생성합니다    
 	    var map = new kakao.maps.Map(mapContainer, mapOption); 
 	
 	    // 주소-좌표 변환 객체를 생성합니다
 	    var geocoder = new kakao.maps.services.Geocoder();
 	
 	    // 주소로 좌표를 검색합니다
 	    geocoder.addressSearch(addr, function(result, status) {
 	
 	    // 정상적으로 검색이 완료됐으면 
 	     if (status === kakao.maps.services.Status.OK) {
 	
 	        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
 	
 	        // 결과값으로 받은 위치를 마커로 표시합니다
 	        var marker = new kakao.maps.Marker({
 	            map: map,
 	            position: coords
 	        });
 	
 	        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
 	        map.relayout();
 	        map.setCenter(coords);
 	     } 
 	    });
 	}
     
     function saveProduct(id, name, st, dt){
    	$('#saveProduct').val(id);
		$("#svPartnerCenterId").val($('.rsv-institution-card.on').attr('id'));
    	$("#svIndex").val($('.rsv-institution-card.on').find('a').attr('id'));
    	$('#svitemNum').val(id);
    	$('#svitemName').val(name);
    	$('#svproductSt').val(st);
    	$('#svproductEd').val(dt);
     }
    </script>
</body>

</html>