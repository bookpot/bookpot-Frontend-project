<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>  
  
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>책단지</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/Home CSS.css" />">
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
            <nav><!--write버튼, 회원가입버튼, login버튼 묶음-->
            
            <!-- 비로그인시 -->
            <sec:authorize access="!isAuthenticated()">
                <button type="button" class="login" onClick="location.href='/login'">로그인</button>
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
                <button type="sign-up" class="sign-up" onclick="location.href='/user/signup'">회원가입</button>
                <!--회원가입 페이지 이동-->
            </sec:authorize>
            
            <!-- 로그인시 (class와 onclick 링크 수정 필요-->
            <sec:authorize access="isAuthenticated()">
            	<button type="button"><sec:authentication property="principal.name" />님 환영합니다</button>
                <button type="button" class="login" >회원정보</button>
                <button type="sign-up" class="sign-up" onclick="location.href='/user/logout'">로그아웃</button>
                <!--회원가입 페이지 이동-->
                <button type="write" id="write-button" onclick="location.href='/writing/detail'">글쓰기</button>
                <!--글쓰기 페이지 이동-->
            </sec:authorize>
            </nav>
        </header>
        
        <div class="category">
            <div class="searching-items">
                <label for="searching">책 찾아보기</label>
                <input type="" id="searching" placeholder="찾는 책의 제목/키워드를 입력하세요">
                <button type="reset">X</button><!--쓴것 초기화 button-->
            </div>     
            <!--버튼 누르면 색 변하도록 js작업하기-->
            <h3>필터</h3>
            <span>국내/외국</span>
            <div class="book-from">
                <button type="button">국내도서</button>
                <button type="button">외국도서</button>
            </div>
            <span>분야</span>
            <div class="book-type">
                <button type="button">예술</button>
                <button type="button">역사</button>
                <button type="button">인문</button>
                <button type="button">비문학</button>
                <button type="button">경제</button>
                <button type="button">정치</button>
                <button type="button">영어</button>
                <button type="button">과학</button>
                <button type="button">여성학</button>
                <button type="button">고전</button> <!--더 적어야함-->
            </div>
            <div class="">
                <button type="button">찾기</button>
                <button type="reset">초기화</button> <!--위에서 누른것들 초기화되도록-->
            </div>
        </div>
        
        <section class="main">
            <form action="" method="GET"> <!--이부분은 어떤 태그를 써야할지 모르겠다 텍스트로 이루어진 버튼으로 봐야하는건지..-->
                <select name="" id="trending">
                    <option value="trending">트렌딩</option>
                    <option value="newest">최신</option>
                </select>
            </form>
        
            <div class="view-type">
                <form action="" method="GET">
                    <select name="view" id="view">
                        <option value="grid">Grid View</option> <!--css에서 icon image로 추후 변경-->
                        <option value="line">Line View</option>
                    </select>
                    <!--따로 버튼 없이 선택하자마자 적용되는 방법은?-->
                </form>
            </div>
        
            <div class="grid-view-contents">
                <div class="grid-view-content">
                    <img src="https://t1.daumcdn.net/cfile/tistory/99D20C355C94394109"
                        alt="book image">
                    <button type="button" class="like-button">256</button> <!--좋아요 버튼.(하트 이모티콘 넣어야함)--> 
                    <div class="book-content">
                        <h1>엔지니어를 위한 인문학 수업</h1>
                        <h3>새뮤얼 플러먼</h3>
                        <h3>2021.02.02</h3>
                        <p>
                            바야흐로 융합의 시대다. 공학과 인문학을 융합하는 교육은 엔지니어의 시야를 넓히고, 문제 해결의 새로운 실마리를 제공해 줄 것이다. 공학교 교육은..
                        </p>
                    </div>
                    <div class="content-info">
                        <div class="profile-img"><!--작성자 옆 프로필사진-->
                            <img src="#" alt="profile image">
                        </div>              
                        <strong>Yunji Jeong</strong>
                        <strong>2020.02.14</strong><!--작성일-->              
                    </div>
                </div>
                <!--이하 반복-->
            </div>
    
            <div class="grid-view-contents">
                <div class="grid-view-content">
                    <img src="https://t1.daumcdn.net/cfile/tistory/99D20C355C94394109"
                        alt="book image">
                    <button type="button" class="like-button">256</button> <!--좋아요 버튼.(하트 이모티콘 넣어야함)--> 
                    <div class="book-content">
                        <h1>엔지니어를 위한 인문학 수업</h1>
                        <h3>새뮤얼 플러먼</h3>
                        <h3>2021.02.02</h3>
                        <p>
                            바야흐로 융합의 시대다. 공학과 인문학을 융합하는 교육은 엔지니어의 시야를 넓히고, 문제 해결의 새로운 실마리를 제공해 줄 것이다. 공학교 교육은..
                        </p>
                    </div>
                    <div class="content-info">
                        <div class="profile-img"><!--작성자 옆 프로필사진-->
                            <img src="#" alt="profile image">
                        </div>              
                        <strong>Yunji Jeong</strong>
                        <strong>2020.02.14</strong><!--작성일-->              
                    </div>
                </div>
            </div>
    
            <div class="grid-view-contents">
                <div class="grid-view-content">
                    <img src="https://t1.daumcdn.net/cfile/tistory/99D20C355C94394109"
                        alt="book image">
                    <button type="button" class="like-button">256</button> <!--좋아요 버튼.(하트 이모티콘 넣어야함)--> 
                    <div class="book-content">
                        <h1>엔지니어를 위한 인문학 수업</h1>
                        <h3>새뮤얼 플러먼</h3>
                        <h3>2021.02.02</h3>
                        <p>
                            바야흐로 융합의 시대다. 공학과 인문학을 융합하는 교육은 엔지니어의 시야를 넓히고, 문제 해결의 새로운 실마리를 제공해 줄 것이다. 공학교 교육은..
                        </p>
                    </div>
                    <div class="content-info">
                        <div class="profile-img"><!--작성자 옆 프로필사진-->
                            <img src="#" alt="profile image">
                        </div>              
                        <strong>Yunji Jeong</strong>
                        <strong>2020.02.14</strong><!--작성일-->              
                    </div>
                </div>
                <!--이하 반복-->    
            </div>
    
            <div class="grid-view-contents">
                <div class="grid-view-content">
                    <img src="https://t1.daumcdn.net/cfile/tistory/99D20C355C94394109"
                        alt="book image">
                    <button type="button" class="like-button">256</button> <!--좋아요 버튼.(하트 이모티콘 넣어야함)--> 
                    <div class="book-content">
                        <h1>엔지니어를 위한 인문학 수업</h1>
                        <h3>새뮤얼 플러먼</h3>
                        <h3>2021.02.02</h3>
                        <p>
                            바야흐로 융합의 시대다. 공학과 인문학을 융합하는 교육은 엔지니어의 시야를 넓히고, 문제 해결의 새로운 실마리를 제공해 줄 것이다. 공학교 교육은..
                        </p>
                    </div>
                    <div class="content-info">
                        <div class="profile-img"><!--작성자 옆 프로필사진-->
                            <img src="#" alt="profile image">
                        </div>              
                        <strong>Yunji Jeong</strong>
                        <strong>2020.02.14</strong><!--작성일-->              
                    </div>
                </div>
                <!--이하 반복-->
            </div>
            
            <div class="grid-view-contents">
                <div class="grid-view-content">
                    <img src="https://t1.daumcdn.net/cfile/tistory/99D20C355C94394109"
                        alt="book image">
                    <button type="button" class="like-button">256</button> <!--좋아요 버튼.(하트 이모티콘 넣어야함)--> 
                    <div class="book-content">
                        <h1>엔지니어를 위한 인문학 수업</h1>
                        <h3>새뮤얼 플러먼</h3>
                        <h3>2021.02.02</h3>
                        <p>
                            바야흐로 융합의 시대다. 공학과 인문학을 융합하는 교육은 엔지니어의 시야를 넓히고, 문제 해결의 새로운 실마리를 제공해 줄 것이다. 공학교 교육은..
                        </p>
                    </div>
                    <div class="content-info">
                        <div class="profile-img"><!--작성자 옆 프로필사진-->
                            <img src="#" alt="profile image">
                        </div>              
                        <strong>Yunji Jeong</strong>
                        <strong>2020.02.14</strong><!--작성일-->              
                    </div>
                </div>
                <!--이하 반복-->
            </div>
        </section>
    </div>


    <script src=""></script>
</body>

</html>