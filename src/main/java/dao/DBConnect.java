package dao;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBConnect {
    public static Connection open(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/ttcscongoc";
            String root = "root";
            String pass = "11072001";
            return DriverManager.getConnection(url, root, pass);
        }catch (ClassNotFoundException | SQLException e){
            return null;
        }
    }
    public  static void close(Connection conn, PreparedStatement pst, ResultSet rs){
        try {
            if(rs!=null){
                rs.close();
            }
            if(pst!=null){
                pst.close();
            }
            if(conn!=null){
                conn.close();
            }
        }catch (SQLException e){
            Logger.getLogger(DBConnect.class.getName()).log(Level.SEVERE,null,e);
        }
    }
}
