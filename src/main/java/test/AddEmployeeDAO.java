package test;
import java.sql.*;
public class AddEmployeeDAO {

	public int k = 0;
	public int insert(EmployeeBean eb)
	{
		try
		{
			Connection con = DBConnection.getCon();
			PreparedStatement ps = con.prepareStatement("insert into employee61 values(?,?,?,?,?,?,?)");
			ps.setString(1,eb.geteId());
			ps.setString(2, eb.getEname());
			ps.setString(3, eb.getPosition());
			ps.setInt(4, eb.getSal());
			ps.setString(5, eb.getEmail());
			ps.setLong(6,eb.getPhno());
			ps.setString(7, eb.geteType());

			k = ps.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return k;
	}
}
