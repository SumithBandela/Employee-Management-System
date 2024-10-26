package test;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/add")
public class AddEmployeeServlet extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException
	{
		HttpSession hs = req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("msg", "Session Expired....<br>");
		}else {
			String eid = req.getParameter("eid");
			String name = req.getParameter("name");
			String position = req.getParameter("position");
			int sal = Integer.parseInt(req.getParameter("sal"));
			String email = req.getParameter("email");
			long phno = Long.parseLong(req.getParameter("phno"));
			String eType = req.getParameter("etype");
			EmployeeBean eb = new EmployeeBean();
			eb.seteId(eid);
			eb.setEname(name);
			eb.setPosition(position);
			eb.setSal(sal);
			eb.setEmail(email);
			eb.setPhno(phno);
			eb.seteType(eType);
			int k = new AddEmployeeDAO().insert(eb);
			if(k>0) {
		
				req.getRequestDispatcher("AddEmployee.jsp").forward(req, res);
			}
		}
		
	}
}
