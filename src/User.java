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
class User {
    
    private int id;
    private String fname,lname,email,check_in,check_out,persons,type; 
    
    public User(int id ,String fname, String lname, String email, String check_in, String check_out, String persons, String type)
    {
        this.id = id;
        this.fname = fname;
        this.lname = lname;
        this.email = email;
        this.check_in = check_in;
        this.check_out = check_out;
        this.persons = persons;
        this.type = type;
    }
    
    public int getid(){
        return id;
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
    
    public String getcheck_in(){
        return check_in;
    }
    
    public String getcheck_out(){
        return check_out;
    }
    
    
    public String getpersons(){
        return persons;
    }
    
    public String gettype(){
        return type;
    }
}
