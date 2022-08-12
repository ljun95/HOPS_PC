<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />


<!-- center01 -->
<div class="rsv-institution-datail-field on" data-target="center01">
<input type="hidden" id="partnerCenterIdDetail" name="partnerCenterIdDetail" value="${sr.savePartnerCenterId}">
    <div class="co-title-field">
        <div class="title-box">
            <p class="title" id="pcTitle">${pcName}</p>
            <button type="button" onclick="gomo('${sr.savePartnerCenterId}')" data-toggle="modal" data-target="#pcModal" class="ico-bg-type is-blue info01 btn-open-popup"></button>
        </div>
        <div class="c-chkbox">
            <!-- input id / label 매칭 필수 -->
            <input type="checkbox" id="chk-individual-add01" />
            <label for="chk-individual-add01" class="chk-label" onclick="chk0()"><i></i><span>개인추가금 없음</span></label>
        </div>
    </div>
    <ul class="institution-datail-list">
    	<c:forEach items="${cpList}" var="list">
        <li class="chkTitle">
            <div class="institution-detail-card" id="${list.checkupProductNo}" title="${list.checkupProductNo}" data-a="${list.productSt}" data-b="${list.peoductEd}" data-c="${list.checkupProductTitle}">
                <div class="inner">
                    <div class="top-box">
                        <em>${list.checkupProductTitle}</em>
                        <div class="detail-btns">
                            <a href="javascript:;" class="btn-detail-ctg" onclick="goProductModal('${list.checkupProductNo}', '${list.partnerCenterId}')"><i class="ico-bg-type is-blue assignment"></i><span>세부항목</span></a>
                            <a href="javascript:;" class="btn-detail-compare" onclick="addCompare(${list.checkupProductNo})"><i class="ico-bg-type is-red favorite"></i><span>비교하기</span></a>
                        </div>
                    </div>
                    <div class="cont">
                        <p>
                           ${list.checkupProductContent}
                        </p>
                    </div>
                    <div class="btm-box" id="${list.checkupPrice}">
                        <div class="price-info">
                            <span>개인 추가금</span>
                            <em class="price">${list.checkupPrice}</em>원
                        </div>
                        <div class="buttons">
                            <button type="button" onclick="saveProduct(this.id, '${list.checkupProductTitle}', '${list.productSt}', '${list.peoductEd}')" class="co-btn bg-navy-1 btn-chkupproduct-select" id="${list.checkupProductNo}"><span>상품 선택하기</span></button>
                        </div>
                    </div>
                </div>
            </div>
        </li>
      	</c:forEach>
    </ul>
</div>	        
<script type="text/javascript">
 	checkupProduct();
	//btmCompareBar();
	 $(document).ready(function(){
	 	let itemNum = JSON.parse(localStorage.getItem('itemNum' || 'null'));
	 	let svPartnerCenterId = JSON.parse(localStorage.getItem('svPartnerCenterId' || 'null'));
	 	let svPro = $("#saveProduct").val();
	 	if(svPartnerCenterId != null){
	 		$("#pcTitle").val(svPartnerCenterId.name);
	 	}
	 	if($("#saveProduct").val() == "" || $("#saveProduct").val() == null){	//저장 값이 없으면
	 		if(itemNum != null){
		 		$("#"+itemNum.name).addClass("on");
		 	}
	 	}else{
	 		$("#"+svPro).addClass("on");
	 	}
	 			
	 });
	 
	 function goPartnerCenterDetail(){
		 let id = $("#partnerCenterIdDetail").val();
		 
		 $.ajax({
			 url:"chekupreserv/partnercentermodal",
			 data:{id:id},
		  	 type:'post',
		  	 success:function(){
		  		 alert("ok");
		  	 },
		     error:function(){
		    	 alert("error");
		     }
		 })
	 }
	 
	 

 </script>     