package com.hous.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HelloController {

//        @ResponseBody
        @RequestMapping("/hello")
        public String hello(){

            System.out.println("hello");
            return "a";
        }

}
