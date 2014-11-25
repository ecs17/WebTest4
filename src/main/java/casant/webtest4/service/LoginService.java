/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package casant.webtest4.service;

import casant.webtest4.model.User;
import java.io.Serializable;

/**
 *
 * @author emp.emmanuel.castro
 */
public interface LoginService extends Serializable{
    
    public User getUsuario(String user, String pass);
}
