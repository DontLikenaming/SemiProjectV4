<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${empty sessionScope.UID}">
    <script>location.href="/";</script>
</c:if>

<div class="main">
    <script src="https://www.google.com/recaptcha/api.js"></script>
    <div class="mt-4">
        <i class="fa-solid fa-pen-to-square fa-2xl"> 새 글 쓰기</i>
        <hr>
    </div>
    <div class="row mt-5 mb-3">
        <div class="row offset-2 col-4">
            <h4><i class="fa fa-plus-circle"> 새 글 쓰기</i></h4>
        </div>
        <div class="col-4 text-end">
            <button type="button" class="btn btn-light"><i class="fa fa-list"> 목록으로</i></button>
        </div>
        <div class="row offset-2 col-8 mt-3">
            <form class="card card-body bg-light" name="bdfrm" id="bdfrm">
                <div class="row">
                    <label class="col-3 col-form-label text-danger text-end" for="title">제목</label>
                    <div class="col-7">
                        <input type="text" class="form-control border-danger"
                               id="title" name="title">
                    </div>
                </div>
                <div class="row mt-2">
                    <label class="col-3 col-form-label text-danger text-end" for="userid">작성자</label>
                    <div class="col-7">
                        <input type="text" class="form-control border-danger bg-light"
                               id="userid" name="userid" value="${sessionScope.UID}" readonly>
                    </div>
                </div>
                <div class="row mt-2">
                    <label class="col-3 col-form-label text-danger text-end" for="content">본문</label>
                    <div class="col-7">
                        <textarea class="form-control border-danger"
                                  id="content" name="content" rows="15"></textarea>
                    </div>
                </div>
                <div class="row mt-2">
                    <label class="col-3 col-form-label text-danger text-end" for="g-recaptcha">자동 가입 방지</label>
                    <div class="col-7">
                        <div class="g-recaptcha" data-sitekey="6LdD4OskAAAAAH6Uazf4s8YBShdvsgMUbU5KkmDK"></div>
                        <input type="hidden" name="grecaptcha" id="grecaptcha">
                    </div>
                </div>

                <div class="row mt-5 justify-content-center">
                    <hr class="w-75">
                    <div class="text-center">
                        <button type="button" class="btn btn-primary"
                                id="writebtn" name="writebtn">
                            <i class="fa fa-check">입력 완료</i>
                        </button>
                        <button type="button" class="btn btn-danger"
                                id="cancelbtn" name="cancelbtn">
                            <i class="fa fa-remove">취소하기</i>
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="/assets/js/board.js"></script>