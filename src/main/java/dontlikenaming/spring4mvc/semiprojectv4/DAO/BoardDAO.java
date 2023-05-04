package dontlikenaming.spring4mvc.semiprojectv4.DAO;

import dontlikenaming.spring4mvc.semiprojectv4.model.Board;

import java.util.List;

public interface BoardDAO {
    List<Board> selectBoard(int stdno);
    int countBoard();
    int insertBoard(Board b);
}
