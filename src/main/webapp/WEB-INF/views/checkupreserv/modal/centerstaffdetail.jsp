<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!-- popupChkupInstitutionTabPanel_02  -->
<div>
    <div class="medical-team-list">
		<c:forEach items='${cenStaffList}' var="list" begin="0" end="${staffCount}" step="2" varStatus="status">
        <div class="list-row">
            <div class="doctor-row">
                <div class="col">
                    <a href="javascript:;" role="button" class="btn-doctor-detail doctor-card" data-name='${status.index}'>
                        <div class="inner">
                            <div class="img">
                                <img src="/resources/images/doctor/doctor_profile_01.jpg" alt="" />
                            </div>
                            <div class="doctor-info">
                                <div class="ctg-info">
                                    <span>${list.staffPosition}</span>
                                    <p class="cont">${list.staffName}</p>
                                </div>
                                <div class="ctg-info">
                                    <span>전문진료분야</span>
                                    <p class="cont">${list.staffDepartment}</p>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <c:if test="${status.index+1 < staffCount}">	
	                <div class="col">
	                    <a href="javascript:;" role="button" class="btn-doctor-detail doctor-card" data-name="${status.index+1}">
	                        <div class="inner">
	                            <div class="img">
	                                <img src="/resources/images/doctor/doctor_profile_01.jpg" alt="" />
	                            </div>
	                            <div class="doctor-info">
	                                <div class="ctg-info">
	                                    <span>${cenStaffList2[status.index+1].staffPosition}</span>
	                                    <p class="cont">${cenStaffList2[status.index+1].staffName}</p>
	                                </div>
	                                <div class="ctg-info">
	                                    <span>전문진료분야</span>
	                                    <p class="cont">${cenStaffList2[status.index+1].staffDepartment}</p>
	                                </div>
	                            </div>
	                        </div>
	                    </a>
	                </div>
                </c:if>
            </div>
            <div class="doctor-detail-info" data-target="${status.index}">
                <div class="col">
                    <div class="ctg-info">
                        <span>${list.staffPosition}</span>
                        <p class="cont">${list.staffName}</p>
                    </div>
                    <div class="ctg-info">
                        <span>전문진료분야</span>
                        <p class="cont">${list.staffDepartment}</p>
                    </div>
                    <div class="ctg-info">
                        <span>학력</span>
                        <p class="cont">${list.eduacation}</p>
                    </div>
                </div>
                <div class="col">
                    <div class="ctg-info">
                        <span>경력</span>
                        <div class="cont">
                            <ul class="inner-list">
                                <li>x</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="doctor-detail-info" data-target="${status.index+1}">
                <div class="col">
                    <div class="ctg-info">
                        <span>${cenStaffList2[status.index+1].staffPosition}</span>
                        <p class="cont">${cenStaffList2[status.index+1].staffName}</p>
                    </div>
                    <div class="ctg-info">
                        <span>전문진료분야</span>
                        <p class="cont">${cenStaffList2[status.index+1].staffDepartment}</p>
                    </div>
                    <div class="ctg-info">
                        <span>학력</span>
                        <p class="cont">${cenStaffList2[status.index+1].eduacation}</p>
                    </div>
                </div>
                <div class="col">
                    <div class="ctg-info">
                        <span>경력</span>
                        <div class="cont">
                            <ul class="inner-list">
                                <li>x</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </c:forEach>
        
        
        
        
    </div>
</div>

<script>
	doctorInfo();
	$(document).ready(function(){
	
		$(".institution-info-list.map").hide();
	});
</script>
