package test;
import java.io.*;
import java.util.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/delete")
public class DeleteEmployeeServlet extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
	{
		HttpSession hs = req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("msg", "Session Expired....<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}else
		{
		String eid = req.getParameter("eid");
		ArrayList<EmployeeBean> al = (ArrayList<EmployeeBean>)hs.getAttribute("alist");
		Iterator<EmployeeBean> it = al.iterator();
		while(it.hasNext())
		{
			EmployeeBean eb = (EmployeeBean)it.next();
			if(eid.equals(eb.geteId()))
			{
				al.remove(eb);
				int k = new DeleteEmployeeDAO().delete(eid);
				if(k>0)
				{
					req.setAttribute("msg", "Employee deleted Successfully....<br>");
					req.getRequestDispatcher("DeleteEmployee.jsp").forward(req, res);
				}
				break;
			}
		}
		}
	}
}
