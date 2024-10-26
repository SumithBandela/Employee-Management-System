package test;
import java.io.*;
import java.util.ArrayList;
import java.util.Iterator;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/edit")
public class EditEmployeeServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException , ServletException
	{
		HttpSession hs = req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("msg", "Session Expired....<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}else {
			String eid = req.getParameter("eid");
			ArrayList<EmployeeBean> al = (ArrayList<EmployeeBean>)hs.getAttribute("alist");
			Iterator<EmployeeBean> it = al.iterator();
			while(it.hasNext())
			{
				EmployeeBean eb =(EmployeeBean) it.next();
				if(eid.equals(eb.geteId()))
				{
					hs.setAttribute("emp", eb);
					req.getRequestDispatcher("EditEmployee.jsp").forward(req, res);
					break;
				}
			}
			
		}
	}
}
