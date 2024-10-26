package test;
import java.sql.*;
public class UpdateEmployeeDAO {

	public int k = 0;
	public int update(EmployeeBean eb)
	{
		try
		{
			Connection con = DBConnection.getCon();
			PreparedStatement ps = con.prepareStatement("Update employee61 set ename=?,position=?,sal=?,email=?,phno=?,etype=? where eid=?");
			ps.setString(1, eb.getEname());
			ps.setString(2, eb.getPosition());
			ps.setInt(3, eb.getSal());
			ps.setString(4, eb.getEmail());
			ps.setLong(5, eb.getPhno());
			ps.setString(6, eb.geteType());
			ps.setString(7, eb.geteId());
			k = ps.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return k;
	}
}
