<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
			 
            <div class="c-layer-popup type04 popupCompareBtn" id="popupChkupResultCompareChart" role="dialog" aria-labelledby="popupChkupResultCompareChart" aria-modal="true" aria-hidden="true" style="display:none"> 
                <div class="modal-wrap">
                    <div class="modal-field" tabindex="0">
                        <div class="c-modal-header">
                            <div class="c-modal-title-field">
                                <h4 class="c-title" id="popupChkupResultCompare01_Label">검진 결과 비교</h4>
                            </div>
                            <button type="button" class="popup-cls-btn"><span class="skip">팝업 닫기</span></button>
                        </div>
                        <!-- c-modal-body -->
                        <div class="c-modal-body">
                            <div class="c-modal-inner">
                                <p class="co-ref-txt">최대 5개의 검진 결과에 대한 내역입니다.</p>
                                <div class="co-table-field">
                                    <div class="co-table cont-type04 tbl-center tbl-chkresult-compare">
                                        <table class="table">
                                            <caption>
                                                검진 결과 비교 : 검진일시, 검진기관, 종합 소견에 대한 정보
                                            </caption>
                                            <colgroup>
                                                <col style="width: 200px" />
                                                <col style="width: 260px" />
                                                <col />
                                            </colgroup>
                                            <thead>
                                                <tr>
                                                    <th>검진일시</th>
                                                    <th>검진기관</th>
                                                    <th>소견</th>
                                                </tr>
                                            </thead>
                                            <tbody id="divTypeResult">

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
                                    <button type="button" class="co-btn bg-navy-1 popup-cls-btn"><span>확인</span></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> 
             </div>                            
            <!-- [검진결과 비교하기Popup Source] -->
            <!-- Content-Wrapper -->