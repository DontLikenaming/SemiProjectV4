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
}
