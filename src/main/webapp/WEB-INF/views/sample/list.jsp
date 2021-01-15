<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        * {
            margin : 0; /* 바깥 여백 */
            padding : 0; /* 안 여백 */
        }
        li {
            list-style: none;
        }
        a {
            text-decoration: none; /* 링크의 밑줄 제거 */
        }
        img {
            border : 0;  /* 그림 테두리 제거 */
        }
        #top_nav {
            width : 960px;
            height : 30px;
            margin : 0 auto;  /* 현재 객체를 중앙 정렬 */
            position : relative;
            border : 1px solid black; /* 실선 */
        }
        #top_nav > #main_gnb {  /* top_nav 한 단계 아래의 객체 중에서 */
            position : absolute;
            right : 0;  /* 우측 정렬 */
            top : 0;
        }
        #main_gnb > ul {
            overflow : hidden;  /* 객체를 해당 영역에서 벗어나지 않도록 */
        }
        #main_gnb > ul > li {
            float : left;   /* 오른쪽에 객체를 위치할 수 있도록 설정 */
        }
        #main_gnb > ul > li > a {
            display : block;   /* block : 우측에 다른 객체를 위치하지 못하게 함, 반대는 inline */
            padding : 2px 10px; /* 좌우 위아래 */
            border : 1px solid black;
        }
        #main_gnb > ul > li > a:hover { /* 마우스 커서가 진입했을 때 */
            background-color: black;
            color : white;
        }
        #main_gnb > ul > li:first-child > a {
            border-radius: 10px 0 0 10px;  /* 좌상단부터 시계방향 */
        }
        #main_gnb > ul > li:last-child > a {
            border-radius: 0 10px 10px 0;
        }
        #header {
            width : 960px;
            height : 150px;
            margin : 0 auto; /* 중앙정렬 */
            padding : 0;
            position : relative;
            border : 1px solid black;
        }
        #nav {
            width : 960px;
            height : 50px;
            margin : 0 auto;  /* 현재 객체를 중앙 정렬 */
            position : relative;
            border : 1px solid black; /* 실선 */
        }

        #nav > #main_lnb {  
            position : absolute;
            right : 0;  /* 우측 정렬 */
            top : 10px;
        }
        #main_lnb > ul {
            overflow : hidden;  /* 객체를 해당 영역에서 벗어나지 않도록 */
        }
        #main_lnb > ul > li {
            float : left;   /* 오른쪽에 객체를 위치할 수 있도록 설정 */
        }
        #main_lnb > ul > li > a {
            display : block;   /* block : 우측에 다른 객체를 위치하지 못하게 함, 반대는 inline */
            padding : 2px 10px; /* 좌우 위아래 */
            border : 1px solid black;
        }
        #main_lnb > ul > li > a:hover { /* 마우스 커서가 진입했을 때 */
            background-color: black;
            color : white;
        }
        #main_lnb > ul > li:first-child > a {
            border-radius: 10px 0 0 10px;  /* 좌상단부터 시계방향 */
        }
        #main_lnb > ul > li:last-child > a {
            border-radius: 0 10px 10px 0;
        }

        #contents {
            overflow : hidden; /* 현재 객체 내부에 모든 객체를 포함 */
            width: 960px;
            margin : 0 auto;
            position: relative;
            border : 1px solid black;
        }

        #aside {
            float : left; /* 우측에 객체가 위치하도록 설정 */
            width : 200px;
            /* border : 1px solid black; */
        }

        #contents > #aside > p:first-child { /* 맨 위 객체의 윗여백 설정 */
            margin-top : 10px;
        }
        #contents > #aside > p { /* 모든 객체의 아랫여백 설정 */
            margin-bottom: 10px;
        }
        #contents > #aside > p > a:hover {  /* 마우스 커서가 영역에 진입했을때 */
            background-color: rgb(51, 61, 158);
            color: rgb(239, 239, 243);
        }

        #contents > #section {
            float : right;
            width : 750px;
            /* border : 1px solid black; */
        }

        #contents > #section > #article {
            margin : 10px;
            border : 1px solid black;
        }

        #contents > #section > #article > table {
            /* border : 1px solid black; */
            border-collapse: collapse; /* 선이 겹칠 경우 한개로 정리 */
        }

        #contents > #section > #article > table > tr > td {
            /* border : 1px solid black; */
        }

        .board_head1 {
            width : 100px;
            text-align: center;
        }
        .board_head2 {
            width : 270px;
            text-align: center;
        }
        .board_head3 {
            width : 100px;
            text-align: center;
        }
        .board_head4 {
            width : 150px;
            text-align: center;
        }
        .board_head5 {
            width : 100px;
            text-align: center;
        }

        .board_contents1 {
            text-align: center;
        }
        .board_contents3 {
            text-align: center;
        }
        .board_contents4 {
            text-align: center;
        }
        .board_contents5 {
            text-align: center;
        }



        #footer {
            width : 960px;
            margin : 0 auto;
            position : relative;
            border : 1px solid black;
        }
        #footer > p {
            text-align: center;
            margin-top : 10px;
        }


    </style>
</head>
<body>
    <div id="top_nav">
        <div id="main_gnb">
            <ul>
                <li><a href="#">메뉴1</a></li>
                <li><a href="#">메뉴2</a></li>
                <li><a href="#">메뉴3</a></li>
                <li><a href="#">메뉴4</a></li>
                <li><a href="#">메뉴5</a></li>
            </ul>
        </div>
    </div>
    <div id="header">
        <img src="http://placeimg.com/960/150/nature">
    </div>
    <div id="nav">
        <div id="main_lnb">
            <ul>
                <li><a href="#">메뉴1</a></li>
                <li><a href="#">메뉴2</a></li>
                <li><a href="#">메뉴3</a></li>
                <li><a href="#">메뉴4</a></li>
                <li><a href="#">메뉴5</a></li>
            </ul>
        </div>
    </div>
    <div id="contents">
        <div id="aside">
            <p class="leftmenu"><a href="#">메뉴1</a></p>
            <p class="leftmenu"><a href="#">메뉴2</a></p>
            <p class="leftmenu"><a href="#">메뉴3</a></p>
            <p class="leftmenu"><a href="#">메뉴4</a></p>
            <p class="leftmenu"><a href="#">메뉴5</a></p>
        </div>
        <div id="section">
            <div id="article">
                <p class="title">리스트</p>
                <table border="1">
                    <tr>
                        <td class="board_head1">번호</td>
                        <td class="board_head2">제목</td>
                        <td class="board_head3">작성자</td>
                        <td class="board_head4">작성일</td>
                        <td class="board_head5">조회수</td>
                    </tr>
                    <tr>
                        <td class="board_contents1">1</td>
                        <td class="board_contents2">안녕하세요.</td>
                        <td class="board_contents3">홍길동</td>
                        <td class="board_contents4">2021-01-11</td>
                        <td class="board_contents5">5</td>
                    </tr>
                    <tr>
                        <td class="board_contents1">1</td>
                        <td class="board_contents2">안녕하세요.</td>
                        <td class="board_contents3">홍길동</td>
                        <td class="board_contents4">2021-01-11</td>
                        <td class="board_contents5">5</td>
                    </tr>
                    <tr>
                        <td class="board_contents1">1</td>
                        <td class="board_contents2">안녕하세요.</td>
                        <td class="board_contents3">홍길동</td>
                        <td class="board_contents4">2021-01-11</td>
                        <td class="board_contents5">5</td>
                    </tr>
                    <tr>
                        <td class="board_contents1">1</td>
                        <td class="board_contents2">안녕하세요.</td>
                        <td class="board_contents3">홍길동</td>
                        <td class="board_contents4">2021-01-11</td>
                        <td class="board_contents5">5</td>
                    </tr>
                    <tr>
                        <td class="board_contents1">1</td>
                        <td class="board_contents2">안녕하세요.</td>
                        <td class="board_contents3">홍길동</td>
                        <td class="board_contents4">2021-01-11</td>
                        <td class="board_contents5">5</td>
                    </tr>
                    <tr>
                        <td class="board_contents1">1</td>
                        <td class="board_contents2">안녕하세요.</td>
                        <td class="board_contents3">홍길동</td>
                        <td class="board_contents4">2021-01-11</td>
                        <td class="board_contents5">5</td>
                    </tr>
                    <tr>
                        <td class="board_contents1">1</td>
                        <td class="board_contents2">안녕하세요.</td>
                        <td class="board_contents3">홍길동</td>
                        <td class="board_contents4">2021-01-11</td>
                        <td class="board_contents5">5</td>
                    </tr>
                    <tr>
                        <td class="board_contents1">1</td>
                        <td class="board_contents2">안녕하세요.</td>
                        <td class="board_contents3">홍길동</td>
                        <td class="board_contents4">2021-01-11</td>
                        <td class="board_contents5">5</td>
                    </tr>
                    <tr>
                        <td class="board_contents1">1</td>
                        <td class="board_contents2">안녕하세요.</td>
                        <td class="board_contents3">홍길동</td>
                        <td class="board_contents4">2021-01-11</td>
                        <td class="board_contents5">5</td>
                    </tr>
                    <tr>
                        <td class="board_contents1">1</td>
                        <td class="board_contents2">안녕하세요.</td>
                        <td class="board_contents3">홍길동</td>
                        <td class="board_contents4">2021-01-11</td>
                        <td class="board_contents5">5</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <div id="footer">
        <p>화면구현</p>
        <p>Copyright(c) KoreaIT. All Right Reserved.</p>
    </div>
</body>
</html>