package dontlikenaming.spring4mvc.semiprojectv4.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/join")
public class JoinController {

    @GetMapping(value = "/agree")
    public String index(){
        return "join/agree.tiles";
    }

    @GetMapping(value = "/checkme")
    public String intro(){
        return "join/checkme.tiles";
    }

    @GetMapping(value = "/joinme")
    public String admin(){
        return "join/joinme.tiles";
    }

    @GetMapping(value = "/joinok")
    public String joinok(){
        return "join/joinok.tiles";
    }
}
