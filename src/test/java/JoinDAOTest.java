import dontlikenaming.spring4mvc.semiprojectv4.model.Member;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static junit.framework.Assert.assertEquals;
import static junit.framework.Assert.assertNotNull;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring/root-context.xml"})
public class JoinDAOTest {
    @Autowired SqlSession sqlSession;

    @Test
    public void findZipcode() {
        String dong = "%가산동%";
        assertNotNull(sqlSession.selectList("join.findZipcode", dong));
        System.out.println(sqlSession.selectList("join.findZipcode", dong));
    }

    @Test
    public void checkUserid() {
        String uid = "qwerty";
        assertEquals(1, (int)sqlSession.selectOne("join.selectOneUid", uid));
    }

    @Test
    public void newMember() {
        Member m = new Member();
        m.setName("이름");
        m.setPnum1("010");
        m.setPnum2("123");
        m.setPnum3("4567");
        m.setUserid("qwerty");
        m.setPasswd("asdfzxcv");
        m.setZipcode("012-345");
        m.setAddr1("우리");
        m.setAddr2("집");
        m.setEmail("qazwsx@gmail.com");

        assertEquals(1, (int)sqlSession.insert("join.insertMember", m));
    }

    @Test
    public void loginMember() {
        Member m = new Member();
        // m.setUserid("qwerty");
        // m.setPasswd("asdfzxcv");
        //assertEquals(1, (int)sqlSession.selectOne("member.selectLogin", m));

        m.setUserid("1");
        m.setPasswd("2");
        assertEquals(0, (int)sqlSession.selectOne("member.selectLogin", m));
    }
}
