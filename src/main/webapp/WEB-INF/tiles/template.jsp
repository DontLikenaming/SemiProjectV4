<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>semi project v3</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/bdcc6494b9.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="assets/css/semiprojectv4.css">
</head>
<body>
<div class="container">
    <tiles:insertAttribute name="header" />
    <tiles:insertAttribute name="main" />
    <tiles:insertAttribute name="footer" />
</div>

<%--로그인 폼 모달--%>
<div class="modal fade" id="loginModalfrm" role="dialog" data-bs-backdrop="static"
     data-bs-keyboard="false">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel"><h3>로그인</h3></h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form name="loginfrm">

                    <div class="row text-danger mb-2">
                        <div class="col-1"></div>
                        <label for="loginid" class="form-label col-3 text-end mt-1">아이디</label>
                        <div class="col-5">
                            <input type="text" class="form-control border-danger" id="loginid" placeholder="아이디">
                        </div>
                    </div>

                    <div class="row text-danger mb-2">
                        <div class="col-1"></div>
                        <label for="loginpwd" class="form-label col-3 text-end mt-1">비밀번호</label>
                        <div class="col-5">
                            <input type="password" class="form-control border-danger" id="loginpwd" placeholder="비밀번호">
                        </div>
                        <div class="col-3"></div>
                    </div>

                    <div class="row">

                        <div class="col-4"></div>
                        <div class="col-5">
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input">
                                <label class="form-check-label text-warning">로그인 상태 유지</label>
                            </div>
                        </div>
                    </div>

                </form>
            </div>
            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-danger">로그인</button>
                <button type="button" class="btn btn-warning">아이디/비밀번호 찾기</button>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script src="/assets/js/semiprojectv4.js"></script>
</body>
</html>
