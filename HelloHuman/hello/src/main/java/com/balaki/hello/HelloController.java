package com.balaki.hello;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
    
    @RequestMapping("")
    public String hello(@RequestParam(value="name", required=false) String searchQuery) {
        if(searchQuery !=null){
            return "Hello " + searchQuery;
        }
        return "Hello Human";
    }

}
