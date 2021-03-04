<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>책단지</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/Sign-up CSS.css" />">
</head>

<body>
    <div class="container">
        <header>
            <div id="logo">
                <!-- 책 아이콘 -->
                <img src="<c:url value="/resources/icon/logo.svg" />" alt="logo-icon"> <!--로고 이미지 작업 필요-->
                <!--책단지 아이콘-->
                <!--책단지 아이콘 클릭시 메인화면 이동-->
                <a href="/">
                	<img class="site-name" src="<c:url value="/resources/icon/책단지.svg" />" alt="책단지-icon">
                </a>
            </div>
    
            <div class="buttons"><!--write버튼, 회원가입버튼, login버튼 묶음-->
                <button type="button" class="login">로그인</button>
                <!-- 
                    <div class="login-info">
                        <form action="">
                            <label for="login-id">이메일로 로그인</label>
                            <input type="email" id="login-id" placeholder="이메일을 입력하세요">
                            <label for="login-password">비밀번호 입력</label>
                            <input type="password" id="login-password" placeholder="비밀번호를 입력하세요">
                            <button type="submit">로그인</button>
                        </form>
                    </div> //아이디,비밀번호 dropdown 입력창 묶음
                -->
                <!--로그인 버튼과 눌렀을때 dropdown되는 입력창들 묶음-->
                <button type="sign-up" class="sign-up" onClick="location.href='/login/signUp'">회원가입</button>
                <!--회원가입 페이지 이동-->
                <button type="write" id="write-button">글쓰기</button>
                <!--글쓰기 페이지 이동-->
            </div>
        </header>
        
        <div class="category">

                <div id="quote">
                    "<br>
                </div>
                누구에게나 그의 정신에<br>
                하나의 큰 획을 그어주는<br>
                책이 있다.<br>
                -<br>
                김유정<br><br><br>
                <img class="saying-logo" src="<c:url value="/resources/icon/logo.svg" />" alt="logo-icon">
            
        </div>
        
        
        <section class="main">
            <form action="">
                <h2>회원가입</h2><br>
                <!--닉네임 입력-->
                <p>
                    <label for="nickname">닉네임</label><br>
                    <input id="nickname" type="text" placeholder="한글과 영문 대 소문자를 사용하세요(특수기호, 공백 사용 불가)">
                    <button id="nickname-button">중복확인</button>
                </p>

                <!--아이디 입력-->
                <p>
                    <label for="id">아이디</label><br>
                    <input id="id" type="text" placeholder="아이디를 입력해주세요.">
                    <button id="id-button">중복확인</button>
                </p>

                <!--비밀번호 입력-->
                <p>
                    <label for="password">비밀번호</label><br>
                    <input id="password" type="text" placeholder="8~16자 영문 대 소문자, 숫자를 사용하세요.">
                </p>
                <!--비밀번호 확인 입력-->

                <p>
                    <label for="password">비밀번호 확인</label><br>
                    <input id="password" type="text" placeholder="비밀번호가 일치하지 않습니다.">
                </p>
                <!--개인정보 동의 내용박스-->
                <label for="agreebox">개인정보 수집, 이용에 대한 동의</label><br>
                <p id="agreebox">
                    - 회원가입, 사이트 이용을 위해서는 아래와 같이 개인정보를 수집, 이용 합니다.<br><br>
                    1. 개인정보 수집 목적: 회원가입, 사이트 이용<br>
                    2. 회원정보 수집 항목: 아이디, 닉네임, 비밀번호<br>
                    3. 보유 및 이용기간: 회원 탈퇴 시까지<br>
                </p>

                <p>
                    <input id="submit-button" type="submit" value="동의하고 회원가입">
                    <!--모든 항목 작성완료시 활성화되도록 해야함-->
                </p>
            </form>
        </section>
    </div>

</body>

</html>