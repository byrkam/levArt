/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication1;

/**
 *
 * @author sirag
 */
class Employee {
    

    private String fname,lname,email,phone,number; 
    
    public Employee(String fname, String lname, String email, String phone, String number)
    {
        this.fname = fname;
        this.lname = lname;
        this.email = email;
        this.phone = phone;
        this.number = number;
    }
    
    
    public String getfname(){
        return fname;
    }
    
    
    public String getlname(){
        return lname;
    }
    
    public String getemail(){
        return email;
    }
    
    public String getphone(){
        return phone;
    }
    
    public String getnumber(){
        return number;
    }
    
}
