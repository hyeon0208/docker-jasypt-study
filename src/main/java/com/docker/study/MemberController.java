package com.docker.study;

import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@RequiredArgsConstructor
public class MemberController {

    private final MemberService memberService;

    @GetMapping("/")
    public String findAll(Model model) {

        for (int i = 0; i < 10; i++) {
            String name = "회원" + (i + 1);
            int age = 10 + i + 1;
            memberService.save(new MemberSaveRequest(name, age));
        }
        List<Member> members = memberService.findAll();
        model.addAttribute("members", members);

        return "index";
    }
}
