/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package main;

/** 
 *
 * @author Agus
 */
public class User {
    private String userName;
    private String passWord;
    
    User() {
        userName = "";
        passWord = "";
    }
    
    User(String userName, String passWord) {
        this.userName = userName;
        this.passWord = passWord;
    }
    
    public void setUserName(String userName) { this.userName = 
            userName;
    }
    
    public String getUserName() { return userName; }
    
    public void setPassword(String password) { this.passWord = 
            passWord; }
    public String getPassword() { return passWord; }
}
