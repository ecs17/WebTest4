/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package casant.webtest4.service.impl;

import casant.webtest4.model.User;
import casant.webtest4.service.LoginService;
import org.springframework.stereotype.Component;

/**
 *
 * @author emp.emmanuel.castro
 */
@Component
public class LoginServiceImpl implements LoginService{

    private static final long serialVersionUID = 1L;
    
    @Override
    public User getUsuario(String user, String pass) {
        User usuario = null;
        if (user.equals("ecs17") && pass.equals("casant")) {
            usuario = new User();
            usuario.setId(1);
            usuario.setUserName("ecs17");
            usuario.setPassword("casant");
        }
        return usuario;
    }
    
}
