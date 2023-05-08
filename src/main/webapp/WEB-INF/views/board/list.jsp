<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
    // 게시판 리스트 처리 - 페이징
    // 1. 전체 게시물 수 처리 (bdcnt : 526)
    // 2. 페이지당 보여줄 게시물 수 지정 (=perPage : 10)
    // 3. 총 페이지 수 계산 (=> 52 + 1)
    // 4. 현재 페이지 번호 (cp, )
    // ex) list.do?cp=1 : 526 ~ 517
    // ex) list.do?cp=2 : 516 ~ 507
    // ex) list.do?cp=3 : 506 ~ 497
    // ...
    // ex) list.do?cp=n : x ~ x - 9
    //
    // x를 구하는 식 : (x - 1) * 10
    // ㄴ 1페이지는 0부터 9까지 가져옴
    //    2페이지는 10부터 19까지 가져옴
    //    3페이지는 20부터 29까지 가져옴
    //    ...

    // 게시판 리스트 처리 - 네비게이션
    // 현재 페이지에 따라서 보여줄 페이지 블럭을 결정
    // ex) cp = 1 : 1 2 3 4 5 6 7 8 9 10 다음
    // ex) cp = 3 : 1 2 3 4 5 6 7 8 9 10 다음
    // ex) cp = 9 : 1 2 3 4 5 6 7 8 9 10 다음
    // ex) cp = 11 : 이전 11 12 13 14 15 16 17 18 19 20 다음
    // ex) cp = 15 : 이전 11 12 13 14 15 16 17 18 19 20 다음
    // ex) cp = 23 : 이전 21 22 23 24 25 26 27 28 29 30 다음
    // ex) cp = 52: 이전 51 52 53 54 55
    // startPage = ((cp - 1) / 10) * 10 + 1
    // endPage = startPage + 10 - 1
--%>

<c:set var="pglink" value="/board/list?page=" />

<c:if test="${not empty param.fkey}">
    <c:set var="pglink" value="/board/find?ftype=${param.ftype}&fkey=${param.fkey}&page=" />
</c:if>

<div class="mt-4">
    <i class="fa-solid fa-pen-to-square fa-2xl"> 게시판</i>
    <hr>
</div>
<div class="row mt-5 mb-3">
    <div class="row offset-2 col-6">
        <c:if test="${not empty sessionScope.UID}">
        <div class="col-3">
            <select class="form-select" id="findtype">
                <option value="title">제목</option>
                <option value="content">내용</option>
                <option value="titcont">제목+내용</option>
                <option value="userid">작성자</option>
            </select>
        </div>
        <div class="col-6">
            <input type="text" class="form-control" id="findkey" value="${param.fkey}">
        </div>
        <div class="col-3">
            <button type="button" class="btn btn-light" id="findbtn"><i class="fa-solid fa-magnifying-glass"> 검색하기</i></button>
        </div>
    </div>
    <div class="col-2 text-end">
        <button type="button" class="btn btn-light" id="newbtn"><i class="fa-solid fa-file-pen"> 새 글 쓰기</i></button>
    </div>
    </c:if>
    <c:if test="${empty sessionScope.UID}">
        &nbsp;
    </c:if>
</div>
<div class="row">
    <div class="offset-2 col-8">
        <table class="table table-striped tbborder">
            <thead class="thbg">
                <tr>
                    <th style="width: 7%">번호</th>
                    <th>제목</th>
                    <th style="width: 13%">작성자</th>
                    <th style="width: 13%">작성일</th>
                    <th style="width: 7%">추천</th>
                    <th style="width: 7%">조회</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th>공지</th>
                    <th><span class="badge text-bg-danger">HOT</span> 석가탄신일·성탄절 대체공휴일 확정..</th>
                    <th>운영자</th>
                    <th>2023-05-04</th>
                    <th>567</th>
                    <th>1345</th>
                </tr>
                <c:forEach var="bd" items="${bdlist}">
                    <tr>
                        <td>${bd.bno}</td>
                        <td>${bd.title}</td>
                        <td>${bd.userid}</td>
                        <td>${fn:substring(bd.regdate, 0, 10)}</td>
                        <td>${bd.thumbs}</td>
                        <td>${bd.views}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<div class="row">
    <div class="offset-2 col-8">
        <nav>
            <ul class="pagination justify-content-center">
                <c:if test="${page/10 gt 1}">
                    <li class="page-item"><a class="page-link" href="${pglink}1">처음</a></li>
                    <li class="page-item"><a class="page-link" href="${pglink}${stpg-10}">이전</a></li>
                </c:if>
                <c:if test="${page/10 le 1}">
                    <li class="page-item disabled"><a class="page-link">이전</a></li>
                </c:if>
                <c:forEach var="i" begin="${stpg}" end="${stpg+9}">
                    <c:if test="${i le cntpg}">
                        <c:if test="${i ne page}">
                            <li class="page-item"><a class="page-link" href="${pglink}${i}">${i}</a></li>
                        </c:if>
                        <c:if test="${i eq page}">
                            <li class="page-item disabled"><a class="page-link" href="${pglink}${i}">${i}</a></li>
                        </c:if>
                    </c:if>
                </c:forEach>
                <c:if test="${(stpg-(stpg%10)) lt (cntpg-(cntpg%10))}">
                    <c:if test="${page%10 eq 0}">
                        <li class="page-item"><a class="page-link" href="${pglink}${page+1}">다음</a></li>
                    </c:if>
                    <c:if test="${page%10 ne 0}">
                        <li class="page-item"><a class="page-link" href="${pglink}${stpg+10}">다음</a></li>
                    </c:if>
                    <li class="page-item"><a class="page-link" href="${pglink}${cntpg}">끝</a></li>
                </c:if>
                <c:if test="${(stpg-(stpg%10)) ge (cntpg-(cntpg%10))}">
                    <li class="page-item disabled"><a class="page-link">다음</a></li>
                </c:if>
            </ul>
        </nav>
    </div>
</div>



<script src="/assets/js/board.js"></script>
