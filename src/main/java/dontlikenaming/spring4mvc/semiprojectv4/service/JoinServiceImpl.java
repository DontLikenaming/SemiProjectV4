package dontlikenaming.spring4mvc.semiprojectv4.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import dontlikenaming.spring4mvc.semiprojectv4.DAO.JoinDAO;
import dontlikenaming.spring4mvc.semiprojectv4.model.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("jnsrv")
public class JoinServiceImpl implements JoinService{
    @Autowired private JoinDAO jndao;

    // 우편번호 검색
    // 조회결과 출력방법 1 : csv (쉼표로 구분)
    // 서울, 강남구, 논현동, 123번지

    // 조회결과 출력방법 2 : xml
    // <zip><sido>서울</sido> <gugun>강남구</gugun>
    //      <dong>논현동</dong> <bunji>123번지</bunji></zip>

    // 조회결과 출력방법 3 : json (추천)
    // {'sido':'서울', 'gugun':'강남구',
    //  'dong':'논현동', 'bunji':'123번지'}

    // StringBuilder sb = new StringBuilder();
    // sb.append("{'sido':").append("'서울',")
    // .append("'gugun':").append("'강남구',")
    // .append("'dong':").append("'논현동',")
    // .append("'bunji':").append("'123번지',");
    // .append("}");

    // 코드로 json 형태로 결과물을 만들려면 상당히 복잡함
    // ObjectMapper 라이브러리를 이용하면
    // 손쉽게 JSON 유형의 데이터를 생성할 수 있음

    @Override
    public String findZipcode(String dong) {
        ObjectMapper mapper = new ObjectMapper();
        String json = "";
        dong = "%" + dong + "%";
        try{
        json = mapper.writeValueAsString(jndao.selectZipcode(dong));
        } catch (JsonProcessingException ex){
            ex.printStackTrace();
        }
        return json;
    }

    @Override
    public boolean newMember(Member m) {
        boolean result = jndao.insertMember(m) > 0;

        return result;
    }

    @Override
    public int checkUserid(String uid) {
        return jndao.selectOneUserid(uid);
    }

    @Override
    public boolean loginMember(Member m) {
        return false;
    }
}
