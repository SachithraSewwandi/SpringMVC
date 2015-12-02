package com.mkyong.common.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;


/**
 * Created by sachithra on 21/11/15.
 */

@RestController
public class CustomerController {

    @Autowired
    private CustomerRepo customerRepo;

   @RequestMapping(value = "/",method = RequestMethod.GET)
    public ModelAndView showview(){

       return new ModelAndView("static/index.html","employee", new Customer());
    }

    @RequestMapping(value = "/",method = RequestMethod.POST)
    public void addCustomer(@ModelAttribute("employee") Customer customer){
        customerRepo.save(customer);
    }

  /*  public ModelAndView addCustomer(@ModelAttribute("employee") Customer employee,
                              BindingResult result, ModelMap model){
        model.addAttribute("type",employee.getType());
        model.addAttribute("nameEnglish", employee.getUserName());
        model.addAttribute("nameSinhala", employee.getNameSinhala());
        model.addAttribute("nameTamil", employee.getNameTamil());
        model.addAttribute("NIC",employee.getNIC());
        model.addAttribute("active",employee.isActive());
        model.addAttribute("user",employee.getUser());
        model.addAttribute("password", employee.getPassword());
        model.addAttribute("confpassword", employee.getConfpassword());
        model.addAttribute("startDate", employee.getStartDate());
        model.addAttribute("regDate",employee.getRegDate());
        System.out.print(model);

        return new ModelAndView("WEB-INF/pages/success.jsp");
    }
*/


    @RequestMapping(value = "/getEmployees", method = RequestMethod.GET)
    public List<Customer>  getAllEmployee(){
        return customerRepo.findAll();
    }
  }
