package test;
import java.io.*;
import java.util.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/view")
public class ViewEmployeesServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException , ServletException{
		HttpSession hs = req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("msg","Session Expired....<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}else
		{
			ArrayList<EmployeeBean> al = new ViewEmployeesDAO().retrieve();
			hs.setAttribute("alist", al);
			req.getRequestDispatcher("ViewEmployees.jsp").forward(req, res);
		}
	}
}
