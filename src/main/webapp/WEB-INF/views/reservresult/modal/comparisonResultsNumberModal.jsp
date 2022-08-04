<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <!-- 검진결과 비교하기 버튼 클릭 시 팝업 그래프 -->                
            <!-- [Popup Source] -->
            <div class="c-layer-popup type04 popupChkupResultCompareChart" id="popupChkupResultCompareChart" role="dialog" aria-labelledby="popupChkupResultCompareChart" aria-modal="true" aria-hidden="true" style="display:none">
                <div class="modal-field" tabindex="0">
                    <div class="c-modal-header">
                        <div class="c-modal-title-field">
                            <h4 class="c-title" id="popupChkupResultCompareChart">검진 결과 비교</h4>
                        </div>
                        <button type="button" class="popup-cls-btn" onclick="closeBtnClick();"><span class="skip">팝업 닫기</span></button>
                    </div>
                    <!-- c-modal-body -->
                    <div class="c-modal-body">
                        <div class="c-modal-inner">
                            <div class="graph-chkupresult-compare-wrap">
<!--                                 <div class="co-detail-title-field"> -->
<!--                                     <p class="title">LDL콜레스트롤(LDL-Chol)</p> -->
<!--                                     <button class="btn-chkup-info-detail"> -->
<!--                                         <i class="ico-type01 t-i-info01"><span>설명 자세히 보기</span></i> -->
<!--                                     </button> -->
<!--                                 </div> -->
                                <div class="co-tab-wrap graph-chkupresult-compare-tab-wrap">
									<ul class='co-tab-list type01 tab-event w-auto' role='tablist' id="compareTabUl">
										<li style="display:none"><a href='javascript:;' onclick="compareBtnClick(this);" class='on' role='tab' aria-selected='true' id='chkupResultCompareTab_01' aria-controls='chkupResultCompareTabPanel_01'></a></li>
										<li style="display:none"><a href='javascript:;' onclick="compareBtnClick(this);" role='tab' aria-selected='false' id='chkupResultCompareTab_02' aria-controls='chkupResultCompareTabPanel_02'></a></li>				                
										<li style="display:none"><a href='javascript:;' onclick="compareBtnClick(this);" role='tab' aria-selected='false' id='chkupResultCompareTab_03' aria-controls='chkupResultCompareTabPanel_03'></a></li>         
										<li style="display:none"><a href='javascript:;' onclick="compareBtnClick(this);" role='tab' aria-selected='false' id='chkupResultCompareTab_04' aria-controls='chkupResultCompareTabPanel_04'></a></li>         
										<li style="display:none"><a href='javascript:;' onclick="compareBtnClick(this);" role='tab' aria-selected='false' id='chkupResultCompareTab_05' aria-controls='chkupResultCompareTabPanel_05'></a></li>         
									</ul>
									<div class='tab-cont-wrap' id="compareTabBody">
										 <!-- chkupResultCompareTabPanel_01 -->
                                        <div class="tab-content on" role="tabpanel" id="chkupResultCompareTabPanel_01" aria-labelledby="chkupResultCompareTab_01" tabindex="0">                                            
                                            <div class="chart-field">
                                                <canvas id="resultCompareChart01" class="compare-chart"></canvas>
                                            </div>
                                        </div>
                                        <!-- chkupResultCompareTabPanel_02 -->
                                        <div class="tab-content" role="tabpanel" id="chkupResultCompareTabPanel_02" aria-labelledby="chkupResultCompareTab_02" tabindex="1">
                                            <div class="chart-field">
                                                <canvas id="resultCompareChart02" class="compare-chart"></canvas>
                                            </div>
                                        </div>
                                        <!-- chkupResultCompareTabPanel_03 -->
                                        <div class="tab-content" role="tabpanel" id="chkupResultCompareTabPanel_03" aria-labelledby="chkupResultCompareTab_03" tabindex="2">
                                            <div class="chart-field">
                                                <canvas id="resultCompareChart03" class="compare-chart"></canvas>
                                            </div>
                                        </div>
                                        <!-- chkupResultCompareTabPanel_04 -->
                                        <div class="tab-content" role="tabpanel" id="chkupResultCompareTabPanel_04" aria-labelledby="chkupResultCompareTab_04" tabindex="3">
                                            <div class="chart-field">
                                                <canvas id="resultCompareChart04" class="compare-chart"></canvas>
                                            </div>
                                        </div>
                                        <!-- chkupResultCompareTabPanel_05 -->
                                        <div class="tab-content" role="tabpanel" id="chkupResultCompareTabPanel_05" aria-labelledby="chkupResultCompareTab_05" tabindex="4">
                                            <div class="chart-field">
                                                <canvas id="resultCompareChart05" class="compare-chart"></canvas>
                                            </div>
                                        </div>
									</div>									
                                </div>
                                <div class="co-ref-txt">
                                    최대 5개의 검진 결과에 대한 내역입니다.<br />
                                    검진 결과의 임상참고치는 검진 기관별 분석 방법의 차이로 임상참고치의 범위에 차이가 발생할 수 있습니다.
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- //  c-modal-body -->
                    <div class="c-modal-footer">
                        <div class="inner">
                            <div class="buttons">
                                <button type="button" class="co-btn bg-navy-1 popup-cls-btn" onclick="closeBtnClick();"><span>확인</span></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- = type04  -->
            <!-- [ // layer popup] -->        

        <!-- // 검진결과 비교하기 버튼 클릭 시 팝업 -->	