package dontlikenaming.spring4mvc.semiprojectv4.service;

import dontlikenaming.spring4mvc.semiprojectv4.model.Board;

import java.util.List;

public interface BoardService {
    List<Board> readBoard(int cpage);
    boolean boardWrite(Board b);
}
