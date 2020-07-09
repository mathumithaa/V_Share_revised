package com.virtusa.vshare.controller;

import java.util.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DecimalFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping(value="/validate")
public class LoginValidateController  {
	

@GetMapping("/validate") 
public String test(HttpServletRequest req , HttpServletResponse res) throws IOException{
try{
      String uname = req.getParameter("username");  
      String pass  = req.getParameter("password");
      String mail  = req.getParameter("email");
      Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
      Connection conn=DriverManager.getConnection(  
       "jdbc:mysql://localhost:3306/vshare","root","mathudb");      
      PreparedStatement ps = conn.prepareStatement("Select username,password from vshare.login_details where username=? and password=? and email=?");
      ps.setString(1, uname);
      ps.setString(2, pass);
      ps.setString(3, mail);
      ResultSet rs = ps.executeQuery();    
     
      if(rs.next()) {
       return "welcome";
      }
     
      else {
          return "retry_login";
         
      }
 }
 catch(Exception e){      
 System.out.print(e);
 return "retry_login";
 }      

}
}


