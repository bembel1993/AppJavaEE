package by.application.javaWeb.connection.context;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBContext {
	public Connection getConnection() throws Exception {
		Class.forName("com.mysql.cj.jdbc.Driver");
		return DriverManager.getConnection("jdbc:mysql://localhost:3306/javaweb", "root", "root");}
}
