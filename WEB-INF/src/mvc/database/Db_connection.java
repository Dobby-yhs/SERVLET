package mvc.database;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.DriverManager;

public class Db_connection {
	public static Connection getConnection()throws SQLException, ClassNotFoundException  {		
        
        Connection conn = null;
        String url = "jdbc:mysql://localost:3306/ggouppang?characterEncoding=utf8";
        String user ="root";
        String password = "123123";
        
        Class.forName("com.mvsql.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, password);
        
        return conn;
    }
}