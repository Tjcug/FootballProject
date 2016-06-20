package com.basic.springboot.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by dello on 2016/6/13.
 */
@Controller
public class WebController {

    private Logger logger= LoggerFactory.getLogger(WebController.class);

    @RequestMapping("/")
    public String index(){
        logger.info("============================index======================");
        return "index";
    }

    @RequestMapping("/test")
    public String test(){
        return "test";
    }

    @RequestMapping("/send_{var1}_{var2}")
    public String sendFunc(@PathVariable("var1") String var1, @PathVariable("var2") String var2){
        return var1+"/"+var2;
    }
}
