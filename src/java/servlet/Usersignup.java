/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ganesh
 */
@WebServlet(name = "usersiservlet", urlPatterns = {"/usersiservlet"})
public class Usersignup extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        PrintWriter out=res.getWriter();
        String s= req.getParameter("name");
          String s1= req.getParameter("email");
            String s2= req.getParameter("password");

        
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/library","root","root");  
           
    
 PreparedStatement pst=con.prepareStatement("insert into  usersingnup1 values(?,?,?)"); 

	       pst.setString(1,s);
		pst.setString(2, s1);
                pst.setString(3,s2);
               
             int a= pst.executeUpdate();
            if(a!=0){out.print("conn");
			res.setContentType("text/html");
			out.print("<h2 style='color:Black'> Login Successfull</h2>");
			RequestDispatcher d=req.getRequestDispatcher("/Userlogin.html");
                        d.forward(req, res);
		
		}
		else
			out.print("<h2 style='color:Black'> signup fail</h2>");
			RequestDispatcher d=req.getRequestDispatcher("/usersignup.html");
                        d.forward(req, res);
			
		}
           
        
        
        catch(Exception ex){
        out.printf("error");}
     
    }


}
