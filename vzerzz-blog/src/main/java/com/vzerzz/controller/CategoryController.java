package com.vzerzz.controller;
import com.vzerzz.domain.ResponseResult;
import com.vzerzz.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/category")
public class CategoryController {
    @Autowired
    //CategoryService是我们在huanf-framework工程里面写的接口
    private CategoryService categoryService;
    @GetMapping("/getCategoryList")
    //ResponseResult是我们在huanf-framework工程里面写的实体类
    public ResponseResult getCategoryList(){
        return categoryService.getCategoryList();
    }
}