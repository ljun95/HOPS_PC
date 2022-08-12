<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        
            <!-- Sidebar -->
            <jsp:include page="../common/sidebar.jsp" />
            <!-- Header-->
            <jsp:include page="../common/header.jsp" />
            <!-- // Header-->

            <div class="contents-wrap">
                <!-- Contents -->
                <section class="contents">
                    <div class="cont-wrap">
                        <!-- reservation-sidebar -->
                        <div class="reservation-sidebar">
                            <div class="inner-wrap">
                                <em class="top-title">검진기관DF 및 검진항목</em>
                                <div class="reservation-step-field">
                                    <!-- [comment] 
																	- side list 상태별 스타일 제어 class
																	- is-now : 현재
																	- is-end : 완료
																-->
                                    <ul class="reservation-step-list">
                                        <li class="is-end">
                                            <div class="rsv-step">
                                                <a href="javascript:;" onclick="goPage('rosterchoice')">
                                                    <p class="rsv-title">01. 대상자 선택</p>
                                                    <p class="rsv-data">대상자 선택</p>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="is-end">
                                            <div class="rsv-step">
                                                <a href="javascript:;" onclick="goPage('partnerhospital')">
                                                    <p class="rsv-title">02. 검진기관 및 검진항목</p>
                                                    <p class="rsv-data">검진기관 및 검진항목</p>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="is-end">
                                            <div class="rsv-step">
                                                <a href="javascript:;" onclick="goPage('choicecheckup')">
                                                    <p class="rsv-title">03. 선택검사</p>
                                                    <p class="rsv-data">선택검사</p>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="is-end">
                                            <div class="rsv-step">
                                                <a href="javascript:;" onclick="goPage('addtest')">
                                                    <p class="rsv-title">04. 추가검사</p>
                                                    <p class="rsv-data">추가검사</p>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="is-end">
                                            <div class="rsv-step">
                                                <a href="javascript:;" onclick="goPage('checkupdaylist')">
                                                    <p class="rsv-title">05. 검진일자</p>
                                                    <p class="rsv-data">검진일자</p>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="is-now">
                                            <div class="rsv-step" onclick="goPage('checkupinfolist')">
                                                <p class="rsv-title">06. 검진자 정보 입력</p>
                                            </div>
                                        </li>
                                        <li class="is-end">
                                            <div class="rsv-step" onclick="goFinalconfirmlist()">
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
                                    <p class="on">검진자 정보 입력</p>
                                </div>
                                <div class="co-title-field">
                                    <h1 class="title">검진자 정보</h1>
                                </div>
                            </div>
                            <div class="co-cont-section">
                                <div class="row type02">
                                    <div class="col-6">
                                        <div class="co-article">
                                            <div class="co-title-field">
                                                <h2 class="sub-title">검진자 정보</h2>
                                            </div>
                                            <div class="co-cont-article input-cont-article">
                                                <div class="c-input-list-basic input-cont">
                                                    <div class="row">
                                                        <div class="col label-input">
                                                            <label for="inputChkPersoninfo01_01">검진자명</label>
                                                            <input type="text" class="c-input" id="inputChkPersoninfo01_01" value="${chkRoster.rosterName}" disabled />
                                                        </div>
                                                        <div class="col label-input">
                                                            <label for="inputChkPersoninfo01_02">생년월일</label>
                                                            <input type="text" class="c-input" id="inputChkPersoninfo01_02" value="${chkRoster.birthday}" disabled />
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col label-input">
                                                            <label for="rsvHopeDate01_01">성별</label>
                                                            <input type="text" class="c-input" value="${chkRoster.genderType}" id="inputChkPersoninfo01_03" disabled />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="co-article">
                                            <div class="co-cont-article input-cont-article">
                                                <div class="c-input-list-basic input-cont">
                                                    <div class="row">
                                                        <div class="col label-input">
                                                            <label class="c-label-txt">휴대폰 전화번호<i class="is-nec">필수입력</i></label>
                                                            <div class="c-input-phone-group">
                                                                <div class="row inner">
                                                                    <div class="col input-phone-01">
                                                                        <div class="c-select">
                                                                            <select title="휴대폰 전화번호 앞 3자리 선택" id="mobileNum1">
                                                                                <option value="010" selected="">010</option>
                                                                                <option value="">option</option>
                                                                                <option value="">option</option>
                                                                                <option value="">option</option>
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col"><input type="text" id="mobileNum2" class="c-input" title="휴대폰 전화번호 중간 4자리 입력" /></div>
                                                                    <div class="col"><input type="text" id="mobileNum3" class="c-input" title="휴대폰 전화번호 끝 3자리 입력" /></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col label-input">
                                                            <label class="c-label-txt">유선 전화번호</label>
                                                            <div class="c-input-phone-group">
                                                                <div class="row inner">
                                                                    <div class="col input-phone-01">
                                                                        <div class="c-select">
                                                                            <select title="유선 전화번호 앞 3자리 선택" id="phoneNum1">
                                                                                <option value="010" selected="">010</option>
                                                                                <option value="">option</option>
                                                                                <option value="">option</option>
                                                                                <option value="">option</option>
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col"><input type="text" id="phoneNum2" class="c-input" title="유선 전화번호 중간 4자리 입력" /></div>
                                                                    <div class="col"><input type="text" id="phoneNum3" class="c-input" title="유선 전화번호 끝 3자리 입력" /></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col label-input">
                                                            <label class="c-label-txt">주소<i class="is-nec">필수입력</i></label>
                                                            <div class="row inner c-input-address-group">
                                                                <div class="col input-addr-01">
                                                                    <input type="text" class="c-input" id="addrNum" title="우편번호 입력" placeholder="우편번호" />
                                                                </div>
                                                                <div class="col input-addr-02"><input type="text" id="addr" class="c-input" title="주소 입력" placeholder="주소를 입력해주세요." /></div>
                                                                <div class="col input-addr-03">
                                                                    <button type="button" class="co-btn input-btn" id="addrBtn"><span>주소검색</span></button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col label-input">
                                                            <label for="inputChkPersoninfo01_04">상세주소<i class="is-nec">필수입력</i></label>
                                                            <input type="text" class="c-input" name="detailAddr" id="inputChkPersoninfo01_04" value="" />
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col label-input">
                                                            <label class="c-label-txt">이메일<i class="is-nec">필수입력</i></label>
                                                            <div class="c-input-email-group">
                                                                <div class="row inner">
                                                                    <div class="col-6 input-email-01">
                                                                        <input type="text" class="c-input" id="email1" title="이메일 계정입력" value="" />
                                                                    </div>
                                                                    <div class="col-6 input-email-02">
                                                                        <div class="row">
                                                                            <div class="col-6">
                                                                                <input type="text" class="c-input" id="email2" title="이메일 도메인 입력" value="" />
                                                                            </div>
                                                                            <div class="col-6">
                                                                                <div class="c-select">
                                                                                    <select title="이메일 도메인 선택" onchange="emailPick()" id="emailPick">
                                                                                        <option value="" selected="">직접입력</option>
                                                                                        <option value="naver.com">네이버</option>
                                                                                        <option value="daum.net">다음</option>
                                                                                        <option value="gmail.com">구글</option>
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
                                                        <div class="col label-input">
                                                            <label>검진 결과 수신 방법<i class="is-nec">필수입력</i></label>
                                                            <div class="c-m-input-list" id="resultReceive">
                                                                <div class="input-col">
                                                                    <div class="inner">
                                                                        <div class="inner">
                                                                            <div class="c-rdochk txt-type02">
                                                                                <input type="radio" id="rdoChkupClassify01_01" name="rdogrp01" value="00"/>
                                                                                <label for="rdoChkupClassify01_01" class="chk-label"><i></i><span>E-Mail 수신</span></label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="input-col">
                                                                    <div class="inner">
                                                                        <div class="c-rdochk txt-type02">
                                                                            <input type="radio" id="rdoChkupClassify01_02" name="rdogrp01" value="10"/>
                                                                            <label for="rdoChkupClassify01_02" class="chk-label"><i></i><span>우편으로 수신</span></label>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="input-col">
                                                                    <div class="inner">
                                                                        <div class="c-rdochk txt-type02">
                                                                            <input type="radio" id="rdoChkupClassify01_03" name="rdogrp01" value="20"/>
                                                                            <label for="rdoChkupClassify01_03" class="chk-label"><i></i><span>검진기관 내원 수령</span></label>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="input-col">
                                                                    <div class="inner">
                                                                        <div class="c-rdochk txt-type02">
                                                                            <input type="radio" id="rdoChkupClassify01_04" name="rdogrp01" value="30"/>
                                                                            <label for="rdoChkupClassify01_04" class="chk-label"><i></i><span>전자등기 수령</span></label>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col label-input">
                                                            <label for="inputChkPersoninfo01_05">검진 요청사항</label>
                                                            <div class="c-txtarea-field">
                                                                <textarea id="checkupRequest" class="c-txt-area type02" placeholder="의료진에 전달하고자 하는 내용(ex 알러지, 복용약 등)을 입력해 주세요. 아스피린, 항 응고제, 혈압, 당뇨 기타 약이 있으시면 꼭 기재해 주세요. &#13;&#10;심장관련 질환이 있거나 수술 또는 병력, 치료중인 사항도 기입해주셔야 하며 검진 진행 시 제한이 있을 수 있습니다."></textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-6">
                                        <div class="co-article">
                                            <div class="co-title-field">
                                                <h2 class="sub-title">예약 시 유의사항</h2>
                                            </div>
                                            <div class="co-cont-article type01">
                                                <div class="inner">
                                                    <ul class="co-list-card circle02 is-gray-2">
                                                        <li>검진 예약의 “예약상태”는 예약신청&gt;예약대기&gt;예약확정&gt;검진완료 순으로 진행 됩니다.</li>
                                                        <li>검진 예약 변경 및 취소는 [ 검진예약/결과조회&gt;예약내역 ] 에서 신청 가능합니다.</li>
                                                        <li>특수검사(대장내시경,MRI,MRA,유방초음파,심장초음파 등)의 일정에 따라 예약 신청일정이 변경될 수 있습니다.</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="co-article">
                                            <div class="co-title-field">
                                                <h2 class="sub-title">서비스 약관 동의</h2>
                                            </div>
                                            <div class="co-cont-article terms-type all-chk-field">
                                                <div class="terms-all-chkbox">
                                                    <div class="c-chkbox type01">
                                                        <input type="checkbox" id="termsAllChk_01" class="all-terms-chk" />
                                                        <label for="termsAllChk_01" class="chk-label"><i></i><span>전체동의</span></label>
                                                    </div>
                                                    <p class="co-ref-txt">전체 동의는 약관 동의를 한번에 동의할 수 있으며, 개별적으로도 동의를 선택하실 수 있습니다.</p>
                                                </div>
                                                <ul class="co-terms-chk-list">
                                                    <li>
                                                        <div class="co-terms-chk-card">
                                                            <div class="c-chkbox type01">
                                                                <input type="checkbox" id="termsChk_01_01" class="per-term-chk" />
                                                                <label for="termsChk_01_01" class="chk-label"><i></i><span>[필수] 개인정보 수집 및 이용동의</span></label>
                                                            </div>
                                                            <div class="co-terms-detail terms-scroll">
                                                                <div class="inner">
                                                                    <div class="terms-row">
                                                                        <p class="title">제공 받는 자</p>
                                                                        <div class="cont">
                                                                            건강검진은 건강보험가입자들의 건강을 유지·증진하고, 경제적 손실을 최소화하며 장기적으로 보험급여비의 지출을 줄이고자 1980년에 시작되었음. 건강검진은 건강보험가입자들의 건강을
                                                                            유지·증진하고, 경제적 손실을 최소화하며 장기적으로 보험급여비의 지출을 줄이고자 1980년에 시작되었음. 건강검진은 건강보험가입자들의 건강을 유지·증진하고, 경제적 손실을 최소화하며
                                                                            장기적으로 보험급여비의 지출을 줄이고자 1980년에 시작되었음. 건강검진은 건강보험가입자들의 건강을 유지·증진하고, 경제적 손실을 최소화하며 장기적으로 보험급여비의 지출을 줄이고자
                                                                            1980년에 시작되었음. 건강검진은 건강보험가입자들의 건강을 유지·증진하고, 경제적 손실을 최소화하며 장기적으로 보험급여비의 지출을 줄이고자 1980년에 시작되었음. 건강검진은
                                                                            건강보험가입자들의 건강을 유지·증진하고, 경제적 손실을 최소화하며 장기적으로 보험급여비의 지출을 줄이고자 1980년에 시작되었음.
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="co-terms-chk-card">
                                                            <div class="c-chkbox type01">
                                                                <input type="checkbox" id="termsChk_01_02" class="per-term-chk" />
                                                                <label for="termsChk_01_02" class="chk-label"><i></i><span>[필수] 민감정보 수집 및 이용동의 </span></label>
                                                            </div>
                                                            <div class="co-terms-detail terms-scroll type02">
                                                                <div class="inner">
                                                                    <div class="terms-row">
                                                                        <p class="cont">KMI 헬스케어는 검진예약의 원활한 진행을 위해 아래와 같이 개인정보를 수집 이용합니다. 개인정보 수집 이용동의 (필수사항)</p>
                                                                    </div>
                                                                    <div class="terms-row">
                                                                        <p class="title">제공 받는자</p>
                                                                        <div class="cont">검진기관명</div>
                                                                    </div>
                                                                    <div class="terms-row">
                                                                        <p class="title">제공항목</p>
                                                                        <div class="cont">요청사항</div>
                                                                    </div>
                                                                    <div class="terms-row">
                                                                        <p class="title">제공목적</p>
                                                                        <div class="cont">검진예약시 다음과 귀하의 개인정보를 수집 이용합니다.</div>
                                                                    </div>
                                                                    <div class="terms-row">
                                                                        <p class="title">보유 및 이용기간</p>
                                                                        <div class="cont">이용 목적 달성 시 또는 보유기간 경과시</div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="co-terms-chk-card">
                                                            <div class="c-chkbox type01">
                                                                <input type="checkbox" id="termsChk_01_03" class="per-term-chk" />
                                                                <label for="termsChk_01_03" class="chk-label"><i></i><span>[필수] 개인정보의 제3자 제공 동의</span></label>
                                                            </div>
                                                            <div class="co-terms-detail terms-scroll">
                                                                <div class="inner">
                                                                    <div class="terms-row">
                                                                        <p class="title">제공 받는자</p>
                                                                        <div class="cont">
                                                                            건강검진은 건강보험가입자들의 건강을 유지·증진하고, 경제적 손실을 최소화하며 장기적으로 보험급여비의 지출을 줄이고자 1980년에 시작되었음. 건강검진은 건강보험가입자들의 건강을
                                                                            유지·증진하고, 경제적 손실을 최소화하며 장기적으로 보험급여비의 지출을 줄이고자 1980년에 시작되었음. 건강검진은 건강보험가입자들의 건강을 유지·증진하고, 경제적 손실을 최소화하며
                                                                            장기적으로 보험급여비의 지출을 줄이고자 1980년에 시작되었음. 건강검진은 건강보험가입자들의 건강을 유지·증진하고, 경제적 손실을 최소화하며 장기적으로 보험급여비의 지출을 줄이고자
                                                                            1980년에 시작되었음. 건강검진은 건강보험가입자들의 건강을 유지·증진하고, 경제적 손실을 최소화하며 장기적으로 보험급여비의 지출을 줄이고자 1980년에 시작되었음. 건강검진은
                                                                            건강보험가입자들의 건강을 유지·증진하고, 경제적 손실을 최소화하며 장기적으로 보험급여비의 지출을 줄이고자 1980년에 시작되었음.
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="co-terms-chk-card">
                                                            <div class="c-chkbox type01">
                                                                <input type="checkbox" id="termsChk_01_04" class="per-term-chk" />
                                                                <label for="termsChk_01_04" class="chk-label"><i></i><span>[필수] 민감정보의 제3자 제공동의</span></label>
                                                            </div>
                                                            <div class="co-terms-detail terms-scroll">
                                                                <div class="inner">
                                                                    <div class="terms-row">
                                                                        <p class="title">제공 받는자</p>
                                                                        <div class="cont">
                                                                            건강검진은 건강보험가입자들의 건강을 유지·증진하고, 경제적 손실을 최소화하며 장기적으로 보험급여비의 지출을 줄이고자 1980년에 시작되었음. 건강검진은 건강보험가입자들의 건강을
                                                                            유지·증진하고, 경제적 손실을 최소화하며 장기적으로 보험급여비의 지출을 줄이고자 1980년에 시작되었음. 건강검진은 건강보험가입자들의 건강을 유지·증진하고, 경제적 손실을 최소화하며
                                                                            장기적으로 보험급여비의 지출을 줄이고자 1980년에 시작되었음.
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ul>
                                                <div class="co-ref-txt fs-small">
                                                    ※ 고객님은 본 약관에 동의하지 않을 권리가 있습니다. 다만 본 약관에 동의하지 않을 경우 검진 예약 진행이 불가 함을 알려 드립니다.<br />
                                                    검진예약을 진행 하실 경우 해당 약관에 동의하여 주시기 바랍니다.
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="resevation-btmbar-wrap">
                                <div class="resevation-btm-bar type01">
                                    <div class="buttons">
                                        <div class="left">
                                            <a onclick="goPage('checkupdaylist')" class="co-btn btn-reservation-prev is-active"><span>이전</span></a>
                                        </div>
                                        <div class="right">

                                            <a onclick="goFinalconfirmlist()" class="co-btn btn-reservation-next"><span>다음</span></a>
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
            <jsp:include page="/WEB-INF/views/common/footer.jsp" />

        
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

    <script>
        // 서비스 약관 전체 동의 Checkbox Control
        $('.all-chk-field').on('click', '.all-terms-chk', function() {
            $(this).parents('.all-chk-field').find('input').prop('checked', $(this).is(':checked'));
        });

        $('.all-chk-field').on('click', '.per-term-chk', function() {
            var isChecked = true;
            $('.all-chk-field .per-term-chk').each(function() {
                isChecked = isChecked && $(this).is(':checked');
            });

            $('#termsAllChk_01').prop('checked', isChecked);
        });

        $(window).on('load resize', function() {
            reservationSideBarFloating();
        });
        $(window).on('load resize scroll', function() {
            reservationBtmBarFixed();
        });
        
        $(document).ready(function(){
        	let rosterInfo = JSON.parse(localStorage.getItem('rosterInfo') || 'null');
        	
        	if(rosterInfo != null){
	        	$('#mobileNum1').val(rosterInfo.name.mobileNum.substring(0,3));
	        	$('#mobileNum2').val(rosterInfo.name.mobileNum.substring(3,7));
	        	$('#mobileNum3').val(rosterInfo.name.mobileNum.substring(7,12));   	
	        	$('#phoneNum1').val(rosterInfo.name.phoneNum.substring(0,3));
	        	$('#phoneNum2').val(rosterInfo.name.phoneNum.substring(3,7));
	        	$('#phoneNum3').val(rosterInfo.name.phoneNum.substring(7,12));
	        	$('#addrNum').val(rosterInfo.name.addrNum);
	        	$('#addr').val(rosterInfo.name.addr);
	        	$('#inputChkPersoninfo01_04').val(rosterInfo.name.addrDetail);
	        	let email = rosterInfo.name.email.split('@');
	        	$('#email1').val(email[0]);
	        	$('#email2').val(email[1]);
	        	$('input:radio[name=rdogrp01]:input[value=' + rosterInfo.name.resultReceive + ']').attr("checked", true);
	        	$('#checkupRequest').val(rosterInfo.name.checkupRequest);
	        	if(rosterInfo.name.chk1 == true){
	        		$('#termsChk_01_01').prop("checked", true);
	        	}
	        	if(rosterInfo.name.chk2 == true){
	        		$('#termsChk_01_02').prop("checked", true);
	        	}
	        	if(rosterInfo.name.chk3 == true){
	        		$('#termsChk_01_03').prop("checked", true);
	        	}
	        	if(rosterInfo.name.chk4 == true){
	        		$('#termsChk_01_04').prop("checked", true);
	        	}
	        	if(rosterInfo.name.chk1 == true && rosterInfo.name.chk2 == true && 
	        			rosterInfo.name.chk3 == true && rosterInfo.name.chk4 == true){
	        		$('#termsAllChk_01').prop("checked", true);
	        	}
        	}
        });
        
        function goFinalconfirmlist(){
        	let chk1 = $('#termsChk_01_01').is(':checked');
			let chk2 = $('#termsChk_01_02').is(':checked');
			let chk3 = $('#termsChk_01_03').is(':checked');
			let chk4 = $('#termsChk_01_04').is(':checked');
			let svPartnerCenterId = JSON.parse(localStorage.getItem('svPartnerCenterId')).name;
			let itemNum = JSON.parse(localStorage.getItem('itemNum')).name;
			let crn	= JSON.parse(localStorage.getItem('chekupRosterNo')).name;
        	if($('#mobileNum2').val() == "" || $('#mobileNum2').val() == null){
        		alert("휴대폰 번호를 입력해주세요.");
        		$("#mobileNum2").focus();
        		return false;
        	}else if($('#mobileNum3').val() == "" || $('#mobileNum3').val() == null){
        		alert("휴대폰 번호를 입력해주세요.");
        		$("#mobileNum3").focus();
        		return false;
        	}else if($('#addrNum').val() == "" || $('#addrNum').val() == null){
        		alert("우편번호를 입력해주세요.");
        		$("#addrNum").focus();
        		return false;
        	}else if($('#addr').val() == "" || $('#addr').val() == null){
        		alert("주소를 입력해주세요.");
        		$("#addr").focus();
        		return false;
        	}else if($('#inputChkPersoninfo01_04').val() == "" || $('#inputChkPersoninfo01_04').val() == null){
        		alert("상세주소를 입력해주세요.");
        		$("#inputChkPersoninfo01_04").focus();
        		return false;
        	}else if($('#email1').val() == "" || $('#email1').val() == null){
        		alert("이메일을 입력해주세요.");
        		$("#email1").focus();
        		return false;
        	}else if($('#email2').val() == "" || $('#email2').val() == null){
        		alert("이메일을 입력해주세요.");
        		$("#email1").focus();
        		return false;
        	}else if($("input:radio[name='rdogrp01']:checked").val() == null){
        		alert("검진 결과 수신 방법을 선택해주세요.");
        		$("#rdogrp01").focus();
        		return false;
        	}else if(chk1 == false){
				alert("서비스 약관에 동의해주세요.");
				$("#termsChk_01_01").focus();
				return false;
			}else if(chk2 == false){
				alert("서비스 약관에 동의해주세요.");
				$("#termsChk_01_02").focus();
				return false;
			}else if(chk3 == false){
				alert("서비스 약관에 동의해주세요.");
				$("#termsChk_01_03").focus();
				return false;
			}else if(chk4 == false){
				alert("서비스 약관에 동의해주세요.");
				$("#termsChk_01_04").focus();
				return false;
			}
        	

        	saveData();
        	location.href="finalconfirmlist?svpartnercenterid="+svPartnerCenterId +"&itemnum="+itemNum +"&chekuprosterno="+crn;
        }
        
        function saveData(){
        	let rosterName = $('#inputChkPersoninfo01_01').val();
        	let birthday = $('#inputChkPersoninfo01_02').val();
        	let genderCd = $('#inputChkPersoninfo01_03').val();
        	let mobileNum = $('#mobileNum1').val();
        	mobileNum += $('#mobileNum2').val();
        	mobileNum += $('#mobileNum3').val();
        	let phoneNum = $('#phoneNum1').val();
        	phoneNum += $('#phoneNum2').val();
        	phoneNum += $('#phoneNum3').val(); 
        	let addrNum = $('#addrNum').val();
        	let addr = $('#addr').val();
        	let addrDetail = $('#inputChkPersoninfo01_04').val();
        	let email = $('#email1').val()+'@';
        	email += $('#email2').val();
        	let resultReceive = $("input:radio[name='rdogrp01']:checked").val();
			let checkupRequest = $("#checkupRequest").val();
			let chk1 = $('#termsChk_01_01').is(':checked');
			let chk2 = $('#termsChk_01_02').is(':checked');
			let chk3 = $('#termsChk_01_03').is(':checked');
			let chk4 = $('#termsChk_01_04').is(':checked');
			let rosterInfo = {"rosterName":rosterName, "birthday":birthday, "genderCd":genderCd,"mobileNum":mobileNum, 
							"phoneNum":phoneNum, "addrNum":addrNum, "addr":addr, "addrDetail":addrDetail, "email":email, 
							"resultReceive":resultReceive,"checkupRequest":checkupRequest, "chk1":chk1, "chk2":chk2, 
							"chk3":chk3, "chk4":chk4};
        	localStorage.setItem('rosterInfo', JSON.stringify({name: rosterInfo}));
        }
        
        function emailPick(){
        	$('#email2').val($('#emailPick').val());
        }
        
        function goPage(page){
        	saveData();
        	let crn	= JSON.parse(localStorage.getItem('chekupRosterNo')).name;
        	let itemNum = JSON.parse(localStorage.getItem('itemNum')).name;
   	     	let svPartnerCenterId = JSON.parse(localStorage.getItem('svPartnerCenterId')).name;

        	if(page == "checkupdaylist"){
        		location.href = "checkupdaylist";
        	}else if(page == "partnerhospital"){
        		location.href = "partnerhospital?saveChekupRosterNo=" + crn;
        	}else if(page == "rosterchoice"){
        		location.href ="rosterchoice";
        	}else if(page == "choicecheckup"){
          		location.href = "choicecheckup?checkupProductNo=" + itemNum +"&partnerCenterId=" +svPartnerCenterId;
        	}else if(page == "addtest"){
        		location.href = "addtest?checkupProductNo="+itemNum+"&partnerCenterId="+svPartnerCenterId;
        	}
        }
        
        document.getElementById("addrBtn").addEventListener("click", function(){ //주소입력칸을 클릭하면
            //카카오 지도 발생
            new daum.Postcode({
                oncomplete: function(data) { //선택시 입력값 세팅
                	document.querySelector("#addrNum").value = data.zonecode;
                    document.getElementById("addr").value = data.address; // 주소 넣기
                    document.querySelector("input[name=detailAddr]").focus(); //상세입력 포커싱
                }
            }).open();
        });
        
    </script>
</body>

</html>