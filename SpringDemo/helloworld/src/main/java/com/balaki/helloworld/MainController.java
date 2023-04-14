package com.balaki.helloworld;

import java.util.Date;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/balaki")
public class MainController {

    @RequestMapping("")
    public String index(){
        Date d = new Date();
        return "Hello, World!!!!!!!!!!!!!" + d;
    }

    @RequestMapping("/cool")
    public String whatever(){
        return "He is cool";
    }
    
}
