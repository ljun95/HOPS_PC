<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />


                <!-- [comment]
						- 퍼블리싱 화면 팝업 확인용 버튼 / 실제 버튼 연동시 해당 버튼 소스 활용하여 구현
						- 팝업 연결 button [data-target] - .c-layer-popup [id] 동일 속성값 부여 
						-  .c-layer-popup [aria-labelledby] - .c-modal-title-field > .c-title  동일 속성값 부여 
					-->
                <div class="c-layer-popup type03" id="popupAddExamFamily01" role="dialog" aria-labelledby="popupAddExamFamily01_Label" aria-modal="true" aria-hidden="true">
                    <div class="modal-wrap modal-dialog-centered">
                        <div class="modal-field">
                            <!-- modal Header -->
                            <div class="c-modal-header">
                                <div class="c-modal-title-field">
                                    <h4 class="c-title" id="popupAddExamFamily01_Label">가족검진 신청 대상자 추가</h4>
                                </div>
                                <button type="button" class="popup-cls-btn"><span class="skip">팝업 닫기</span></button>
                            </div>

                            <div class="c-modal-body">
                                <div class="c-modal-inner">
                                    <div class="join-login-field step04">
                                        <div class="cont-box">
                                            <p class="cont">가족 검진은 임직원과 동일한 검진 할인이 적용되며 검진 비용은 개인 결제 처리 하셔야 합니다.</p>
                                        </div>
                                        <div class="c-input-list-basic">
                                            <div class="row">
                                                <div class="col-6 label-input">
                                                    <label for="inputAddFamily01_01">임직원과의 관계</label>
                                                    <div class="c-select">
                                                        <select title="임직원과의 관계 선택" id="employCheckupRoster">
                                                            <option value="" selected>선택</option>
                                                            <option value="10">배우자</option>
                                                            <option value="20">자녀</option>
                                                            <option value="30">부</option>
                                                            <option value="31">배우자부</option>
                                                            <option value="40">모</option> 
                                                            <option value="41">배우자모</option>
                                                            <option value="50">기타</option>
                                                            <option value="60">미지정</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-6 label-input">
                                                    <label for="inputAddFamily01_02">검진자 이름</label>
                                                    <input type="text" class="c-input" id="rosterName" name="rosterName" placeholder="이름을 입력하세요." />
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-6 label-input">
                                                    <label for="inputAddFamily01_03">성별</label>
                                                    <div class="c-select">
                                                        <select title="성별 선택" id="genderCd" name="genderCd">
                                                            <option value="" selected>선택</option>
                                                            <option value="10">남자</option>
                                                            <option value="20">여자</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-6 label-input">
                                                    <label for="inputAddFamily01_04">생년월일</label>
                                                    <input type="text" class="c-input" id="birthday" name="birthday" placeholder="ex) 780505" />
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-6 label-input">
                                                    <label for="inputAddFamily01_05">내/외국인</label>
                                                    <div class="c-select">
                                                        <select title="내/외국인 선택" id="domesticYn">
                                                            <option value="" selected>선택</option>
                                                            <option value="0">내국인</option>
                                                            <option value="1">외국인</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-6 label-input">
                                                    <label for="inputAddFamily01_06">국적</label>
                                                    <input type="text" class="c-input" id="nationality" name="nationality" placeholder="외국인일 경우 국적을 입력하세요." />
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col label-input">
                                                    <label class="c-label-txt">휴대폰 전화번호</label>
                                                    <div class="c-input-phone-group">
                                                        <div class="row inner">
                                                            <div class="col input-phone-01">
                                                                <div class="c-select">
                                                                    <select title="휴대폰 전화번호 앞 3자리 선택" id="phoneNum1">
                                                                        <option value="010" selected="">010</option>
                                                                        <option value="011">011</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="col input-phone-02"><input type="text" id="phoneNum2" class="c-input" title="휴대폰 전화번호 중간 4자리 입력" /></div>
                                                            <div class="col input-phone-03"><input type="text" id="phoneNum3" class="c-input" title="휴대폰 전화번호 끝 3자리 입력" /></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col">
                                                    <div class="co-terms-chk-card">
                                                        <div class="c-chkbox type01">
                                                            <input type="checkbox" id="termsChk_01_01" name="privacyAgreeYn"/>
                                                            <label for="termsChk_01_01" class="chk-label"><i></i><span>개인정보 처리방침 동의</span></label>
                                                        </div>
                                                        <div class="co-terms-detail terms-scroll">
                                                            <div class="inner">
                                                                <div class="terms-row">
                                                                    <p class="title">제공 받는자</p>
                                                                    <div class="cont">
                                                                        건강검진은 건강보험가입자들의 건강을 유지·증진하고, 경제적 손실을 최소화하며 장기적으로 보험급여비의 지출을 줄이고자 1980년에 시작되었음. 건강검진은 건강보험가입자들의 건강을 유지·증진하고, 경제적 손실을 최소화하며 장기적으로 보험급여비의 지출을 줄이고자
                                                                        1980년에 시작되었음. 건강검진은 건강보험가입자들의 건강을 유지·증진하고, 경제적 손실을 최소화하며 장기적으로 보험급여비의 지출을 줄이고자 1980년에 시작되었음.
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- // modal body -->

                            <!-- modal-footer -->
                            <div class="c-modal-footer">
                                <div class="inner">
                                    <div class="buttons">
                                        <button type="button" class="co-btn is-outline-navy-1 popup-cls-btn"><span>닫기</span></button>
                                        <button type="button" onclick="addRoster()" class="co-btn bg-navy-1"><span>추가하기</span></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

