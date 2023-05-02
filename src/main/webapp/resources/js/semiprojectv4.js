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
const checkpnum = document.querySelector("#checkpnum");
const checkfrm2 = document.forms.checkfrm2;

let checkbtn2 = document.querySelector("#checkbtn2");
checkbtn2?.addEventListener("click", () => {
    if(checkfrm2.name2.value===''
        || !isNaN(Number.parseInt(name2.value))) alert("이름을 입력해주세요!")
    else if((checkfrm2.pnum1.value==="국번")
        || (checkfrm2.pnum2.value==null)
        || (checkfrm2.pnum3.value==null)) alert("전화번호를 입력해주세요!")
    else if(isNaN(Number.parseInt(pnum1.value))
        || isNaN(checkfrm2.pnum2.value)
        || isNaN(checkfrm2.pnum3.value)) alert("올바른 번호를 입력해주세요!")
    else if(!checkpnum.checked) alert("개인정보 처리 동의에 체크해주세요!")
    else {
        checkfrm2.method = 'post';
        checkfrm2.action="/join/joinme";
        checkfrm2.submit();
    }
})


let cancelbtn2 = document.querySelector("#cancelbtn2");
cancelbtn2?.addEventListener("click", () => {
    location.href="/";
})


// ------------------------------------------------------------------- joinme
const joinfrm = document.forms.joinfrm;
const joinbtn = document.querySelector("#joinbtn");
const dong = document.querySelector("#dong");
const addrlist = document.querySelector("#addrlist");
const zipbtn = document.querySelector("#findzipbtn");
const addrclose = document.querySelector("#addrclose");


const showzipaddr = (jsons) => {

/*    for(idx in jsons){
        console.log(jsons[idx]);
    }

    for(i of Object.values(jsons)) {
        console.log(i);
    }
*/

    jsons = JSON.parse(jsons);
    let addrs = '';
    jsons.forEach(function (data, idx){
        let ri = data['ri'];
        let bunji = data['bunji'];

        if(ri==null) ri = ' ';
        if(bunji==null) bunji = ' ';

        addrs += `<option>${data['zipcode']} ${data['sido']} ${data['gugun']}
                 ${data['dong']}</option>`;


    })

    while (addrlist.lastChild){
        addrlist.removeChild(addrlist.lastChild);
    }

    addrlist.innerHTML = addrs;

};
zipbtn?.addEventListener("click", () =>{
    const url = '/join/zipcode?dong=' + dong.value;
    fetch(url).then(response => response.text())
        .then(text => showzipaddr(text));
})

addrclose?.addEventListener("click", () =>{
    let addr = addrlist.value;

    if(addr !== ''){
        let zipsplt = addr.split(' ')[0];
        let zipsplt2 = `${addr.split(' ')[1]} ${addr.split(' ')[2]} ${addr.split(' ')[3]}`;

        joinfrm.zip1.value = zipsplt.split('-')[0];
        joinfrm.zip2.value = zipsplt.split('-')[1];
        joinfrm.addr1.value = zipsplt2;
    } else {
        alert('주소를 입력하세요!');
    }
})

let changeEmail = () => {
    if(joinfrm.email3.value=="직접 입력하기"){
        joinfrm.email2.value = '';
        joinfrm.email2.removeAttribute("readonly");
    } else {
        joinfrm.email2.readOnly = true;
        if(joinfrm.email3.value!=="선택하세요")joinfrm.email2.value=joinfrm.email3.value;
    }
}

joinbtn?.addEventListener("click", () =>{
if(joinfrm.userid.value == '') alert('아이디를 입력해주세요!');
else if(joinfrm.passwd.value == '') alert('비밀번호를 입력해주세요!');
else if(joinfrm.reppsswd.value == '') alert('비밀번호 확인란을 입력해주세요!');
else if(joinfrm.passwd.value !== reppsswd.value) alert('비밀번호가 일치하지 않습니다!');
else if(joinfrm.zip1.value == '' || zip2.value == '') alert('우편번호를 확인해주세요!');
else if(joinfrm.addr1.value == '' || addr2.value == '') alert('주소를 확인해주세요!');
else if(joinfrm.email1.value == '' || email2.value == '') alert('이메일을 확인해주세요!');
else if(joinfrm.recaptcha.value == '') alert('자동가입방지를 확인해주세요!');
else {
    location.href="/join/joinok";
}
})
// ------------------------------------------------------------------- joinok