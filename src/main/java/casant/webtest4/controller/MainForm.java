/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package casant.webtest4.controller;

import casant.webtest4.model.User;
import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author emp.emmanuel.castro
 */
@Controller
public class MainForm {
    
    @RequestMapping(value = "mainForm.htm")
    public ModelAndView init(Map model) {
//        LoginFormService loginFormService = new LoginFormService();
//        model.put("loginFormService", loginFormService);
//        return "loginForm";
	return new ModelAndView("mainForm");
    }
}
