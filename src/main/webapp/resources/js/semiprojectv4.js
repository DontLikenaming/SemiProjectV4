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
const userid = document.querySelector("#userid");
const passwd = document.querySelector("#passwd");
const uidmsg = document.querySelector("#uidmsg");
const pwdmsg = document.querySelector("#pwdmsg");
const zipmdbtn = document.querySelector("#zipmdbtn");
const zipmodal = document.querySelector("#zipmodal");
const dong = document.querySelector("#dong");
const zipbtn = document.querySelector("#findzipbtn");
const addrlist = document.querySelector("#addrlist");
const addrclose = document.querySelector("#addrclose");
const email3 = document.querySelector("#email3");
const joinbtn = document.querySelector("#joinbtn");
const modal = new bootstrap.Modal(zipmodal, {});

userid?.addEventListener("blur",()=>{
    let checkid = "/[0-9a-z]/"

    if(userid.value==='') {
        alert("유저 아이디를 입력하세요!");
        return;
    }
    const url = '/join/checkuid?uid=' + userid.value;
    fetch(url).then(response => response.text())
        .then(text => alert(text));
})

zipmdbtn?.addEventListener("click",()=>{
    dong.value = '';
    while (addrlist.lastChild){
        addrlist.removeChild(addrlist.lastChild);
    }
    modal.show();
})

dong?.addEventListener("keydown", (e)=>{
    if(e.keyCode === 13) {
        e.preventDefault();
        zipbtn.click();
    }
})

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
        let ri = (data['ri']!==null) ? data['ri'] : '';
        let bunji = (data['bunji']!==null) ? data['bunji'] : '';

        addrs += `<option>${data['zipcode']} ${data['sido']} ${data['gugun']}
                 ${data['dong']} ${ri} ${bunji}</option>`;


    })

    while (addrlist.lastChild){
        addrlist.removeChild(addrlist.lastChild);
    }

    addrlist.innerHTML = addrs;

};
zipbtn?.addEventListener("click", () =>{
    if(dong.value==='') {
        alert("검색할 동 이름을 입력하세요!");
        return;
    }

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

    modal.hide();
});

email3?.addEventListener("click",() => {
    if(joinfrm.email3.value=="직접 입력하기"){
        joinfrm.email2.value = '';
        joinfrm.email2.readOnly = false;
    } else {
        joinfrm.email2.readOnly = true;
        if(joinfrm.email3.value!=="선택하세요"){
            joinfrm.email2.value=joinfrm.email3.value;
        }
    }
});

joinbtn?.addEventListener("click", () =>{
if(joinfrm.userid.value == '') alert('아이디를 입력해주세요!');
else if(joinfrm.passwd.value == '') alert('비밀번호를 입력해주세요!');
else if(joinfrm.reppsswd.value == '') alert('비밀번호 확인란을 입력해주세요!');
else if(joinfrm.passwd.value !== reppsswd.value) alert('비밀번호가 일치하지 않습니다!');
else if(joinfrm.zip1.value == '' || zip2.value == '') alert('우편번호를 확인해주세요!');
else if(joinfrm.addr1.value == '' || addr2.value == '') alert('주소를 확인해주세요!');
else if(joinfrm.email1.value == '' || email2.value == '') alert('이메일을 확인해주세요!');
else if(grecaptcha.getResponse() == '') alert('자동가입방지를 확인해주세요!');
else {
    joinfrm.method='post';
    joinfrm.action='/join/joinok';
    joinfrm.submit();
}
})
// ------------------------------------------------------------------- joinok