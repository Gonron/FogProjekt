package DBAccess;

import FunctionLayer.LoginSampleException;
import FunctionLayer.Order;
import FunctionLayer.OrderLine;
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
 * The purpose of DataMapper is to...
 *
 * @author kasper
 */
public class DataMapper {

    public static void createUser(User user) throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            String SQL = "INSERT INTO Users (email, password, phone, post, adress, role) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(SQL, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, user.getEmail());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getPhonenumber());
            ps.setString(4, user.getPostalCode());
            ps.setString(5, user.getAddress());
            ps.setString(6, user.getRole());
            ps.executeUpdate();
            ResultSet ids = ps.getGeneratedKeys();
            ids.next();
            int id = ids.getInt(1);
            user.setId(id);
        } catch (SQLException | ClassNotFoundException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }

    public static User login(String email, String password) throws LoginSampleException, NoSuchAlgorithmException, InvalidKeySpecException {

        // denne metode skal rettes så ledes, at vi tager et salt objekt udfra databasen og kan bruge det til at verificere brugeren
        try {

            Connection con = Connector.connection();
            String SQL = "SELECT id, phone, post, adress, role FROM Users "
                    + "WHERE email=? AND password=?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String role = rs.getString("role");
                int id = rs.getInt("id");
                String phonenumber = rs.getString("phone");
                String postalCode = rs.getString("post");
                String address = rs.getString("adress");
                User user = new User(id, email, password, phonenumber, postalCode, address, role);
                user.setId(id);
                return user;
            } else {
                throw new LoginSampleException("Could not validate user");
            }
        } catch (ClassNotFoundException | SQLException ex) {
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

    public static ArrayList<Order> getOrders(User u) throws ClassNotFoundException, SQLException {
        int id = u.getId();
        ArrayList<Order> orders = new ArrayList();
        Connection con = Connector.connection();
        String SQL = "SELECT * FROM orders " + "WHERE id=?";
        PreparedStatement ps = con.prepareStatement(SQL);
        ps.setInt(1, id);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            int orderId = rs.getInt("order_id");
            int heigth = rs.getInt("Heigth");
            int width = rs.getInt("Width");
            int length = rs.getInt("Length");
            boolean status = rs.getBoolean("status");
            Order order = new Order(orderId, heigth, width, length, status);
            orders.add(order);
        }
        return orders;
    }

    public static void updateOrder(int id) throws ClassNotFoundException, SQLException {
        Connection con = Connector.connection();
        String SQL = "update orders set status = ? where order_id = ?";
        PreparedStatement ps = con.prepareStatement(SQL);
        ps.setBoolean(1, true);
        ps.setInt(2, id);
        ps.executeUpdate();
    }
    
    public static ArrayList<OrderLine> getTreeMaterials() throws ClassNotFoundException, SQLException{
         ArrayList<OrderLine> materials = new ArrayList();
        Connection con = Connector.connection();
        String SQL = "SELECT * FROM materials";
        PreparedStatement ps = con.prepareStatement(SQL);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            int id = rs.getInt("material_id");
            String description = rs.getString("desc");
            int length = rs.getInt("length");
            int price = rs.getInt("price");            
            OrderLine l = new OrderLine(id, length, 0, description, price);          
            materials.add(l);
        }
        return materials;
    }
    
    
    
    public static ArrayList<OrderLine> fillAmount(int userLength, boolean shed) throws ClassNotFoundException, SQLException{
        //denne metode tager udgangspunk i en carport med flattag
        
        ArrayList<OrderLine> materials = DataMapper.getTreeMaterials();
         for(int i = 0; i < materials.size(); i ++){
             
        //dette stykke kode er for de første 4 stykker træ, hvor calculateplanks metoden kaldes
        materials.get(i).setAmount(Order.calculatePlanks(userLength, materials.get(i).getLength()));
        materials.get(i).setAmount(Order.calculatePlanks(userLength, materials.get(i).getLength()));
        materials.get(i).setAmount(Order.calculatePlanks(userLength, materials.get(i).getLength()));
        materials.get(i).setAmount(Order.calculatePlanks(userLength, materials.get(i).getLength()));
        
        
        //næste stykke materiale er fast for alle carporte
        materials.get(i).setAmount(420); // nr 5
        
        //næste materialer er jeg i tivl om hvad der skal bruges, jeg undersøgte "løsholte
        //og det stod som en slags brædder, der holder stolperne sammen
        materials.get(i).setAmount(Order.calculatePlanks(userLength, materials.get(i).getLength()));
        materials.get(i).setAmount(Order.calculatePlanks(userLength, materials.get(i).getLength()));
        
        // de næste materialer virker til at være stolperne
        materials.get(i).setAmount(Order.calculatePosts(userLength, shed));
        materials.get(i).setAmount(Order.calculatePosts(userLength, shed));
        materials.get(i).setAmount(Order.calculatePosts(userLength, shed)); // nr 10
        
        //en enkelt stolpe jeg tror det er samme metode som pælene
        materials.get(i).setAmount(Order.calculatePosts(userLength, shed));
        
        // nu kommer der brædt igen ligesom i starten
        materials.get(i).setAmount(Order.calculatePlanks(userLength, materials.get(i).getLength()));
        materials.get(i).setAmount(Order.calculatePlanks(userLength, materials.get(i).getLength()));
        materials.get(i).setAmount(Order.calculatePlanks(userLength, materials.get(i).getLength()));
        
        //Plastmo Ecolite skal måske have en ny metode, men indtil videre burde
        //calculate planks matoden virke
        materials.get(i).setAmount(Order.calculatePlanks(userLength, materials.get(i).getLength())); //nr 15
        materials.get(i).setAmount(Order.calculatePlanks(userLength, materials.get(i).getLength()));
        
        
        //resterende udregninger for resten af materialerne herunder
        return materials;
         
         }
        
        return null;
        
    }
    
}
