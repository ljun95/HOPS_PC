<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!-- popupChkupInstitutionTabPanel_03 -->
<div>
    <div class="medical-equipment-field">
        <ul class="medical-equipment-list">
        	
            <c:forEach items="${ceList}" var="list">
	            <li>          
	                <div class="medical-equip-card">
	                    <div class="top-box">
	                        <div class="img"><img src="/resources/images/dummy/dummy_center_01.jpg" alt="" /></div>
	                        <div class="detail-info">
	                            <ul>
	                                <li>
	                                    <span>장비명</span>
	                                    <p class="cont">${list.equipName}</p>
	                                </li>
	                                <li>
	                                    <span>도입연도</span>
	                                    <p class="cont">도입연도</p>
	                                </li>
	                                <li>
	                                    <span>모델명</span>
	                                    <p class="cont">${list.equipModel}</p>
	                                </li>
	                                <li>
	                                    <span>보유수</span>
	                                    <p class="cont">${list.equipCount}</p>
	                                </li>
	                            </ul>
	                        </div>
	                    </div>
	                    <div class="btm-box">${list.equipGuide}</div>
	                </div>                
	            </li>
           	</c:forEach>
        </ul>
    </div>
</div>

<script>
$(document).ready(function(){

	$(".institution-info-list.map").hide();
});
</script>