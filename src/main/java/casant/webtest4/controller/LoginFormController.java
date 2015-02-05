/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package casant.webtest4.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ValidationUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import casant.webtest4.model.User;
import casant.webtest4.service.LoginService;

/**
 *
 * @author Emmanuel
 */
@Controller
public class LoginFormController {
    
    private User user;
    
    @Autowired
    private LoginService loginService;
    
    @RequestMapping(value="/loginForm", method = RequestMethod.GET)
    public String init(Model model) {

        user = new User();
        model.addAttribute("loginDetails", user);
	return "loginForm";
    }
    
    @RequestMapping(value="loginForm", method = RequestMethod.POST)
    public ModelAndView procesLogin(@ModelAttribute User user, BindingResult result, Map model,
                                    @RequestParam(value = "error", required = false) String error) {
        ValidationUtils.rejectIfEmptyOrWhitespace(result,"userName","userName", "El campo Usuario no puede estar vacio");
        ValidationUtils.rejectIfEmptyOrWhitespace(result,"password","password", "El campo password no debe estar vacio");
        if (result.hasErrors())
        {
            //returning the errors on same page if any errors..
            return new ModelAndView("loginForm", "loginDetails", user);
        } else {
            // If the user details is validated then redirecting the user to success page, 
            // else returning the error message on login page.
            User usuario = loginService.getUsuario(user.getUserName(), user.getPassword());
            if(usuario != null)
            {
//                request.getSession().setAttribute("user", loginModel);
                //Creating a redirection view to success page. This will redirect to UsersController
                RedirectView redirectView = new RedirectView("mainForm.htm", true);
                return new ModelAndView(redirectView);
            }
            else
            {
                ModelAndView modelView = new ModelAndView();
                modelView.addObject("error", "Invalid username and password!");
                return modelView;
            }
        }
    }

    public LoginService getLoginService() {
        return loginService;
    }

    public void setLoginService(LoginService loginService) {
        this.loginService = loginService;
    }
    
}
