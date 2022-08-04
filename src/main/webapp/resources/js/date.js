"use strict";

$.datepicker.setDefaults({
  closeText: '닫기',
  currentText: '오늘',
  prevText: '이전 달',
  nextText: '다음 달',
  monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
  monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
  dayNames: ['일', '월', '화', '수', '목', '금', '토'],
  dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
  weekHeader: '주',
  yearSuffix: '년',
  dateFormat: 'yy-mm-dd',
  showMonthAfterYear: true,
  showOtherMonths: true,
  showButtonPanel: true,
  autoSize: true,
  changeMonth: true,
  changeYear: true,
  buttonImageOnly: true,
  minDate: 0
});

function datepickerBtmBar(input) {
  setTimeout(function () {
    var buttonPane = $(input).datepicker('widget').find('.ui-datepicker-buttonpane');
    var caption = $('<div class="datepicker-caption-warp">' + '<div class="datepicker-caption toDay">오늘</div>' + '<div class="datepicker-caption selectDay">선택</div>' + '<div class="datepicker-caption holiDay">휴일</div>' + '<div class="datepicker-caption deadDay">예약마감</div>' + '</div>');
    caption.appendTo(buttonPane);
  }, 1);
}
//# sourceMappingURL=maps/date.js.map
