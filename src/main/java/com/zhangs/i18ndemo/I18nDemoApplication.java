package com.zhangs.i18ndemo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@SpringBootApplication
@Controller
public class I18nDemoApplication {

    public static void main(String[] args) {
        SpringApplication.run(I18nDemoApplication.class, args);
    }

    @RequestMapping(value = {"/", "index"})
    public String index() {
        return "index";
    }
}
