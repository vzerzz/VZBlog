package com.vzerzz.service;

import com.vzerzz.domain.ResponseResult;
import com.vzerzz.domain.User;

public interface BlogLoginService {

    //登录
    ResponseResult login(User user);

    //退出登录
    ResponseResult logout();
}