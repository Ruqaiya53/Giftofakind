
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class LoginDao {
    public boolean check(String uname, String pass){
            String qr = "select * from users where EmailID=? and password=?";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/giftofakind","root","root");
            PreparedStatement ps = con.prepareStatement(qr);
            ps.setString(1, uname);
            ps.setString(2,pass);
             ResultSet rs= ps.executeQuery();
             if(rs.next())
             {
                 return true;
             }
             
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(LoginDao.class.getName()).log(Level.SEVERE, null, ex);
        }
            
    return false;
    }
    
}
