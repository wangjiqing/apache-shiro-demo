package com.sakura.apacheshirodemo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.sakura")
@MapperScan(basePackages = {"com.sakura.apacheshirodemo.mapper"})
public class ApacheShiroDemoApplication {

    public static void main(String[] args) {
        SpringApplication.run(ApacheShiroDemoApplication.class, args);
    }

}
