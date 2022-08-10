<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="c-layer-popup type03" id="popupConsultApplyDetails" role="dialog" aria-labelledby="popupConsultApplyDetails" aria-modal="true" aria-hidden="true">
                    <div class="modal-wrap modal-dialog-centered">
                        <div class="modal-field">
                            <!-- modal Header -->
                            <div class="c-modal-header">
                                <div class="c-modal-title-field">
                                    <h4 class="c-title" id="popupConsultApplyDetails_Label">상담 답변 보기</h4>
                                </div>
                                <button type="button" class="popup-cls-btn"><span class="skip">팝업 닫기</span></button>
                            </div>

                            <div class="c-modal-body">
                                <div class="c-modal-inner">
                                    <div class="co-article">
                                        <div class="co-title-field">
                                            <h5 class="sub-title">상담 신청 내역</h5>
                                        </div>
                                        <div class="co-cont-article consult-detail">
                                            <div class="inner">
                                                <dl>
                                                    <dt>제목</dt>
                                                    <dd id="questionTitle"></dd>
                                                </dl>
                                                <dl>
                                                    <dt>상담신청일</dt>
                                                    <dd id="regDt"></dd>
                                                </dl>
                                                <dl>
                                                    <dt>신청 내용</dt>
                                                    <dd id="questionContents"></dd>
                                                </dl>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="co-article">
                                        <div class="co-title-field">
                                            <h5 class="sub-title">상담 신청 답변</h5>
                                        </div>
                                        <div class="co-cont-article consult-detail">
                                            <div class="inner" id="answerContents"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- // modal body -->

                            <!-- modal-footer -->
                            <div class="c-modal-footer">
                                <div class="inner">
                                    <div class="buttons">
                                        <button type="button" class="co-btn bg-navy-1 popup-cls-btn"><span>확인</span></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- = type03  -->
                    <!-- [ // layer popup] -->
                </div>