  /*
 * Author: Hemayet Nirjhoy
 * Email: 2016-2-60-146@std.ewubd.edu
 * Description: This is simpler formate for database connection through Java
 */
package siginin.demo;

import java.sql.*;

/**
 *
 * @author hemay
 */
public class Siginin {
    private Connection conn=null;
    private String Database_Driver= "com.mysql.cj.jdbc.Driver";
    private String Database_url= "jdbc:mysql://localhost:3306/signin?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
    private String user="root";
    private String password ="";
    
    public Siginin() throws ClassNotFoundException, SQLException{
        Class.forName(this.Database_Driver);
        this.conn = DriverManager.getConnection(this.Database_url, this.user , this.password);
        if(conn!=null){
            System.out.println("Database connection successful.");
        }
    }
    
    public String check_signin(String email, String password) throws SQLException{
        String username=null;
        PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM user_info WHERE email=? and password=?");
        ps.setString(1, email);
        ps.setString(2, password);
        
        ResultSet rs = ps.executeQuery();
        
        while(rs.next()){
            username=rs.getString("email");
         }
        return username;
    }
    
//    
//    public static void main(String[] argc) throws ClassNotFoundException, SQLException{
//        Siginin object = new Siginin();
//    }
    
}
