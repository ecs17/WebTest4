/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package casant.webtest4.model;

import java.io.Serializable;

/**
 *
 * @author emp.emmanuel.castro
 */
public class User implements Serializable {

    private static final long serialVersionUID = 1L;
    
    private Integer id;
    private String userName;
    private String password;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

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

    @Override
    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("Id: " + id + ";");
        buffer.append("User: " + userName);
        buffer.append("Passwor: " + password);
        return buffer.toString(); //To change body of generated methods, choose Tools | Templates.
    }
    
}
