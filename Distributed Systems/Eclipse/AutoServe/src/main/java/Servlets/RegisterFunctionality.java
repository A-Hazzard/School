package Servlets;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisterFunctionality {
	private String dbUrl = "jdbc:oracle:thin:@localhost:1521/XEPDB1";
	private String dbUname = "autoserve";
	private String dbPassword = "autoserveinc";
	private String dbDriver = "oracle.jdbc.driver.OracleDriver";
	
	public void loadDriver(String dbDriver) {
		try {
			Class.forName(dbDriver);
		} catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
	}//end loadDriver method
	
	public Connection getConnection() {
	    Connection con = null;
		try {
			 con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
        return con;
	}//end getConnection method
	
	public String insert(userInfo credentials) {
		loadDriver(dbDriver);
		Connection con = getConnection();
		String result = "Data entered successfully. <a href = \"registration.html\">Register again.</a>";
<<<<<<< HEAD
		String sql = "INSERT INTO clients VALUES(clientID.nextval,?,?,?,?,?,'Client')";
=======
		String sql = "INSERT INTO Person VALUES(personID.nextval,?,?,?,?,?)";
>>>>>>> parent of 4e0e58a (backed up eclipse folders)
		
		PreparedStatement ps;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, credentials.getFirstName());
			ps.setString(2, credentials.getLastName());
			ps.setString(3, credentials.getEmail());
			ps.setString(4, credentials.getPhone());
			ps.setString(5, credentials.getPassword());
<<<<<<< HEAD
			//ps.setString(6, credentials.getPosition());

=======
>>>>>>> parent of 4e0e58a (backed up eclipse folders)
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			result = "Data not entered";
		}
		return result;
	}
	
}//end RegisterDao class
