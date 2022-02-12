<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- jQuery 라이브러리 --%>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>오늘 뭐 입지?</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/resources/common/common.css">
    <link rel="stylesheet" href="/resources/common/header.css">
<link rel="stylesheet" href="/resources/common/footer.css">
<link rel="stylesheet" href="/resources/css/myPage/comments.css">
    <script src="/resources/common/common.js"></script>

    <style>

    </style>

</head>

<body>
    <jsp:include page="/WEB-INF/views/common/header.jsp" />

    <div id="content">
        <div id="body">
            <div id="profile-wrapwrap">
                <jsp:include page="/WEB-INF/views/myPage/include/profile.jsp" />
            </div>
            <div class="contents-wrap">
                <div class="contents-title-wrap">
                    <div class="contents-title">나의 댓글</div>
                    <div class="contents-num">18</div>
                </div>
                
                <div id="btn-wrap">
                	<a href = "/myPage/commentsCoordi.do"><div class="btn-style-line btn" id="coordiBtn">코디</div></a>
                	<a href = "/myPage/commentsItTem.do"><div class="btn-style-mint btn" id="ittemBtn">잇템</div></a>
                </div>
                <div class="space"></div>
                <div class="line"></div>
                 
                 
                 
                 
                 
                <c:forEach items="${requestScope.itTemList }" var="itTemList" varStatus="i">
                
	                <div class="contents-area">
	                    <div class="contents-wrapping">
	                    	<div class="contents-outLine">
	                        	<a>
	                            	<div class="contents"><img src="${itTemList.postFilepath }"></div>
	                        	</a>
	                    	</div>
	                    	<div class="comment-wrapping">
	                        	<div class="comment-date textStyle">${itTemList.cmtTime }</div>
	                        	<div class="comment textStyle">${itTemList.cmtContent } </div>
	                        	<div class="comment-title-wrapping">
	                        		<div class="comment-title textStyle">${itTemList.postContent }</div><div class="comments-num textStyle">[${cmtList.cmtNum}]</div>
	                        	</div>
	                        </div>
	                        <div class="btn-style-mint deleteBtn"><a>삭제</a></div>
						</div>
	                </div>
	                <div class="line"></div>
                </c:forEach>
                
                <!-- pageNavi -->
					<div id="page_wrap">
						<ul class="page_ul">
							${requestScope.itTempageNavi }
		 				</ul>
				    </div>
                
                
                
                
                <div class="space"></div>

            </div>

        </div>


    </div>

    <jsp:include page="/WEB-INF/views/common/footer.jsp" />

    <jsp:include page="/WEB-INF/views/myPage/include/followerModal.jsp" />
    <jsp:include page="/WEB-INF/views/myPage/include/followingModal.jsp" />


</body>

</html>
