<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<div class="c-layer-popup type04" id="abc" role="dialog" aria-labelledby="abc" aria-modal="true" aria-hidden="true">
                <div class="modal-wrap">
                    <div class="modal-field" tabindex="0">
                        <div class="c-modal-header">
                            <div class="c-modal-title-field">
                                <h4 class="c-title" id="popupDetailCheckupCompare01_Label">검진 세부 항목 비교</h4>
                            </div>
                            <button type="button" class="popup-cls-btn"><span class="skip">팝업 닫기</span></button>
                        </div>
                        <!-- c-modal-body -->
                        <div class="c-modal-body">
                            <div class="c-modal-inner">
                                <div class="co-table-field tbl-detail-chkctg-compare">
                                    <div class="co-table cont-type04 tbl-center co-horizontal-scroll">
                                        <table class="table">
                                            <caption>
                                                검진 세부 항목 비교 : 대분류, 중분류, 검사항목, 관련질환, 병원별 건강검진 진행항목 및 개인 추가금에 대한 정보
                                            </caption>
                                            <colgroup>
                                                <col style="width: 100px" />
                                                <col style="width: 116px" />
                                                <col style="width: 128px" />
                                                <col style="width: 190px" />
                                                <col style="width: 211px" />
                                                <col style="width: 211px" />
                                                <col style="width: 211px" />
                                                <col style="width: 211px" />
                                            </colgroup>
                                            <thead>
                                                <tr>
                                                    <th rowspan="2">대분류</th>
                                                    <th rowspan="2">중분류</th>
                                                    <th rowspan="2">검사항목</th>
                                                    <th rowspan="2">관련질환</th>
                                                    <th>KMI 광화문센터 <br />정밀종합검진 일반형</th>
                                                    <th>강북삼성병원 <br />종합검진</th>
                                                    <th>강북삼성병원 <br />종합검진</th>
                                                    <th>하나로의료재단 강북센터 <br />정밀종합검진</th>
                                                </tr>
                                                <tr>
                                                    <th>
                                                        <div class="peronal-add-price">
                                                            <span>개인추가금</span>
                                                            <p class="price"><em>0</em>원</p>
                                                        </div>
                                                    </th>
                                                    <th>
                                                        <div class="peronal-add-price">
                                                            <span>개인추가금</span>
                                                            <p class="price"><em>100,000</em>원</p>
                                                        </div>
                                                    </th>
                                                    <th>
                                                        <div class="peronal-add-price">
                                                            <span>개인추가금</span>
                                                            <p class="price"><em>100,000</em>원</p>
                                                        </div>
                                                    </th>
                                                    <th>
                                                        <div class="peronal-add-price">
                                                            <span>개인추가금</span>
                                                            <p class="price"><em>0</em>원</p>
                                                        </div>
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td rowspan="6">기본검사</td>
                                                    <td rowspan="6">기본검사</td>
                                                    <td>의사초진 및 상담</td>
                                                    <td>
                                                        과거병력 및 현재의 건강상태<br />
                                                        (청진, 문진,촉진)
                                                    </td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                </tr>
                                                <tr>
                                                    <td>키</td>
                                                    <td></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                </tr>
                                                <tr>
                                                    <td>몸무게</td>
                                                    <td></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                </tr>
                                                <tr>
                                                    <td>시력(좌)</td>
                                                    <td></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                </tr>
                                                <tr>
                                                    <td>시력(우)</td>
                                                    <td></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                </tr>
                                                <tr>
                                                    <td>혈압</td>
                                                    <td>수축기 평창기</td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                </tr>
                                                <tr>
                                                    <td rowspan="6">혈액검사</td>
                                                    <td rowspan="6">빈혈 및 혈액 검사 <br />(혈액검사 1)</td>
                                                    <td>RBC</td>
                                                    <td>각종빈혈, 빈혈의 원인</td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                </tr>
                                                <tr>
                                                    <td>Hb</td>
                                                    <td>진성다혈증, 기타혈액질환</td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                </tr>
                                                <tr>
                                                    <td>Hct</td>
                                                    <td></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-close02"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-close02"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                </tr>
                                                <tr>
                                                    <td>MCV</td>
                                                    <td></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                </tr>
                                                <tr>
                                                    <td>MCH</td>
                                                    <td></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                </tr>
                                                <tr>
                                                    <td>MCHC</td>
                                                    <td></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                    <td class="tbl-in-cont"><i class="ico-type01 t-i-check"></i></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- //  c-modal-body -->

                        <div class="c-modal-footer">
                            <div class="inner">
                                <div class="buttons">
                                    <button type="button" class="co-btn is-outline-navy-1 popup-cls-btn"><span>취소</span></button>
                                    <button type="button" class="co-btn bg-navy-1"><span>확인</span></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- = type03  -->
                <!-- [ // layer popup] -->
            </div>