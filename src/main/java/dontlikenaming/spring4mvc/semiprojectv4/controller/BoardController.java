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
    @Autowired private BoardService bdsrv;

    @GetMapping(value = "/list")
    public ModelAndView list(Integer page){
        int cntpg = bdsrv.countBoard();

        if((page==null)||(page<=0)){page = 1;}
        else if(page>cntpg){page = cntpg;}

        ModelAndView mv = new ModelAndView();
        mv.setViewName("board/list.tiles");
        mv.addObject("bdlist", bdsrv.readBoard(page));
        mv.addObject("page", page);
        mv.addObject("stpg", (page-1)/10*10+1);
        mv.addObject("cntpg", cntpg);

        return mv;
    }
    
    @GetMapping(value = "/find")    // 검색 처리
    public ModelAndView find(Integer page, String ftype, String fkey){
        ModelAndView mv = new ModelAndView();
        int cntpg = bdsrv.countBoard(ftype, fkey);

        if((page==null)||(page<=0)){page = 1;}
        else if(page>cntpg){page = cntpg;}

        mv.addObject("bdlist", bdsrv.readBoard(page, ftype, fkey));
        mv.addObject("page", page);
        mv.addObject("stpg", (page-1)/10*10+1);
        mv.addObject("cntpg", cntpg);
        mv.setViewName("board/list.tiles");
        return mv;
    }

    @PostMapping(value = "/writeok")
    public String writeok(Board b){
        String view = "error.tiles";

        if(bdsrv.boardWrite(b)) view = "redirect:/board/list";

        return view;
    }
}
