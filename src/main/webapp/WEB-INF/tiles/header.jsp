<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<header class="row">
    <div class="col">
        <h1 id="logo"><strong>Lorem Ipsum</strong></h1>
    </div>
    <div class="col text-end mt-2">
<%--        pageScope - 일회용 변수
        requsetScop - form, jsp에서만 변수
        sessionScope - 여러 페이지에서 사용 가능한 변수
        applicationScope - 여러 프로그램에서 사용 가능한 변수--%>
        <c:set var="path" value="${requestScope['javax.servlet.forward.servlet_path']}" />
        <c:if test="${!fn:startsWith(path, '/join')}">
            <c:if test="${empty sessionScope.UID}">
                <button type="button" class="btn btn-danger"
                        data-bs-target="#loginModalfrm" data-bs-toggle="modal">로그인</button>
                <button type="button" class="btn btn-primary">회원가입</button>
            </c:if>
            <c:if test="${!empty sessionScope.UID}">
                <button type="button" class="btn btn-dark" id="lgoutbtn">로그아웃</button>
                <button type="button" class="btn btn-success">회원정보</button>
            </c:if>
        </c:if>
    </div>
</header>
<nav class="navbar navbar-expand bg-light rounded-3 border border-dark">
    <ul class="navbar-nav nav-fill w-100">
        <li class="nav-item"><a href="/intro" class="nav-link border-end fs-5">프로젝트 소개</a></li>
        <li class="nav-item"><a href="/join/agree" class="nav-link border-end fs-5">회원가입</a></li>
        <li class="nav-item"><a href="/board/list" class="nav-link border-end fs-5">게시판</a></li>
        <li class="nav-item"><a href="/pds/list" class="nav-link border-end fs-5">자료실</a></li>
        <li class="nav-item"><a href="/gallery/list" class="nav-link border-end fs-5">갤러리</a></li>
        <li class="nav-item"><a href="/admin" class="nav-link fs-5">관리자</a></li>
    </ul>
</nav>