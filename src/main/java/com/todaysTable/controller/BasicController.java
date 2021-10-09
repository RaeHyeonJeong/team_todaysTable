package com.todaysTable.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BasicController {
   
   @RequestMapping(value="storeDetail.do")
   public ModelAndView basicstoreDetail() {
      ModelAndView modelAndView=new ModelAndView();
      modelAndView.addObject("Message", "HelloSpringMVC1");
      modelAndView.setViewName("WEB-INF/views/storeDetail");
      
      
      return modelAndView;
   }
   
   @RequestMapping(value="bookStore.do")
   public ModelAndView basicbookStore() {
      ModelAndView modelAndView=new ModelAndView();
      modelAndView.addObject("Message", "HelloSpringMVC2");
      modelAndView.setViewName("WEB-INF/views/bookStore");
      
      
      return modelAndView;
   }
   @RequestMapping(value="review.do")
   public ModelAndView basicreview() {
      ModelAndView modelAndView=new ModelAndView();
      modelAndView.addObject("Message", "HelloSpringMVC3");
      modelAndView.setViewName("WEB-INF/views/review");
      
      
      return modelAndView;
   }
   
   @RequestMapping(value="moveStoreDetail.do")
   public ModelAndView moveStoreDetail() {
      ModelAndView modelAndView=new ModelAndView();
      modelAndView.addObject("Message", "HelloSpringMVC3");
      modelAndView.setViewName("WEB-INF/views/bookStore");
      
      
      return modelAndView;
   }
   
   
}
