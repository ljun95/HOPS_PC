"use strict";

var _this = void 0;

/*
 = Common
*/
// + openUserControl
var openUserControl = function openUserControl() {
  $('.btn-open-usercontrol').on('click', function () {
    $('.user-control').toggleClass('on');
  });
}; // + selectedTabList


var selectedTabList = function selectedTabList() {
  $('.tab-event > li > a').on('click', function (e) {
    var target = $(e.currentTarget),
        tabList = target.closest('.co-tab-list'),
        tabControl = target.attr('id'),
        tabContList = $(".tab-content[aria-labelledby=".concat(tabControl, "]")).closest('.tab-cont-wrap');
    tabList.find(' > li > a').removeClass('on').attr('aria-selected', 'false');
    target.addClass('on').attr('aria-selected', 'true');
    tabContList.find('.tab-content').removeClass('on').attr('tabindex', -1);
    $(".tab-content[aria-labelledby=".concat(tabControl, "]")).addClass('on').attr('tabindex', 0);
  });
}; // =  toggleAccordion


var toggleAccordion = function toggleAccordion() {
  $('.co-accrodion-list').on('click', 'a.btn-accrodion', function (e) {
    e.preventDefault();
    var target = $(e.currentTarget),
        accordionBox = target.closest('.co-accordion'),
        accordionPanel = target.next('.accrodion-panel');

    if (accordionBox.hasClass('on') && accordionPanel.is(':visible')) {
      accordionBox.removeClass('on').find('.is-blind').text('접기');
      accordionPanel.stop().slideUp(350);
    } else {
      accordionBox.addClass('on').find('.is-blind').text('펼치기');
      accordionPanel.stop().slideDown(350);
    }
  });
}; // + goToTop


var goToTop = function goToTop() {
  $('.btn-go-top').on('click', function () {
    $('html, body').stop().animate({
      scrollTop: '0'
    }, 500);
  });
};
/*
	= Main
*/
// + MainContSideNav


var mainContSideNav = function mainContSideNav() {
  var mainContentsArea = $('.main-container').find('.main-contents-area').innerHeight(),
      mainContSideNav = $('.main-container').find('.checkup-sidebar');
  mainContSideNav.css('max-height', mainContentsArea);
}; // + rollingTxtBanner


var $nowFirstRow = null,
    rollingTxtList = null,
    duration = 1000; // +  Auto Rolling

var rollingAuto = setInterval(function () {
  rollingTxtList = $('.rolling-banner > .list');
  $nowFirstRow = rollingTxtList.children('li:first-child');

  var listRow = function listRow() {
    $nowFirstRow.appendTo(rollingTxtList).show(400);
  };

  $nowFirstRow.hide(1000, listRow);
}, 2000); // + rolling banner txt

var rollingTxtBanner = function rollingTxtBanner() {
  var $rollingPrevbtn = $('.rolling-banner').find('.prev-btn'),
      $rollingNextbtn = $('.rolling-banner').find('.next-btn'); // Prev Btn

  $rollingPrevbtn.on('click', function () {
    clearInterval(rollingAuto);
    rollingTxtList = $('.rolling-banner > .list');
    $nowFirstRow = rollingTxtList.children('li:last-child');

    var listRow = function listRow() {
      $nowFirstRow.prependTo(rollingTxtList).show(duration);
    };

    $nowFirstRow.hide(duration, listRow);
  }); // Next Btn

  $rollingNextbtn.on('click', function () {
    clearInterval(rollingAuto);
    rollingTxtList = $('.rolling-banner > .list');
    $nowFirstRow = rollingTxtList.children('li:first-child');

    var listRow = function listRow() {
      $nowFirstRow.appendTo(rollingTxtList).show(duration);
    };

    $nowFirstRow.hide(duration, listRow);
  });
}; // + sideMenuToggle


var sideMenuToggle = function sideMenuToggle() {
  $('.sidebar-menu > li').on('click', '> a', function (e) {
    e.preventDefault();
    var seletedMenu = $(e.currentTarget),
        sideMenuList = $('.sidebar-menu > li > a'),
        sidebarSubMenuList = $('.sidebar-menu ul');

    if (seletedMenu.hasClass('on') && seletedMenu.next().is(':visible')) {
      sideMenuList.removeClass('on');
      seletedMenu.next().slideUp();
    } else {
      sideMenuList.removeClass('on');
      seletedMenu.addClass('on');

      if (seletedMenu.next().is(':visible') == 0) {
        sidebarSubMenuList.stop().slideUp(350);
      }

      seletedMenu.next().stop().slideToggle(350);
    }
  });
}; // + 검진예약 Sidebar Floating


var reservationSideBarFloating = function reservationSideBarFloating() {
  var fixHeaderHeight = $('.header').height(),
      currentLayoutOffsetY = $('.reservation-sidebar .inner-wrap').offset().top;
  $(window).on('scroll', function () {
    var nowScrollY = $(window).scrollTop() + fixHeaderHeight;
    var topPos = parseInt(nowScrollY - fixHeaderHeight);

    if (nowScrollY > currentLayoutOffsetY) {
      $('.reservation-sidebar .inner-wrap').stop().animate({
        top: topPos
      }, 250);
    } else if (nowScrollY <= currentLayoutOffsetY) {
      $('.reservation-sidebar .inner-wrap').stop().animate({
        top: 0
      }, 250);
    }
  });
};
/*
 = Popup
*/
// + btnOpenPopup


var btnOpenPopup = function btnOpenPopup() {
  $('.btn-open-popup').on('click', function (e) {
    var target = $(e.currentTarget),
        selectedTarget = target.attr('data-target'); // popup show

    $('.c-layer-popup' + selectedTarget).addClass('show').attr('aria-hidden', false);
  });
}; // + btnClosePopup


var btnClosePopup = function btnClosePopup() {
  $('.c-modal-header .popup-cls-btn, .c-modal-footer .popup-cls-btn').on('click', function (e) {
    var target = $(e.currentTarget); // popup hide

    target.parents('.c-layer-popup').attr('aria-hidden', true).removeClass('show');
  });
}; // medical input


var doctorInfo = function doctorInfo() {
  $('.btn-doctor-detail').on('click', function (e) {
    var target = $(e.currentTarget),
        targetName = target.data('name'),
        detailInfo = $('.doctor-detail-info');
    $('.doctor-card').removeClass('on');
    target.addClass('on');
    detailInfo.removeClass('on');
    $('.medical-team-list').find("[data-target=\"".concat(targetName, "\"]")).addClass('on');
  });
}; // = 검진 예약


var reserveContSideNav = function reserveContSideNav() {
  var reserveContentsArea = $('.resevation-container').find('.reserve-contents-area').innerHeight(),
      reserveContSideNav = $('.resevation-container').find('.reservation-sidebar');
  reserveContSideNav.css('max-height', reserveContentsArea);
}; // + 검진항목 선택


var checkupProduct = function checkupProduct() {
  $('.btn-chkupproduct-select').on('click', function (e) {
    var targetCard = $(e.currentTarget),
        nowChkupCard = targetCard.closest('.institution-detail-card');
    $('.institution-datail-list .institution-detail-card').removeClass('on');
    nowChkupCard.addClass('on');
  });
}; // + 검진항목 하단 버튼 제어


var btmCompareBar = function btmCompareBar() {
  $('.btn-bar-toggle').on('click', function (e) {
    $(this).toggleClass('is-open');

    if ($(this).hasClass('is-open')) {
      $(this).find('.is-blind').text('접기');
    } else {
      $(this).find('.is-blind').text('펼치기');
    }

    var target = $(e.currentTarget);
    var btmCompareHeight = target.closest('.resevation-btmbar-wrap').height();
    reservationBtmBarFixed(btmCompareHeight);
  });
}; // + 검진예약 하단 bar Control


var reservationBtmBarFixed = function reservationBtmBarFixed() {
  var scrollPoint = 0;
  var btmBarHeight = $('.resevation-btmbar-wrap').outerHeight();

  if ($(window).scrollTop() <= 0) {
    scrollPoint = 0;
  } else {
    scrollPoint = parseInt(window.innerHeight + $(window).scrollTop() + 15); // (41:btmbar-gradient
  }

  if ($('.resevation-btmbar-wrap').find('.btn-bar-toggle').hasClass('is-open')) {
    scrollPoint = scrollPoint + 130;
  } else {
    btmBarHeight = $('.resevation-btmbar-wrap').outerHeight();
  }

  var contentsHeight = parseInt($('.co-location-wrap').outerHeight() + $('.co-cont-section').outerHeight() + btmBarHeight),
      // 컨텐츠 내용 높이
  leftWidth = $('#sideNav').width() + $('.reservation-sidebar').width(),
      leftPosition = $(window).scrollLeft();

  if ($('.resevation-btmbar-wrap').hasClass('no-side')) {
    leftWidth = $('#sideNav').width();
  }

  if (scrollPoint <= contentsHeight) {
    $('.resevation-btmbar-wrap').addClass('fixed');
    $('.resevation-btmbar-wrap').css('left', leftWidth - leftPosition);
  } else {
    $('.resevation-btmbar-wrap').removeClass('fixed');
  }
}; //  + 대상자 선택 활성화


var clientActiveCard = function clientActiveCard() {
  $('.client-card.person').on('click', function (e) {
    var target = $(e.currentTarget),
        cliendCardList = $('.targets-list').find('.client-card.person');
    cliendCardList.removeClass('on');
    target.addClass('on');
  });
}; // + 검진기관 및 항목 카드 선택


var rsvInstitutionCard = function rsvInstitutionCard() {
  $('.rsv-institution-card > a').on('click', function (e) {
    e.preventDefault();
    var target = $(e.currentTarget),
        targetDataName = target.data('name'),
        rsvCardList = $('.rsv-institution-list').find('.rsv-institution-card'),
        rsvDetailView = $('.rsv-institution-list-wrap').find('.detail-card-list');
    rsvCardList.removeClass('on');
    target.parents('.rsv-institution-card').addClass('on');
    rsvDetailView.find('.rsv-institution-datail-field').removeClass('on');
    rsvDetailView.find(".rsv-institution-datail-field[data-target=".concat(targetDataName, "]")).addClass('on');
  });
}; // + 선택검사 체크박스 상태에 따른 스타일 init


var checkupCtgInputChkInit = function checkupCtgInputChkInit() {
  $('.healthexam-item-card .c-chkbox').find('input').each(function () {
    if ($(this).is(':checked')) {
      $(this).closest('.healthexam-item-card').closest('.healthexam-item-card').addClass('on');
    }
  });
}; // +  선택검사 Input Check


var checkupCtgInputChk = function checkupCtgInputChk() {
  var examChk = $('.healthexam-item-card .c-chkbox').find('input');
  examChk.on('change', function (e) {
    var target = $(e.currentTarget),
        inputAttribute = target.attr('type'),
        targetAccodion = target.closest('.chkup-ctg-accordion'),
        targetItemCard = target.closest('.healthexam-item-card'),
        targetAccodionPanel = target.closest('.accrodion-panel'); // active Style Control

    switch (inputAttribute) {
      case 'radio':
        {
          var targetName = target.attr('name');
          $("input[name=".concat(targetName, "]")).closest('.healthexam-item-card').removeClass('on');
          targetItemCard.addClass('on');
          console.log(targetName);
          break;
        }

      case 'checkbox':
        {
          if (target.is(':checked')) {
            target.closest('.healthexam-item-card').addClass('on');
          } else if (!target.is(':checked')) {
            target.closest('.healthexam-item-card').removeClass('on');
          }

          break;
        }
    }
  });
}; // + 선택검사 Total Count 제어


var checkupInputCntControl = function checkupInputCntControl() {
  var examInnerChk = $('.healthexam-item-card .c-chkbox').find('input');
  examInnerChk.on('change', function (e) {
    var inChkItem = $(e.currentTarget),
        inChkItemAccodion = inChkItem.closest('.chkup-ctg-accordion'),
        inChkItemTotalCnt = parseInt(inChkItemAccodion.find('.total-cnt').text()),
        inChkItemCurrentCnt = inChkItemAccodion.find('.current-cnt'),
        inChkAccodionPanel = inChkItem.closest('.accrodion-panel'),
        inChkAccodionLlstElement = inChkItemAccodion.parent('li'); //  Total Count Accordion Control

    var seletedInputCnt = inChkItemAccodion.find('input:checked').length;

    if (seletedInputCnt > inChkItemTotalCnt) {
      return 0;
    } else {
      inChkItemCurrentCnt.text(seletedInputCnt);
    }

    if (seletedInputCnt === inChkItemTotalCnt && !inChkAccodionLlstElement.is(':last-child')) {
      inChkItemAccodion.removeClass('on').find('.is-blind').text('접기');
      inChkAccodionPanel.delay(200).slideUp(350);
      setTimeout(function () {
        inChkAccodionLlstElement.next('li').find('.accrodion-panel').stop().delay(400).slideDown(300);
        inChkAccodionLlstElement.next('li').find('.chkup-ctg-accordion').addClass('on').find('.is-blind').text('펼치기');
      }, 300);
    }
  });
}; // + 선택검사 ToggleAccordion


var ckupctgToggleAccordion = function ckupctgToggleAccordion() {
  if ($('.chkup-ctg-accordion').hasClass('on')) {
    $(_this).find('.accrodion-panel').show();
  }

  $('.medical-chkup-list').on('click', '.btn-ckupctg-accordion', function (e) {
    e.preventDefault();
    var mcTarget = $(e.currentTarget),
        mcCntField = mcTarget.prev('.cnt'),
        mcCurrentCnt = parseInt(mcCntField.children('.current-cnt').text()),
        mcTotalCnt = parseInt(mcCntField.children('.total-cnt').text()),
        mcAccordionBox = mcTarget.closest('.co-accordion'),
        mcAccordionPanel = mcAccordionBox.children('.accrodion-panel');

    if (mcAccordionBox.hasClass('on') && mcAccordionPanel.is(':visible')) {
      mcAccordionPanel.slideUp(300, function () {
        mcAccordionBox.removeClass('on').find('.is-blind').text('접기');
      });
    } else {
      mcAccordionPanel.slideDown(300, function () {
        mcAccordionBox.addClass('on').find('.is-blind').text('펼치기');
      });
    }
  });
}; // 검진센터 탐방


var rsvCenterFloatingRight = function rsvCenterFloatingRight() {
  var fixHeaderHeight = $('.header').height(),
      currentLayoutOffsetY = $('.visiting-center-section').offset().top,
      panelMargin = 40;
  $(window).on('scroll', function () {
    var nowScrollY = $(window).scrollTop() + fixHeaderHeight;
    var topPos = parseInt(nowScrollY - 175); // contents spacing

    console.log(nowScrollY);

    if (nowScrollY > currentLayoutOffsetY) {
      $('.floating-box').stop().animate({
        top: topPos
      }, 300, 'linear');
    } else if (nowScrollY <= currentLayoutOffsetY) {
      $('.floating-box').stop().animate({
        top: 0
      }, 300, 'linear');
    }
  });
}; // + MainContSideNav


var rsvContSideNav = function rsvContSideNav() {
  var mainContentsArea = $('.resevation-container').find('.reserve-contents-area').innerHeight(),
      mainContSideNav = $('.resevation-container').find('.reservation-sidebar');
  mainContSideNav.css('max-height', mainContentsArea);
}; // = Scroll Customazing
// + scrollbarCustom (individual)


var scrollbarCustom = function scrollbarCustom() {
  for (var i = 0; i < arguments.length; i++) {
    window.Scrollbar.init(document.querySelector(i < 0 || arguments.length <= i ? undefined : arguments[i]));
  }
}; // + basicScrollbarCustom  (common)
// - 팝업 내용 많을 경우 custom scrollbar 실행


var basicScrollbarCustom = function basicScrollbarCustom() {
  if ($('.c-layer-popup').hasClass('type03') || $('.c-layer-popup').hasClass('type04') || $('.c-layer-popup').hasClass('type05')) {
    window.Scrollbar.init(document.querySelector('.c-modal-body'));
  }

  if ($('#sideNav').find('.sidebar-menu').length > 0) {
    window.Scrollbar.init(document.querySelector('.sidebar-wrap'));
  }

  if ($('.checkup-sidebar').length > 0) {
    window.Scrollbar.init(document.querySelector('.checkup-sidebar .inner-wrap'));
  }

  if ($('.reservation-sidebar').length > 0) {
    window.Scrollbar.init(document.querySelector('.reservation-sidebar'));
  }
}; // + sidebarScrollbarCustom (terms)


var termsSrollbarCustom = function termsSrollbarCustom() {
  var temsScrollCnt = $('.terms-scroll').length;

  for (var i = 0; i < temsScrollCnt; i++) {
    $('.terms-scroll').eq(i).children('.inner').addClass("scroll-effect".concat(i));
    window.Scrollbar.init(document.querySelector(".scroll-effect".concat(i)));
  }
}; // = Function()


openUserControl();
goToTop();
sideMenuToggle();
btnOpenPopup();
btnClosePopup();
basicScrollbarCustom();
termsSrollbarCustom();
selectedTabList();
//# sourceMappingURL=maps/common.js.map
