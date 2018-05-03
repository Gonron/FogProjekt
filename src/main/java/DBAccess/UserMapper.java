package DBAccess;

import FunctionLayer.LoginSampleException;
import FunctionLayer.Order;
import FunctionLayer.User;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


/**
 The purpose of UserMapper is to...

 @author kasper
 */
public class UserMapper {
    
    
    public static void createUser( User user ) throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            String SQL = "INSERT INTO Users (email, password, phonenumber, post, adress, role) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement( SQL, Statement.RETURN_GENERATED_KEYS );
            ps.setString( 1, user.getEmail() );
            ps.setString( 2, user.getPassword() );
            ps.setString( 3, user.getPhonenumber() );
            ps.setInt( 4, user.getPostalCode() );
            ps.setString( 5, user.getAddress() );
            ps.setString( 6, user.getRole() );
            ps.executeUpdate();
            ResultSet ids = ps.getGeneratedKeys();
            ids.next();
            int id = ids.getInt( 1 );
            user.setId( id );
        } catch ( SQLException | ClassNotFoundException ex ) {
            throw new LoginSampleException( ex.getMessage() );
        }
    }


    public static User login( String email, String password ) throws LoginSampleException, NoSuchAlgorithmException, InvalidKeySpecException {

        
        // denne metode skal rettes så ledes, at vi tager et salt objekt udfra databasen og kan bruge det til at verificere brugeren
        try {
            
            Connection con = Connector.connection();
            String SQL = "SELECT id, phonennumber, role, postalCode, address FROM Users "
                    + "WHERE email=? AND password=?";
            PreparedStatement ps = con.prepareStatement( SQL );
            ps.setString( 1, email );
            ps.setString(2, password );
            ResultSet rs = ps.executeQuery();
            if ( rs.next() ) {
                String role = rs.getString( "role" );
                int id = rs.getInt( "id" );
                String phonenumber = rs.getString("phonenumber");
                int postalCode = rs.getInt("postalCode");
                String address = rs.getString("address");
                User user = new User(id, phonenumber, email, password, role, postalCode, address);
                user.setId( id );
                return user;
            } else {
                throw new LoginSampleException( "Could not validate user" );
            }
        } catch ( ClassNotFoundException | SQLException ex ) {
            throw new LoginSampleException(ex.getMessage());
        }
    }
 public static ArrayList<Order> getOrders() throws ClassNotFoundException, SQLException {
        ArrayList<Order> orders = new ArrayList();
        Connection con = Connector.connection();
        String SQL = "SELECT * FROM orders ORDER BY order_id DESC";
        PreparedStatement ps = con.prepareStatement(SQL);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            int id = rs.getInt("order_id");
            int SBricks = rs.getInt("Heigth");
            int MBricks = rs.getInt("Width");
            int LBricks = rs.getInt("Length");
            boolean status = rs.getBoolean("status");
            Order order = new Order(id, SBricks, MBricks, LBricks, status);
            orders.add(order);
        }
        return orders;
    }
 
  public static void createOrder(Order order, User user) throws SQLException, ClassNotFoundException {

        Connection con = Connector.connection();
        String SQL = "INSERT INTO orders (id, Heigth, Width, Length, status) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement ps = con.prepareStatement(SQL, Statement.RETURN_GENERATED_KEYS);
        ps.setInt(1, user.getId());
        ps.setInt(2, order.getHeigth());
        ps.setInt(3, order.getWidth());
        ps.setInt(4, order.getLength());
        ps.setBoolean(5, order.getStatus());
        ps.executeUpdate();
        ResultSet ids = ps.getGeneratedKeys();
        ids.next();
        int id = ids.getInt(1);
        order.setId(id);
    }

}
