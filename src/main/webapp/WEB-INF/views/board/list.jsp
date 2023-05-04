<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="mt-4">
    <i class="fa-solid fa-pen-to-square fa-2xl"> 게시판</i>
    <hr>
</div>
<div class="row mt-5 mb-3">
    <div class="row offset-2 col-6">
        <div class="col-3">
            <select class="form-select" id="findtype">
                <option value="subject">제목</option>
                <option value="contents">내용</option>
                <option value="sbjcont">제목+내용</option>
                <option value="userid">작성자</option>
            </select>
        </div>
        <div class="col-6">
            <input type="text" class="form-control" id="findkey">
        </div>
        <div class="col-3">
            <button type="button" class="btn btn-light" id="findbtn"><i class="fa-solid fa-magnifying-glass"> 검색하기</i></button>
        </div>
    </div>
    <div class="col-2 text-end">
        <button type="button" class="btn btn-light"><i class="fa-solid fa-file-pen"> 새 글 쓰기</i></button>
    </div>
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
                <tr>
                    <td>1</td>
                    <td>대충 제목</td>
                    <td>대충 작성자</td>
                    <td>2023-05-04</td>
                    <td>1</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>대충 제목</td>
                    <td>대충 작성자</td>
                    <td>2023-05-04</td>
                    <td>1</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>대충 제목</td>
                    <td>대충 작성자</td>
                    <td>2023-05-04</td>
                    <td>1</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>대충 제목</td>
                    <td>대충 작성자</td>
                    <td>2023-05-04</td>
                    <td>1</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>대충 제목</td>
                    <td>대충 작성자</td>
                    <td>2023-05-04</td>
                    <td>1</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>대충 제목</td>
                    <td>대충 작성자</td>
                    <td>2023-05-04</td>
                    <td>1</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>대충 제목</td>
                    <td>대충 작성자</td>
                    <td>2023-05-04</td>
                    <td>1</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>대충 제목</td>
                    <td>대충 작성자</td>
                    <td>2023-05-04</td>
                    <td>1</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>적당한 제목</td>
                    <td>그냥 작성자</td>
                    <td>2023-05-04</td>
                    <td>1</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>대충 제목</td>
                    <td>대충 작성자</td>
                    <td>2023-05-04</td>
                    <td>1</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>대충 제목</td>
                    <td>대충 작성자</td>
                    <td>2023-05-04</td>
                    <td>1</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>대충 제목</td>
                    <td>대충 작성자</td>
                    <td>2023-05-04</td>
                    <td>1</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>대충 제목</td>
                    <td>대충 작성자</td>
                    <td>2023-05-04</td>
                    <td>1</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>대충 제목</td>
                    <td>대충 작성자</td>
                    <td>2023-05-04</td>
                    <td>1</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>대충 제목</td>
                    <td>대충 작성자</td>
                    <td>2023-05-04</td>
                    <td>1</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>대충 제목</td>
                    <td>대충 작성자</td>
                    <td>2023-05-04</td>
                    <td>1</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>대충 제목</td>
                    <td>대충 작성자</td>
                    <td>2023-05-04</td>
                    <td>1</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>대충 제목</td>
                    <td>대충 작성자</td>
                    <td>2023-05-04</td>
                    <td>1</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>대충 제목</td>
                    <td>대충 작성자</td>
                    <td>2023-05-04</td>
                    <td>1</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>대충 제목</td>
                    <td>대충 작성자</td>
                    <td>2023-05-04</td>
                    <td>1</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>대충 제목</td>
                    <td>대충 작성자</td>
                    <td>2023-05-04</td>
                    <td>1</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>대충 제목</td>
                    <td>대충 작성자</td>
                    <td>2023-05-04</td>
                    <td>1</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>대충 제목</td>
                    <td>대충 작성자</td>
                    <td>2023-05-04</td>
                    <td>1</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>대충 제목</td>
                    <td>대충 작성자</td>
                    <td>2023-05-04</td>
                    <td>1</td>
                    <td>1</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
<div class="row">
    <div class="offset-2 col-8">
        <nav>
            <ul class="pagination justify-content-center">
                <li class="page-item disabled"><a class="page-link" href="#">이전</a></li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item"><a class="page-link" href="#">4</a></li>
                <li class="page-item"><a class="page-link" href="#">5</a></li>
                <li class="page-item"><a class="page-link" href="#">6</a></li>
                <li class="page-item"><a class="page-link" href="#">7</a></li>
                <li class="page-item"><a class="page-link" href="#">8</a></li>
                <li class="page-item"><a class="page-link" href="#">9</a></li>
                <li class="page-item"><a class="page-link" href="#">10</a></li>
                <li class="page-item"><a class="page-link" href="#">다음</a></li>
            </ul>
        </nav>
    </div>
</div>



<%--<script src="/assets/js/board.js"></script>--%>
