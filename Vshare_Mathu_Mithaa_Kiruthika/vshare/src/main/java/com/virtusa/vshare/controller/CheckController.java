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
@RequestMapping("/check")
public class CheckController {
	
	@GetMapping("/check")
	public String account_check(HttpServletRequest req, HttpServletResponse res) {
	    try{
	       String uname =req.getParameter("username");  
	       String pass = req.getParameter("password");
	       String mail = req.getParameter("email");
	      
	       String aano = req.getParameter("aadhar");
	       Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
	       Connection conn=DriverManager.getConnection(  
	        "jdbc:mysql://localhost:3306/vshare","root","mathudb");
	       
	       PreparedStatement ps = conn.prepareStatement("Select username,password,email,aadhar from vshare.login_details");
	       ResultSet rs = ps.executeQuery();
	       while(rs.next()){
	        if (rs.getString("aadhar").equals(aano)){
	        return "exists alert";
	        }
	       }
	       ps = conn.prepareStatement("INSERT INTO vshare.login_details (username,password,email,aadhar)VALUES (?,?,?,?)");
	       ps.setString(1, uname);
	       ps.setString(2, pass);
	       ps.setString(3, mail);
	       ps.setString(4, aano);
	       int n=ps.executeUpdate();
	    }
	       catch (Exception e) {
	       System.out.print(e);
	    }
	    return "home";

}
}
