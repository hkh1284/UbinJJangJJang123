package com.ssafy.khyb.model.dao;

import com.ssafy.khyb.model.dto.UserDto;

public interface UserDao {
    UserDto getUserById(int userId);
    UserDto getUserByLoginIdAndPassword(String loginId, String password);
    UserDto createUser(UserDto dto); // id를 자동으로 부여해서 반환해주기
    boolean deleteUserById(int userId); // 삭제 성공시 true, 실패시 false
    UserDto updateUser(UserDto dto); // userId가 비어 있으면 안되고, 갱신된 사용자 정보를 반환
}
