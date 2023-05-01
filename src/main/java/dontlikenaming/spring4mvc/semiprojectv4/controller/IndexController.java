package dontlikenaming.spring4mvc.semiprojectv4.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

    @GetMapping(value = "/")
    public String index(){
        return "index.tiles";
    }

    @GetMapping(value = "/intro")
    public String intro(){
        return "intro.tiles";
    }

    @GetMapping(value = "/admin")
    public String admin(){
        return "admin.tiles";
    }
}
