package dontlikenaming.spring4mvc.semiprojectv4.DAO;

import dontlikenaming.spring4mvc.semiprojectv4.model.Board;

import java.util.List;
import java.util.Map;

public interface BoardDAO {
    List<Board> selectBoard(int stdno);
    int selectBoard();
    int countBoard();
    int insertBoard(Board bd);
    List<Board> selectBoard(Map<String, Object> params);
    int countBoard(Map<String, Object> params);

    Board selectOneBoard(Integer bno);
}
