package com.vzerzz.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.vzerzz.domain.Category;
import com.vzerzz.domain.ResponseResult;
import com.vzerzz.vo.CategoryVo;
import com.vzerzz.vo.PageVo;

import java.util.List;

/**
 * @author 35238
 * @date 2023/7/19 0019 22:41
 */
public interface CategoryService extends IService<Category> {
    //查询文章分类的接口
    ResponseResult getCategoryList();

    //写博客-查询文章分类的接口
    List<CategoryVo> listAllCategory();

    //分页查询分类列表
    PageVo selectCategoryPage(Category category, Integer pageNum, Integer pageSize);
}