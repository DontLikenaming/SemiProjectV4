package dontlikenaming.spring4mvc.semiprojectv4.controller;

import dontlikenaming.spring4mvc.semiprojectv4.model.Member;
import dontlikenaming.spring4mvc.semiprojectv4.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpSession;

@Controller
public class MemberController {
    @Autowired private MemberService msrv;


    // 로그인 처리
    // 입력한 아이디/비밀번호로 로그인 가능여부 확인
    // 로그인 성공시 로그인 여부를 시스템에 저장하기 위해
    // HttpSession 객체를 이용함
    // 즉, 서버가 생성한 정보를 일정기간 동안
    // WAS에 저장해두고 필요할 때마다 이것을 활용함으로써
    // 로그인한 사용자를 식별할 수 있음
    @PostMapping(value = "/login")
    public String Login(Member m, HttpSession sess){
        String returnPage = "redirect:/loginfail";

        if(msrv.checkLogin(m, sess)) {returnPage = "redirect:/";}

        return returnPage;
    }

    @GetMapping(value = "/loginfail")
    public String loginfail(){return "loginfail.tiles";}

    @GetMapping(value = "/logout")
    public String Logout(HttpSession sess){
        sess.invalidate();

        return "redirect:/";
    }
}
