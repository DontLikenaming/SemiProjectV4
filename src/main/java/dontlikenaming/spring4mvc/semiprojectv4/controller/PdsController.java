package dontlikenaming.spring4mvc.semiprojectv4.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/pds")
public class PdsController {

    @GetMapping(value = "/list")
    public String list(){
        return "pds/list.tiles";
    }
}
