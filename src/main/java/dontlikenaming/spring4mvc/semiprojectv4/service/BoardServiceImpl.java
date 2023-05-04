package dontlikenaming.spring4mvc.semiprojectv4.service;

import dontlikenaming.spring4mvc.semiprojectv4.DAO.BoardDAO;
import dontlikenaming.spring4mvc.semiprojectv4.model.Board;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("bsrv")
public class BoardServiceImpl implements BoardService{
    @Autowired private BoardDAO bdao;

    @Override
    public List<Board> readBoard() {
        return bdao.selectBoard();
    }

    @Override
    public boolean boardWrite(Board b) {
        boolean result = false;
        if(bdao.insertBoard(b)>0) result = true;
        return result;
    }
}
