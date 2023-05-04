import dontlikenaming.spring4mvc.semiprojectv4.model.Board;
import dontlikenaming.spring4mvc.semiprojectv4.model.Member;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static junit.framework.Assert.assertEquals;
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
        b.setTitle("Test");
        b.setUserid("TestId");
        b.setContent("123");

        System.out.println(b.getTitle());
        System.out.println(b.getUserid());
        System.out.println(b.getContent());
        assertEquals(1, (int)sqlSession.insert("board.insertBoard", b));
    }
}
