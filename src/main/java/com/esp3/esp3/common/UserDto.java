package com.esp3.esp3.common;

public class UserDto {
    Long id;
    String userName;
    String email;

    public UserDto(Long id, String userName, String email) {
        this.id = id;
        this.userName = userName;
        this.email = email;
    }

    public Long getId() {
        return id;
    }

    public String getUserName() {
        return userName;
    }

    public String getEmail() {
        return email;
    }
}