<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<div class="c-layer-popup type03" id="pcModal" role="dialog" aria-labelledby="pcModal" aria-modal="true" aria-hidden="true">
	<input type="hidden" id="partnerCenterIdModal0">
    <div class="modal-wrap modal-dialog-centered">
        <div class="modal-field">
            <!-- modal Header -->
            <div class="c-modal-header">
                <div class="c-modal-title-field">
                    <h4 class="c-title" id="popupChkupInstitution01_Label">한국의학연구소 광화문센터</h4>
                </div>
                <button type="button" class="popup-cls-btn"><span class="skip">팝업 닫기</span></button>
            </div>
            <div class="c-modal-body">
                <div class="c-modal-inner">
                    <div class="co-tab-wrap chkupInstitution-tab-wrap">
                        <ul class="co-tab-list tab-event type01 w-auto" role="tablist">
                            <li><a onclick="showMap()" class="on" id="popupChkupInstitutionTab_01">검진센터안내</a></li>
                            <li><a onclick="goStaffDetail()" id="popupChkupInstitutionTab_02">의료인력안내</a></li>
                            <li><a onclick="goEquipment()" id="popupChkupInstitutionTab_03">의료장비안내</a></li>
                        </ul>
                        
                        
                        <div class="tab-cont-wrap" id="partnerDetailM">
                            <!-- popupChkupInstitutionTabPanel_01  -->
                            <div class="tab-content on" id="popupChkupInstitutionTabPanel_01">
                               
                            </div>
                            <ul class="institution-info-list map" style="display: none;">
	                            <li>
						            <span class="skip">약도</span>
						                <div class="co-location-map" id="map"></div>
						        </li>
						        <li>
						            <p class="title">지하철</p>
						            <div class="cont-box" id="a2">
						                <ul>
						                    <li></li>
						                </ul>
						            </div>
						        </li>
						        <li>
						            <p class="title">버스</p>
						            <div class="cont-box" id="b2">
						                <ul>
						                    <li></li>
						                </ul>
						            </div>
						        </li>
						        <li>
						            <p class="title">자가용</p>
						            <div class="cont-box" id="c2">
						                <p></p>
						            </div>
						        </li>
						        <li>
						            <p class="title">주차안내</p>
						            <div class="cont-box" id="d2"></div>
						        </li>
						        <li>
						            <p class="title">기타교통</p>
						            <div class="cont-box" id="e2">
						                <p></p>
						            </div>
						        </li>
                            </ul>
                            
                            <!-- popupChkupInstitutionTabPanel_02  -->
                            <div class="tab-content" id="popupChkupInstitutionTabPanel_02">
                                
                            </div>
                            <!-- popupChkupInstitutionTabPanel_03 -->
                            <div class="tab-content" id="popupChkupInstitutionTabPanel_03">
                                <div class="medical-equipment-field">
                                    <ul class="medical-equipment-list">
                                        <li>
                                            <div class="medical-equip-card">
                                                <div class="top-box">
                                                    <div class="img"><img src="/resources/images/dummy/dummy_center_01.jpg" alt="" /></div>
                                                    <div class="detail-info">
                                                        <ul>
                                                            <li>
                                                                <span>장비명</span>
                                                                <p class="cont">MRI</p>
                                                            </li>
                                                            <li>
                                                                <span>도입연도</span>
                                                                <p class="cont">2010</p>
                                                            </li>
                                                            <li>
                                                                <span>모델명</span>
                                                                <p class="cont">Magnetom Essenaa</p>
                                                            </li>
                                                            <li>
                                                                <span>보유수</span>
                                                                <p class="cont">1</p>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="btm-box">
                                                    MRI는 자기공명 원리를 임상진단에 적용한 장비로 기존의 CT로는 불가능하였던 전신 촬영이 가능하고, 인체에 무해하며 뛰어난 해상도를 가지고 있습니다. MRI는 신경이나
                                                    근육, 관절 등의 검사에 우수합니다.
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="medical-equip-card">
                                                <div class="top-box">
                                                    <div class="img"><img src="/resources/images/dummy/dummy_center_01.jpg" alt="" /></div>
                                                    <div class="detail-info">
                                                        <ul>
                                                            <li>
                                                                <span>장비명</span>
                                                                <p class="cont">MRI</p>
                                                            </li>
                                                            <li>
                                                                <span>도입연도</span>
                                                                <p class="cont">2010</p>
                                                            </li>
                                                            <li>
                                                                <span>모델명</span>
                                                                <p class="cont">Magnetom Essenaa</p>
                                                            </li>
                                                            <li>
                                                                <span>보유수</span>
                                                                <p class="cont">1</p>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="btm-box">
                                                    MRI는 자기공명 원리를 임상진단에 적용한 장비로 기존의 CT로는 불가능하였던 전신 촬영이 가능하고, 인체에 무해하며 뛰어난 해상도를 가지고 있9습니다. MRI는 신경이나
                                                    근육, 관절 등의 검사에 우수합니다.
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- // modal body -->

            <!-- modal-footer -->
            <div class="c-modal-footer center-modal-footer">
                <div class="inner">
                    <div class="buttons">
                        <button type="button" class="co-btn is-outline-navy-1 popup-cls-btn"><span>취소</span></button>
                        <button type="button" class="co-btn is-bg-navy-1 popup-cls-btn"><span>확인</span></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- = type03  -->
    <!-- [ // layer popup] -->
</div>

<script>
function showMap(){
	gomo($("#partnerCenterIdModal0").val());
	$(".institution-info-list.map").show();
}
</script>



