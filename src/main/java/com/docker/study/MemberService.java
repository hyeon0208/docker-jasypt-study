package com.docker.study;

import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class MemberService {

    private final MemberRepository memberRepository;

    public Member save(MemberSaveRequest memberSaveRequest) {
        return memberRepository.save(memberSaveRequest.toMember());
    }

    public List<Member> findAll() {
        return memberRepository.findAll();
    }
}
