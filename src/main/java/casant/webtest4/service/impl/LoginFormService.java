/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package casant.webtest4.service.impl;

import javax.validation.constraints.Size;

/**
 *
 * @author Emmanuel
 */
public class LoginFormService {
    
    @Size(min = 1, max = 50)
    private String userName;
    @Size(min = 1, max = 20)
    private String password;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
}
