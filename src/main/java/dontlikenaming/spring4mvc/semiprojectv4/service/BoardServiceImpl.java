package dontlikenaming.spring4mvc.semiprojectv4.service;

import dontlikenaming.spring4mvc.semiprojectv4.DAO.BoardDAO;
import dontlikenaming.spring4mvc.semiprojectv4.model.Board;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("bdsrv")
public class BoardServiceImpl implements BoardService{
    @Autowired private BoardDAO bdao;

    @Override
    public List<Board> readBoard(Integer cpage) {
        int stdno = (cpage-1)*10;
        return bdao.selectBoard(stdno);
    }

    @Override
    public int countBoard() {
        return bdao.countBoard();
    }

    @Override
    public List<Board> readBoard(Integer cpage, String ftype, String fkey) {
        int stdno = (cpage-1)*10;

        // 처리 시 사용할 데이터들을 해쉬맵에 담아서 보냄
        Map<String, Object> params = new HashMap<>();
        params.put("stdno", stdno);
        params.put("ftype", ftype);
        params.put("fkey", fkey);

        return bdao.selectBoard(params);
    }

    @Override
    public int countBoard(String ftype, String fkey) {
        Map<String, Object> params = new HashMap<>();
        params.put("ftype", ftype);
        params.put("fkey", fkey);

        return bdao.countBoard(params);
    }

    @Override
    public boolean newBoard(Board bd) {
        boolean result = false;
        if(bdao.insertBoard(bd)>0) { result = true; }

        return result;
    }

    @Override
    public Board readOneBoard(Integer bno) {
        return bdao.selectOneBoard(bno);
    }

    @Override
    public int countAllBoard() {
        return bdao.selectBoard();
    }
}
