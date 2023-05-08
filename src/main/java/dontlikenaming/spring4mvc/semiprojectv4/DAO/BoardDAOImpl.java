package dontlikenaming.spring4mvc.semiprojectv4.DAO;

import dontlikenaming.spring4mvc.semiprojectv4.model.Board;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository("bdao")
public class BoardDAOImpl implements BoardDAO{
    @Autowired SqlSession sqlSession;

    @Override
    public List<Board> selectBoard(int stdno) {
        return sqlSession.selectList("board.selectBoard", stdno);
    }

    @Override
    public int countBoard() {
        return sqlSession.selectOne("board.countBoard");
    }

    @Override
    public List<Board> selectBoard(Map<String, Object> params) {
        return sqlSession.selectList("board.selectFindBoard", params);
    }

    @Override
    public int countBoard(Map<String, Object> params) {
        return sqlSession.selectOne("board.countFindBoard", params);
    }

    @Override
    public int insertBoard(Board bd) {
        return sqlSession.insert("board.insertBoard", bd);
    }
}
