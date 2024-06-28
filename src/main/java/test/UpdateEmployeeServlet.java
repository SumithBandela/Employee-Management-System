package test;
import java.io.*;
import java.util.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/update")
public class UpdateEmployeeServlet  extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req ,HttpServletResponse res)throws ServletException,IOException{
		HttpSession hs = req.getSession(false);
		if(hs==null) {
			req.setAttribute("msg", "Session Expired....<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}else {
			String eid = req.getParameter("eid");
			int bSal = Integer.parseInt(req.getParameter("bsal"));
			float hr = Float.parseFloat(req.getParameter("hra"));
			float d = Float.parseFloat(req.getParameter("da"));
			float hra = hr*bSal;
			float da = d*bSal;
			float totSal = bSal+hra+da;
			ArrayList<EmployeeBean> al = (ArrayList<EmployeeBean>)hs.getAttribute("alist");
			Iterator <EmployeeBean> it = al.iterator();
			while(it.hasNext()) {
				EmployeeBean eb =(EmployeeBean)it.next();
				if(eid.equals(eb.geteId())) {
					eb.setbSal(bSal);
					eb.setHra(hra);
					eb.setDa(da);
					eb.setTotSal(totSal);
					int k = new UpdateEmployeeDAO().update(eb);
					if(k>0) {
						req.setAttribute("msg", "Employee Updated Successfully....<br>");
						req.getRequestDispatcher("UpdateEmployee.jsp").forward(req, res);
					}
					break;
				}
			}
			}
		}
	}

