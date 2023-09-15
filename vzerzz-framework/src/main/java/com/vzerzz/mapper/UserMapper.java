package com.vzerzz.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.vzerzz.domain.User;
import org.springframework.stereotype.Service;


@Service
public interface UserMapper extends BaseMapper<User> {
}