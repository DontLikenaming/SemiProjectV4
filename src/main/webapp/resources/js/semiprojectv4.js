// header 로고 클릭 이벤트
let logo = document.querySelector("#logo");
logo.addEventListener("click", function (){
    location.href="/";
})

// ------------------------------------------------------------------- agree

// 이용약관 체크박스
let agree1 = document.querySelector("#agree1");

// 개인정보 이용 체크박스
let agree2 = document.querySelector("#agree2");

// 동의 버튼 이벤트
let agreeok = document.querySelector("#agreeok");
agreeok?.addEventListener("click", () => {
    if(!agree1.checked) alert("이용약관 동의에 체크해주세요!")
    else if(!agree2.checked) alert("개인정보 이용 동의에 체크해주세요!")
    else location.href="/join/checkme";
})

// 미동의 버튼 이벤트
let noagree = document.querySelector("#noagree");
noagree?.addEventListener("click", () => {
    location.href="/";
})

// ------------------------------------------------------------------- checkme
const name2 = document.querySelector("#name2");
const pnum1 = document.querySelector("#pnum1");
const pnum2 = document.querySelector("#pnum2");
const pnum3 = document.querySelector("#pnum3");
const checkpnum = document.querySelector("#checkpnum");
const checkfrm2 = document.querySelector("#checkfrm2");

let checkbtn2 = document.querySelector("#checkbtn2");
checkbtn2?.addEventListener("click", () => {
    if(name2.value===''
        || !isNaN(Number.parseInt(name2.value))) alert("이름을 입력해주세요!")
    else if((pnum1.value==="국번")
        || (pnum2.value==null)
        || (pnum3.value==null)) alert("전화번호를 입력해주세요!")
    else if(isNaN(Number.parseInt(pnum1.value))
        || isNaN(pnum2.value)
        || isNaN(pnum3.value)) alert("올바른 번호를 입력해주세요!")
    else if(!checkpnum.checked) alert("개인정보 처리 동의에 체크해주세요!")
    else {
        checkfrm2.method = 'post';
        location.href="/join/joinme";
        checkfrm2.submit();
    }
})

let cancelbtn2 = document.querySelector("#cancelbtn2");
cancelbtn2?.addEventListener("click", () => {
    location.href="/";
})


// ------------------------------------------------------------------- joinme
// ------------------------------------------------------------------- joinok