package dontlikenaming.spring4mvc.semiprojectv4.controller;

import dontlikenaming.spring4mvc.semiprojectv4.model.Member;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/join", method={RequestMethod.POST, RequestMethod.POST})
public class JoinController {

    @GetMapping(value = "/agree")
    public String agree(){
        return "join/agree.tiles";
    }

    @GetMapping(value = "/checkme")
    public String checkme(){
        return "join/checkme.tiles";
    }

    @PostMapping(value = "/joinme")
    public ModelAndView joinme(Member mb){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("join/joinme.tiles");
        mv.addObject("mb", mb);
        return mv;
    }

    @GetMapping(value = "/joinok")
    public String joinok(){
        return "join/joinok.tiles";
    }
}
