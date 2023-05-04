package dontlikenaming.spring4mvc.semiprojectv4.DAO;

import dontlikenaming.spring4mvc.semiprojectv4.model.Board;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("bdao")
public class BoardDAOImpl implements BoardDAO{
    @Autowired SqlSession sqlSession;

    @Override
    public List<Board> selectBoard() {
        return sqlSession.selectList("board.selectBoard");
    }

    @Override
    public int insertBoard(Board b) {
        return sqlSession.insert("board.insertBoard", b);
    }
}