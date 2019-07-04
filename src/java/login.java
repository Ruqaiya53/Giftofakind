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
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ruqaiya rangwala
 */
public class login extends HttpServlet {
   
       

    /**
     *
     * @param request
     * @param response@throws javax.servlet.ServletException
     * @throws java.io.IOException     */
    @Override
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            try {
                String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String email = request.getParameter("email");
            String contact = request.getParameter("contact");
            String password = request.getParameter("password");
            String selection = request.getParameter("selection");
           
                Class.forName("com.mysql.jdbc.Driver");
                Connection con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/giftofakind","root","root");
                         
             
            PreparedStatement ps = con.prepareStatement("insert into users (fname,lname,EmailID,contactNo,gender,password) values(?,?,?,?,?,?)");
            //stmt.executeUpdate("('"+email+"','"+type+"','"+fname+"','"+lname+"','"+date+"','"+contact+"','"+selection+"','"+password+"','"+city+"') ");
            ps.setString(1,fname);
            ps.setString(2, lname);
            ps.setString(3, email);
            ps.setString(4, contact);
            ps.setString(5, selection);
            ps.setString(6, password);
            int i=ps.executeUpdate();
            PrintWriter out = response.getWriter();
            con.close();
            response.sendRedirect("registerationDone.html");
            
            } catch (ClassNotFoundException | SQLException ex) {
                Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
            }
           
            }
}
