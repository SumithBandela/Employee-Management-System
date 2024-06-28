package test;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/add")
public class AddEmployeeServlet extends HttpServlet{
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException{
		HttpSession hs = req.getSession(false);
		if(hs==null) {
			req.setAttribute("msg","Session Expired....<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}else {
			String eId = req.getParameter("eid");
			String eName = req.getParameter("ename");
			String eDesg =req.getParameter("edesg");
			int bSal  = Integer.parseInt(req.getParameter("bsal"));
			float hr = Float.parseFloat(req.getParameter("hra"));
			float d  =Float.parseFloat(req.getParameter("da"));
			float hra = hr*bSal;
			float da  = d*bSal;
			float totSal =bSal+hra+da;
			EmployeeBean eb = new EmployeeBean();
			eb.seteId(eId);
			eb.seteName(eName);
			eb.seteDesg(eDesg);
			eb.setbSal(bSal);
			eb.setHra(hra);
			eb.setDa(da);
			eb.setTotSal(totSal);
			AddEmployeeDAO aed = new AddEmployeeDAO();
			int k = aed.insert(eb);
			if(k>0) {
				req.getRequestDispatcher("AddEmployee.jsp").forward(req, res);
			}
		}
	}

}
