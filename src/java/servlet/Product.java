package servlet;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
@WebServlet(urlPatterns = {"/Product"})
public class Product extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
           PrintWriter out = res.getWriter();
          res.setContentType("text/html");
        String s = req.getParameter("id");
           String s1 = req.getParameter("");
        
      
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/library", "root", "root");

            PreparedStatement pst = con.prepareStatement("insert into product values(?,?)");

             pst.setString(1, s);
            ResultSet r = pst.executeQuery();
            
            
            
            if(r.next())
            {
                out.print("succesfully add to cart");
			RequestDispatcher d=req.getRequestDispatcher("/cart.jsp");
                        d.forward(req, res);
            }
    }   catch(Exception ex){
    }

    }
}