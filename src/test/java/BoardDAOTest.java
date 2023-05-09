import dontlikenaming.spring4mvc.semiprojectv4.model.Board;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.HashMap;
import java.util.Map;

import static junit.framework.Assert.assertEquals;
import static org.junit.Assert.assertNotEquals;
import static org.junit.Assert.assertNotNull;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring/root-context.xml"})
public class BoardDAOTest {
    @Autowired SqlSession sqlSession;

    @Test
    public void selectBoard() {
        assertNotNull(sqlSession.selectList("board.selectBoard"));
    }

    @Test
    public void writeBoard() {
        Board b = new Board();
        b.setTitle("Test1");
        b.setUserid("TestId");
        b.setContent("456");

        System.out.println(b.getTitle());
        System.out.println(b.getUserid());
        System.out.println(b.getContent());
        assertEquals(1, sqlSession.insert("board.insertBoard", b));
    }

    @Test
    public void countBoard() {
        assertNotEquals(0, (int)sqlSession.selectOne("board.countBoard"));
    }

    @Test
    public void selectFindBoard() {
        Map<String, Object> params = new HashMap<>();
        params.put("stdno", 0);
        params.put("ftype", "title");
        params.put("fkey", "Test");

        // assertNotNull(sqlSession.selectList("board.selectFindBoard", params));
        System.out.println(sqlSession.selectList("board.selectFindBoard", params));
    }

    @Test
    public void countFindBoard() {
        Map<String, Object> params = new HashMap<>();
        params.put("ftype", "title");
        params.put("fkey", "Test");

        // assertNotEquals(0, (int)sqlSession.selectOne("board.countFindBoard", params));
        System.out.println((int)sqlSession.selectOne("board.countFindBoard", params));
    }

    @Test
    public void selectOneBoard(){
        assertNotNull(sqlSession.selectOne("board.selectOneBoard", "1"));

        Board bd = new Board();
        bd = sqlSession.selectOne("board.selectOneBoard", "1812");
        System.out.println(bd.getTitle());

    }
}
