<%@ page pageEncoding="UTF-8" %>

<div class="mt-4">
    <i class="fa-solid fa-book fa-2xl"> 게시글 보기</i>
    <hr>
</div>
<div class="row mt-5 mb-3">
    <div class="row offset-2 col-4">

        <button type="button" class="btn btn-light col-4" id="prebtn" name="prebtn">
            <i class="fa fa-chevron-left"> 이전 글</i>
        </button>
        &nbsp;
        <button type="button" class="btn btn-light col-4" id="nextbtn" name="nextbtn">
            <i class="fa fa-chevron-right"> 다음 글</i>
        </button>

    </div>
    <div class="col-4 text-end">
        <button type="button" class="btn btn-success" id="newbtn" name="newbtn">
            <i class="fa fa-plus-circle"> 새 글 쓰기</i>
        </button>
    </div>
    <div class="row offset-2 col-8 mt-3">

            <table>
                <tr><th class="vtit" colspan="2">제목</th></tr>
                <tr class="vinfo">
                    <td class="text-start">작성자</td>
                    <td class="text-end">작성 시각 / 추천수 / 조회수</td>
                </tr>
                <tr>
                    <td class="vcont" colspan="2">
                        <div>
                            본문
                        </div>
                    </td>
                </tr>
            </table>

    </div>

    <div class="row offset-2 mt-5">
        <div class="row col-4">

            <button type="button" class="btn btn-warning col-4"
                    id="updbtn" name="updbtn">
                <i class="fa fa-pencil">수정하기</i>
            </button>
            &nbsp;
            <button type="button" class="btn btn-danger col-4"
                    id="rmvbtn" name="rmvbtn">
                <i class="fa fa-trash-o">삭제하기</i>
            </button>
        </div>

        <div class="col-4 text-end">
            <button type="button" class="btn btn-light" id="listbtn" name="listbtn">
                <i class="fa fa-list"> 목록으로</i>
            </button>
        </div>
    </div>

</div>

<script src="/assets/js/board.js"></script>
