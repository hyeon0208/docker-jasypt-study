package com.docker.study;

public record MemberSaveRequest(String name, int age) {

    public Member toMember() {
        return new Member(name, age);
    }
}
