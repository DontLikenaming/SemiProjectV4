package dontlikenaming.spring4mvc.semiprojectv4.service;

import dontlikenaming.spring4mvc.semiprojectv4.model.Board;

import java.util.List;

public interface BoardService {
    List<Board> readBoard(Integer cpage);
    int countBoard();

    List<Board> readBoard(Integer cpage, String ftype, String fkey);

    int countBoard(String ftype, String fkey);

    boolean newBoard(Board bd);

    Board readOneBoard(String bno);
}
