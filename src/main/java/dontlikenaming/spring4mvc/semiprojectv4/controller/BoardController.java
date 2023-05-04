package dontlikenaming.spring4mvc.semiprojectv4.controller;

import dontlikenaming.spring4mvc.semiprojectv4.model.Board;
import dontlikenaming.spring4mvc.semiprojectv4.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/board")
public class BoardController {
    @Autowired private BoardService bsrv;

    @GetMapping(value = "/list")
    public ModelAndView list(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("board/list.tiles");
        mv.addObject("bdlist", bsrv.readBoard());

        return mv;
    }

    @PostMapping(value = "/writeok")
    public String writeok(Board b){
        String view = "error.tiles";

        if(bsrv.boardWrite(b)) view = "redirect:/board/list";

        return view;
    }
}
