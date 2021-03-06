<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>검정 모드 선택</title>
    <link rel="stylesheet" href="../../css/pc960/LRN/select_exam_mode_pop.css">
    <script src="../../js/jquery-2.1.1.min.js"></script>
    <script src="../../js/jquery-ui.min.js"></script>
    <script src="../../js/jquery.easing.1.3.js"></script>
</head>
    <script type="text/javascript">
        function click_select_mode(mode) 
        {
            let language = $("#languageMode option:selected").val();
            let url = "./exam_pop.jsp?mode=" + mode + "&language=" + language;

            window.open(url, "_self");
        }
    </script>
<body>
        <div class="bodyborder">
            <div class="wrap">
                <div class="selectProblem">문제 표시 방식 선택</div>
                <hr>
                <div class="selectType">문제 유형 선택</div>
                <select name="language" id="languageMode">
                    <option value="hiragana" selected="selected">히라가나 (문제 일본어, 선택지 한글)</option>
                    <option value="korean">한국어 (문제 한글, 선택지 일본어)</option>
                </select>
            </div>

            <div class="selectButton">
                <div class="selectMode" onclick="click_select_mode('example');">연습 검정</div>
                <div class="selectMode" onclick="click_select_mode('normal');">일반 검정</div>
            </div>
        </div>
</body>
</html>