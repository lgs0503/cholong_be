package com.cholong.cholong_be;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

@SpringBootApplication
@EnableAspectJAutoProxy
public class CholongBeApplication {

    public static void main(String[] args) {
        SpringApplication.run(CholongBeApplication.class, args);
    }

}
