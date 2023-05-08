// ------------------------------------------------------------------- list
let findtype = document.querySelector("#findtype");
let findkey = document.querySelector("#findkey");
let findbtn = document.querySelector("#findbtn");

findbtn?.addEventListener("click",()=>{
    if(findkey.value==''){alert("검색어를 입력하세요!"); return null;}

    let query = `/board/find?ftype=${findtype.value}&fkey=${findkey.value}&cpg=1`;

    location.href = query;
})