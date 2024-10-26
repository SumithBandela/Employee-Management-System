package test;
import java.io.*;
import java.util.ArrayList;
import java.util.Iterator;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/update")
public class UpdateEmployeeServlet  extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res)throws IOException,ServletException
	{
		HttpSession hs = req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("msg", "Session Expired....<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}else {
		String eid = req.getParameter("eid");
		String name = req.getParameter("name");
		String position = req.getParameter("position");
		int salary = Integer.parseInt(req.getParameter("sal"));
		String mail = req.getParameter("email");
		long phno = Long.parseLong(req.getParameter("phno"));
		String eType = req.getParameter("etype");
		ArrayList<EmployeeBean> al = (ArrayList<EmployeeBean>)hs.getAttribute("alist");
		Iterator<EmployeeBean> it = al.iterator();
		while(it.hasNext())
		{
			EmployeeBean eb = (EmployeeBean)it.next();
			if(eid.equals(eb.geteId()))
			{
				eb.setEname(name);
				eb.setPosition(position);
				eb.setSal(salary);
				eb.setEmail(mail);
				eb.setPhno(phno);
				eb.seteType(eType);
				int k = new UpdateEmployeeDAO().update(eb);
				if(k>0)
				{
					req.setAttribute("msg","Employee Updated Successfully...<br>");
					req.getRequestDispatcher("UpdateEmployee.jsp").forward(req, res);
					
				}
				break;
			}
		}
		}
		
	}
	
}
