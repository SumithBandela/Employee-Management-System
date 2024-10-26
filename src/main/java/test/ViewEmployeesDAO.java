package test;
import java.sql.*;
import java.util.*;
public class ViewEmployeesDAO {

	public ArrayList<EmployeeBean> al = new ArrayList<>();
	public ArrayList<EmployeeBean> retrieve()
	{
		try
		{
			Connection con = DBConnection.getCon();
			PreparedStatement ps = con.prepareStatement("select * from Employee61");
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				EmployeeBean eb = new EmployeeBean();
				eb.seteId(rs.getString(1));
				eb.setEname(rs.getString(2));
				eb.setPosition(rs.getString(3));
				eb.setSal(rs.getInt(4));
				eb.setEmail(rs.getString(5));
				eb.setPhno(rs.getLong(6));
				eb.seteType(rs.getString(7));
				al.add(eb);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}
}
