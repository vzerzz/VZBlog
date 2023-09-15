package com.vzerzz.config;

import org.springframework.context.annotation.Configuration;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * @author 35238
 * @date 2023/8/1 0001 21:14
 */
@Configuration //标识为配置类
@EnableSwagger2 //开启swagger，即可通过swagger为vzerzz-blog工程生成接口文档
public class SwaggerConfig {

}