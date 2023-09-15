package com.vzerzz.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 文章表
 * @TableName vz_article
 */
@TableName(value ="vz_article")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Article implements Serializable {
    /**
     * 
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 标题
     */
    @TableField(value = "title")
    private String title;

    /**
     * 文章内容
     */
    @TableField(value = "content")
    private String content;

    /**
     * 文章摘要
     */
    @TableField(value = "summary")
    private String summary;

    /**
     * 所属分类id
     */
    @TableField(value = "category_id")
    private Long categoryId;

    //增加一个字段，为categoryName，由categoryId来查询出
    //由于数据库没有category_name字段，所以要用注解指定一下字段
    @TableField(exist = false)//代表这个字段在数据库中不存在，避免MyBatisPlus在查询时报错
    private String categoryName;

    /**
     * 缩略图
     */
    @TableField(value = "thumbnail")
    private String thumbnail;

    /**
     * 是否置顶（0否，1是）
     */
    @TableField(value = "is_top")
    private String isTop;

    /**
     * 状态（0已发布，1草稿）
     */
    @TableField(value = "status")
    private String status;

    /**
     * 访问量
     */
    @TableField(value = "view_count")
    private Long viewCount;

    /**
     * 是否允许评论 1是，0否
     */
    @TableField(value = "is_comment")
    private String isComment;

    /**
     * 
     */
    @TableField(value = "create_by")
    private Long createBy;

    /**
     * 
     */
    @TableField(value = "create_time")
    private Date createTime;

    /**
     * 
     */
    @TableField(value = "update_by")
    private Long updateBy;

    /**
     * 
     */
    @TableField(value = "update_time")
    private Date updateTime;

    /**
     * 删除标志（0代表未删除，1代表已删除）
     */
    @TableField(value = "del_flag")
    private Integer delFlag;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

    //把redis的浏览量数据更新到mysql数据库
    public Article(Long id, long viewCount) {
        this.id = id;
        this.viewCount=viewCount;
    }
}