<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>국가건강 검진 제도 안내</title>	
<link rel="shortcut icon" type="image/x-icon" href="${path }/resources/images/ico/favicon.ico" />
<link rel="stylesheet" href="${path }/resources/lib/swiper/css/swiper.css" />
<link rel="stylesheet" href="${path }/resources/lib/jquery-ui/css/jquery-ui.min.css" />
<link rel="stylesheet" href="${path }/resources/css/style.css" />
<script src="${path }/resources/lib/jquery/jquery.min.js"></script>
<script src="${path }/resources/lib/jquery-ui/js/jquery-ui-1.9.2.custom.js"></script>
<script src="${path }/resources/lib/smooth-scrollbar/dist/smooth-scrollbar.js"></script>
</head>
<body>
<!-- Side Navigation -->
<jsp:include page="../common/sidebar.jsp" />
<!-- //Side Navigation -->
<!-- Header-->
<jsp:include page="../common/header.jsp" />	
<!-- // Header-->    
 <div class="contents-wrap healthexam-system-wrap">
                <!-- Contents -->
                <section class="contents">
                    <div class="contents-area">
                        <div class="co-location-wrap">
                            <div class="co-location">
                                <p>
                                    <a href="${path }/main" class="home" title="홈으로 이동"><span class="skip">Home</span></a>
                                </p>

                                <p>건강검진제도</p>


                                <p class="on">국가건강검진 제도안내</p>

                            </div>

                            <div class="co-title-field">
                                <h1 class="title">국가건강검진 제도안내</h1>
                            </div>
                        </div>
                        <div class="co-cont-section">
                            <div class="co-article">
                                <div class="co-title-field">
                                    <h2 class="sub-title">개요</h2>
                                </div>
                                <div class="co-cont-article type01">
                                    <div class="inner">
                                        <div class="cont">
                                            건강검진은 건강보험가입자들의 건강을 유지·증진하고, 경제적 손실을 최소화하며 장d기적으로 보험급여비의 지출을 줄이고자 1980년에 시작되었음. 이후 1988년에 직장피부양자 건강검진 실시, 1990년에 공무원 및 사립학교교직원(이하공교) 피보험자 건강검진 실시(특정암 검진 포함), 1995년
                                            지역조합 피보험자 건강검진 실시, 2000~2001 특정암검사 실시, 2007년 생애전환기 건강진단 및 영유아건강검진 실시, 2016년 학교 밖 청소년 건강 검진 등의 생애주기별 건강검진체계를 통해 평생 건강관리체계의 기반을 구축하였음. 또한, 건강검진의 질 향상을 위한 건강검진 기관의 시설, 장비
                                            등의 제도 개선을 지속적으로 추진해왔음. 일반건강검진 2차·생애전환기건강진단 일반건강검진으로 통합, 공통질환·성연령별질환 구분 및 고혈압, 당뇨병 질환의심자 확진검사 실시, 대장암검진 본인부담금 10% 폐지 및 대장암검진 유예, 66세이상 의료급여생애전환기검진 실시
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="co-article">
                                <div class="co-title-field">
                                    <h2 class="sub-title">일반건강검진</h2>
                                </div>
                                <div class="co-table-field">
                                    <div class="co-table cont-type01">
                                        <table class="table">
                                            <caption>
                                                일반건강검진 정보 : 대상자, 검진항목에 대한 정보
                                            </caption>
                                            <colgroup>
                                                <col style="width: 160px" />
                                                <col />
                                            </colgroup>
                                            <tbody>
                                                <tr>
                                                    <th scope="row">대상자</th>
                                                    <td>지역세대주, 직장가입자, 20세이상 세대원과 피부양자, 20세~64세 의료급여수급권자</td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">검진항목</th>
                                                    <td>
                                                        <div class="inner-cont">
                                                            <p class="co-caption-txt is-blue-1">공통항목</p>
                                                            <ol class="co-list-card number02">
                                                                <li>진찰, 상담, 신장, 체중, 허리둘레, 체질량지수, 시력, 청력, 혈압측정</li>
                                                                <li>AST(SGOT), ALT(SGPT), 감마지티피</li>
                                                                <li>공복혈당</li>
                                                                <li>요단백, 혈청 크레아티닌, 혈색소, 신사구체여과율(e-GFR)</li>
                                                                <li>흉부방사선촬영</li>
                                                                <li>구강검진</li>
                                                            </ol>
                                                        </div>
                                                        <div class="inner-cont">
                                                            <p class="co-caption-txt is-blue-1">성·연령별 검사 항목</p>
                                                            <ul class="co-list-card circle01">
                                                                <li>이상지질혈증 : 남자 24세 이상, 여자 40세 이상, 4년 주기</li>
                                                                <li>B형간염검사(40세, 보균자 및 면역자는 제외)</li>
                                                                <li>치면세균막검사(40세)</li>
                                                                <li>골다공증(54·66세 여성)</li>
                                                                <li>정신건강검사_우울증(20·30·40·50·60·70세) 해당 연령을 시작으로 10년동안 1회</li>
                                                                <li>생활습관평가(40·50·60·70세)</li>
                                                                <li>노인신체기능검사(66·70·80세)</li>
                                                                <li>인지기능장애검사(66세 이상 2년에 1회) 66세 이상, 2년 주기(66세, 68세, 70세.만 해당)</li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="co-article">
                                <div class="co-title-field">
                                    <h2 class="sub-title">암검진</h2>
                                </div>
                                <div class="co-table-field">
                                    <div class="co-table cont-type02">
                                        <table class="table">
                                            <caption>
                                                암검진 정보 : 대상자(내용, 검진항목) 대한 정보
                                            </caption>
                                            <colgroup>
                                                <col style="width: 160px" />
                                                <col />
                                            </colgroup>
                                            <tbody>
                                                <tr>
                                                    <th scope="row">대상자</th>
                                                    <td class="bdr-none">
                                                        <div class="inner-cont">
                                                            <p class="co-caption-txt is-blue-1">내용</p>
                                                            <ul class="co-list-card circle01">
                                                                <li>위암 : 만 40세 이상인 자</li>
                                                                <li>유방암 : 만 40세 이상 여성인 자</li>
                                                                <li>대장암 : 만 50세 이상인 자</li>
                                                                <li>간암 : 간암발생 고위험군 해당자 (상반기1회, 하반기1회)</li>
                                                                <li>자궁경부암 : 만 20세 이상 여성인 자(2년 1회)</li>
                                                                <li>폐암 : 54세 ~ 74세 이상 남녀 중 30갑년 이상 흡연력 보유 고위험군(2년 1회)</li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="inner-cont">
                                                            <p class="co-caption-txt is-blue-1">검진항목</p>
                                                            <ul class="co-list-card circle01">
                                                                <li>위암 : 위내시경검사(위장조영검사 선택 가능)</li>
                                                                <li>유방암 : 유방촬영 검사</li>
                                                                <li>대장암 : 분변잠혈검사(FOBT) 이상 소견시 대장내시경검사</li>
                                                                <li>간암 : 간 초음파검사와 혈액검사 (혈청알파태아단백검사) 병행</li>
                                                                <li>자궁경부암 : 자궁경부세포검사 폐암 : 저선량 흉부CT검사와 사후 결과상담</li>
                                                                <li>자궁경부암 : 자궁경부세포검사 폐암 : 저선량 흉부CT검사와 사후 결과상담</li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="co-article">
                                <div class="co-title-field">
                                    <h2 class="sub-title">국가건강검진 위반시 벌금</h2>
                                </div>
                                <div class="row col-full-height">
                                    <div class="column">
                                        <div class="co-cont-article type01">
                                            <div class="inner">
                                                <p class="co-caption-txt is-blue-1">사업주 벌금</p>
                                                <div class="cont">
                                                    업장 내 인원들에게 건강검진 진행 안내를 연 2회 이상 하였고, 그에 따른 제반사항을 제공했다면 별도의 벌금이 발생하지 않습니다.<br />다만, 위 내용을 이행하지 않았을 경우 업장 내 건강검진을 진행하지 않은 인원에 따라 1회 10만원, 2회 20만원, 3회 30만원이 부과됩니다. (ex. 인원이
                                                    10명인 사업장이 건강검진 위반을 처음 한 경우 100만원의 벌금 발생)한 사업장 기준 최대 1,000만원까지 가산되어 벌금이 청구될 수 있습니다.
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="column">
                                        <div class="co-cont-article type01">
                                            <div class="inner">
                                                <p class="co-caption-txt is-blue-1">직장인 벌금</p>
                                                <div class="cont">
                                                    사업주의 안내 (1년에 2회이상)가 있었음에도 건강검진을 진행하지 않을 경우 1회 5만원, 2회 10만원, 3회 15만원으로 벌금이 상승됩니다.
                                                    <p class="is-gray-2">(ex 각 인원 당 최대 벌금 상승 치는 최대 300만원까지 가산 가능 합니다.)</p>
                                                </div>
                                            </div>
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
<jsp:include page="../common/footer.jsp"/>
<script>	   
</script>