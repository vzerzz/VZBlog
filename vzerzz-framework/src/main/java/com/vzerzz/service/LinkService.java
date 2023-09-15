package com.vzerzz.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.vzerzz.domain.Link;
import com.vzerzz.domain.ResponseResult;
import com.vzerzz.vo.PageVo;

/**
 * @author 35238
 * @date 2023/7/22 0022 14:43
 */
public interface LinkService extends IService<Link> {

    //查询友链
    ResponseResult getAllLink();

    //分页查询友链
    PageVo selectLinkPage(Link link, Integer pageNum, Integer pageSize);

}