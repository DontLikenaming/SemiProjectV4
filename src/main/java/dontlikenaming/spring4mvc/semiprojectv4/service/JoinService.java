package dontlikenaming.spring4mvc.semiprojectv4.service;

import dontlikenaming.spring4mvc.semiprojectv4.model.Member;

public interface JoinService {
    String findZipcode(String dong);
    boolean newMember(Member m);
    int checkUserid(String uid);
    boolean loginMember(Member m);
}
