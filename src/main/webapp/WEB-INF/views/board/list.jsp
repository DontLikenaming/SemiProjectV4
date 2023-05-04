<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="mt-4">
    <i class="fa-solid fa-pen-to-square fa-2xl"> 게시판</i>
    <hr>
</div>
<div class="row">
    <div class="offset-2 col-8 text-end">
        <button type="button" class="btn btn-light"><i class="fa fa-plus-circle"> 새 글 쓰기</i></button>
    </div>
</div>
<div class="row">
    <div class="offset-2 col-8 text-end">

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



<script src="/assets/js/board.js"></script>