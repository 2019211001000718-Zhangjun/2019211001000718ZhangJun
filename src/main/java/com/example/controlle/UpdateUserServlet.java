package com.example.controlle;

import com.example.dao.UserDao;
import com.example.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(name = "UpdateUserServlet", value = "/updateUser")
public class UpdateUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/views/updateUser.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int Id= Integer.parseInt(request.getParameter("id"));
        String Username=request.getParameter("username");
        String password=request.getParameter("password");
        String Email=request.getParameter("email");
        String Gender=request.getParameter("gender");
            String Date=request.getParameter("date");
            User user=new User();
            user.setId(Id);
            user.setUsername(Username);
            user.setPassword(password);
            user.setEmail(Email);
            user.setGender(Gender);
            user.setBirthdate(Date);
            UserDao userDao=new UserDao();
            Connection con = (Connection) getServletContext().getAttribute("con");
            try {
                if(userDao.updateUser(con,user)!=0) {
                    User user1=userDao.findByUsernamePassword(con,Username,password);
                    HttpSession session=request.getSession();
                    session.setMaxInactiveInterval(10);
                    session.setAttribute("user",user1);
                    request.getRequestDispatcher("accountDetails").forward(request, response);
                }
            } catch (SQLException throwable) {
                throwable.printStackTrace();
            }
    }
}