package com.user.servlet;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import com.entity.*;
import com.DAO.UserDAOImpl;
import com.DB.DBConnect;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			UserDAOImpl dao = new UserDAOImpl(DBConnect.getConnection());
			HttpSession session = req.getSession();
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			//System.out.println(email + " " + password);
			
			if("admin@gmail.com".equals(email) && "admin".equals(password)) {
				User us = new User();
				session.setAttribute("userobj", us);
				resp.sendRedirect("admin/home.jsp");
			}else {
				User us = dao.login(email, password);
				if(us!=null)
				{
					session.setAttribute("userobj", us);
					resp.sendRedirect("home.jsp");
				}else {
					session.setAttribute("failedMsg", "Wrong!!!");
					resp.sendRedirect("login.jsp");
				}
				resp.sendRedirect("home.jsp");
			}			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
