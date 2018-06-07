package DBAccess;

import FunctionLayer.LoginSampleException;
import FunctionLayer.Order;
import FunctionLayer.OrderLine;
import FunctionLayer.User;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import logger.Conf;

/**
 * The purpose of DataMapper is to extract data and insert data into the
 * database
 *
 * @author kasper
 */
public class DataMapper {

    /**
     * This method creates a user and saves it in the database
     *
     * @param user
     * @throws LoginSampleException
     */
    public static void createUser(User user) throws LoginSampleException, NoSuchAlgorithmException //vi skal lige have ne bedre errorhandeling her
    {
        try {
            Connection con = Connector.connection();
            String SQL = "INSERT INTO Users (email, password, phone, post, adress, role, salt) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(SQL, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, user.getEmail());
            ps.setBytes(2, user.getPassword());
            ps.setString(3, user.getPhonenumber());
            ps.setString(4, user.getPostalCode());
            ps.setString(5, user.getAddress());
            ps.setString(6, user.getRole());
            ps.setBytes(7, user.getSalt());
            ps.executeUpdate();
            ResultSet ids = ps.getGeneratedKeys();
            ids.next();
            int id = ids.getInt(1);
            user.setId(id);
        } catch (SQLException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }

    /**
     * This method validates that the user exists in the database
     *
     * @param email
     * @param password
     * @return this method returns the user with the corresponding username and
     * password
     * @throws LoginSampleException
     */
    public static User login(String email, String password) throws LoginSampleException {
        try {

            // denne metode skal rettes så ledes, at vi tager et salt objekt udfra databasen og kan bruge det til at verificere brugeren
            Connection con = Connector.connection();
            String SQL = "SELECT id, phone, post, adress, role, salt FROM Users "
                    + "WHERE email=?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String role = rs.getString("role");
                int id = rs.getInt("id");
                String phonenumber = rs.getString("phone");
                String postalCode = rs.getString("post");
                String address = rs.getString("adress");
                byte[] salt = rs.getBytes("salt");
                User user = new User(id, email, phonenumber, postalCode, address, role, salt);
                user.setId(id);
                return user;
            } else {
                throw new LoginSampleException("Could not validate user");
            }
        } catch (SQLException ex) {
            Conf.MYLOGGER.log(Level.SEVERE, null, ex);
            throw new LoginSampleException(ex.getMessage());
        }
    }

    /**
     * This method extracts all orders from the database and sorts by newest.
     *
     * @return returns all orders in an arraylist
     * @throws LoginSampleException
     */
    public static ArrayList<Order> getOrders() throws LoginSampleException {
        try {
            ArrayList<Order> orders = new ArrayList();
            Connection con = Connector.connection();
            String SQL = "SELECT * FROM orders ORDER BY order_id DESC";
            PreparedStatement ps = con.prepareStatement(SQL);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("order_id");
                int Heigth = rs.getInt("Heigth");
                int Width = rs.getInt("Width");
                int Length = rs.getInt("Length");
                boolean status = rs.getBoolean("status");
                boolean shed = rs.getBoolean("shed");
                Order order = new Order(id, Heigth, Width, Length, shed, status, false);
                orders.add(order);
            }
            return orders;
        } catch (SQLException ex) {
            Conf.MYLOGGER.log(Level.SEVERE, null, ex);
            throw new LoginSampleException(ex.getMessage());
        }
    }

    /**
     * This method returns all orders made by a specific user
     *
     * @param u
     * @return the method returns an arraylist of orders made by a user
     * @throws FunctionLayer.LoginSampleException
     *
     */
    public static ArrayList<Order> getOrders(User u) throws LoginSampleException {
        try {
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
                boolean shed = rs.getBoolean("shed");
                boolean status = rs.getBoolean("status");
                Order order = new Order(orderId, heigth, width, length, shed, status, false);
                orders.add(order);
            }
            return orders;
        } catch (SQLException ex) {
            Conf.MYLOGGER.log(Level.SEVERE, null, ex);
            throw new LoginSampleException(ex.getMessage());
        }
    }

    /**
     * this method marks an order as sent
     *
     * @param id
     * @throws FunctionLayer.LoginSampleException
     *
     */
    public static void updateOrder(int id) throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            String SQL = "UPDATE orders SET status = ? WHERE order_id = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setBoolean(1, true);
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Conf.MYLOGGER.log(Level.SEVERE, null, ex);
            throw new LoginSampleException(ex.getMessage());
        }
    }

    /**
     * This method returns a list of orderlines without amount
     *
     * @return Returns an arraylist of orderlines
     * @throws FunctionLayer.LoginSampleException
     */
    public static ArrayList<OrderLine> getTreeMaterials() throws LoginSampleException {
        try {
            ArrayList<OrderLine> materials = new ArrayList<>();
            Connection con = Connector.connection();
            String SQL = "SELECT * FROM materials";
            PreparedStatement ps = con.prepareStatement(SQL);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("material_id");
                String name = rs.getString("name");
                String description = rs.getString("descr");
                int length = rs.getInt("length");
                int price = rs.getInt("price");
                int group = rs.getInt("material_group");
                OrderLine l = new OrderLine(id, name, length, 0, description, price, group);
                materials.add(l);
            }
            return materials;
        } catch (SQLException ex) {
            Conf.MYLOGGER.log(Level.SEVERE, null, ex);
            throw new LoginSampleException(ex.getMessage());
        }
    }

    /**
     * this method returns and order from the database
     *
     * @param id
     * @return The method return a specific order
     * @throws FunctionLayer.LoginSampleException
     */
    public static Order getOrder(int id) throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT * FROM orders WHERE order_id=?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                double heigth = rs.getInt("Heigth");
                double width = rs.getInt("Width");
                double length = rs.getInt("Length");
                boolean status = rs.getBoolean("status");
                boolean shed = rs.getBoolean("shed");
                Order order = new Order(heigth, width, length, shed, status, false);
                return order;
            }
        } catch (SQLException ex) {
            Conf.MYLOGGER.log(Level.SEVERE, null, ex);
            throw new LoginSampleException(ex.getMessage());
        }
        return null;
    }

    /**
     * This method should be used to update the materials in the database but
     * sadly doesn't work yet
     *
     * @param name
     * @param desc
     * @param length
     * @param price
     * @param materialGroup
     * @param id
     * @throws FunctionLayer.LoginSampleException
     */
    public static void updateMaterials(String name, String desc, int length, int price, int materialGroup, int id) throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            String SQL = "UPDATE materials SET name = ?, descr = ?, length = ?, price = ?, material_group = ? WHERE material_id = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, name);
            ps.setString(2, desc);
            ps.setInt(3, length);
            ps.setInt(4, price);
            ps.setInt(5, materialGroup);
            ps.setInt(6, id);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Conf.MYLOGGER.log(Level.SEVERE, null, ex);
            throw new LoginSampleException(ex.getMessage());
        }
    }

    /**
     * This method creates an order and saves it in the database and the creates
     * orderlines and saves them aswell
     *
     * @param order
     * @param user
     * @param orderlines
     * @throws FunctionLayer.LoginSampleException
     */
    public static void createOrder(Order order, User user, ArrayList<OrderLine> orderlines) throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            String SQL = "INSERT INTO orders (id, Heigth, Width, Length, shed, status) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(SQL, Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, user.getId());
            ps.setDouble(2, order.getHeigth());
            ps.setDouble(3, order.getWidth());
            ps.setDouble(4, order.getLength());
            ps.setBoolean(5, order.getShed());
            ps.setBoolean(6, order.getStatus());
            ps.executeUpdate();
            ResultSet ids = ps.getGeneratedKeys();
            ids.next();
            int id = ids.getInt(1);
            order.setId(id);
            SQL = "INSERT INTO orderline (order_id, material_id, amount, price) VALUES (?, ?, ?, ?)";
            ps = con.prepareStatement(SQL);
            for (int i = 0; i < orderlines.size(); i++) {
                ps.setInt(1, id);
                ps.setInt(2, orderlines.get(i).getMaterialId());
                ps.setInt(3, orderlines.get(i).getAmount());
                ps.setInt(4, orderlines.get(i).getPrice());
                ps.executeUpdate();
            }
        } catch (SQLException ex) {
            Conf.MYLOGGER.log(Level.SEVERE, null, ex);
            throw new LoginSampleException(ex.getMessage());
        }
    }

    /**
     * This method is used to return a list of orderlines
     *
     * @param id
     * @return The method returns an arraylist of orderlines
     * @throws FunctionLayer.LoginSampleException
     */
    public static ArrayList<OrderLine> getOrderLines(int id) throws LoginSampleException {
        try {
            ArrayList<OrderLine> materials = new ArrayList();
            ArrayList<Integer> materialIds = new ArrayList();
            ArrayList<Integer> amounts = new ArrayList();
            Connection con = Connector.connection();
            String SQL = "SELECT * FROM orderline WHERE id=?"; //TODO: Vi skal have lavet noget joint med denne metode så vi kan returnere en orderline
            PreparedStatement ps = con.prepareStatement(SQL);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int matId = rs.getInt("material_id");
                int amount = rs.getInt("amount");
                materialIds.add(matId);
                amounts.add(amount);
            }
            SQL = "SELECT * FROM materials WHERE material_id=?";
            ps = con.prepareStatement(SQL);
            rs = ps.executeQuery();
            int i = 0;
            int j = 0;
            int amount;
            while (rs.next()) {
                int matId = materialIds.get(i);
                i++;
                String name = rs.getString("name");
                String description = rs.getString("descr");
                int length = rs.getInt("length");
                amount = amounts.get(j);
                j++;
                int price = rs.getInt("price");
                int group = rs.getInt("material_group");
                OrderLine l = new OrderLine(matId, name, length, amount, description, price, group);
                materials.add(l);
            }
            return materials;
        } catch (SQLException ex) {
            Conf.MYLOGGER.log(Level.SEVERE, null, ex);
            throw new LoginSampleException(ex.getMessage());
        }
    }

    public static boolean validateUser(String username, String password) throws LoginSampleException {
        boolean isValidUser = false;
        try {
            // get the connection for the database
            Connection con = Connector.connection();

            //skriv 'select query'
            String SQL = "select * from Users where email = ?, password = ?";

            // set de givne parametre til PreparedStatement
            PreparedStatement statement = con.prepareStatement(SQL);
            statement.setString(1, username);
            statement.setString(2, password);

            //udfør statmentet og check om brugeren er gyldig
            ResultSet set = statement.executeQuery();
            while (set.next()) {
                isValidUser = true;
            }
        } catch (SQLException ex) {
            Conf.MYLOGGER.log(Level.SEVERE, null, ex);
            throw new LoginSampleException(ex.getSQLState());

        }
        return isValidUser;
    }

    public static byte[] getSaltMethod(String username) throws LoginSampleException {

        try {

            Connection con = Connector.connection();

            String SQL = "SELECT salt FROM Users WHERE email = ?";

            PreparedStatement statement = con.prepareStatement(SQL);
            statement.setString(1, username);

            ResultSet set = statement.executeQuery();

            while (set.next()) {

                byte[] salt = set.getBytes("salt");

                /* jeg er i tivil om denne skal være her*/
                return salt;
            }

        } catch (SQLException ex ){
            Conf.MYLOGGER.log(Level.SEVERE, null, ex);
            throw new LoginSampleException(ex.getMessage());
        }
        return null;

    }

    public static User showUser(int id) throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT * FROM Users WHERE id=?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String email = rs.getString("email");
                String phone = rs.getString("phone");
                String post = rs.getString("post");
                String adress = rs.getString("adress");
                User u = new User(id, phone, email, post, adress);
                return u;
            }
        } catch (SQLException ex) {
            Conf.MYLOGGER.log(Level.SEVERE, null, ex);
            throw new LoginSampleException(ex.getMessage());
        }
        return null;
    }
    
    
    public static byte[] getEncryptedPassword(String username) throws LoginSampleException {

        try {

            Connection con = Connector.connection();

            String SQL = "SELECT password FROM Users WHERE email = ?";

            PreparedStatement statement = con.prepareStatement(SQL);
            statement.setString(1, username);

            ResultSet set = statement.executeQuery();

            while (set.next()) {

                byte[] password = set.getBytes("password");

                /* jeg er i tivil om denne skal være her*/
                return password;
            }

        } catch (SQLException ex) {

            Conf.MYLOGGER.log(Level.SEVERE, null, ex);
            throw new LoginSampleException(ex.getMessage());
        }
        return null;

    }
}
