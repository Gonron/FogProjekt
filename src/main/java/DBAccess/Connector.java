package DBAccess;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import logger.Conf;

/**
 * The purpose of Connector is to...
 *
 * @author kasper
 */
public class Connector {

    private static final String URL = "jdbc:mysql://46.101.101.94/fog?autoReconnect=true&serverTimezone=CET";
    private static final String USERNAME = "ruben";
    private static final String PASSWORD = "1234";

    private static Connection singleton;

    public static void setConnection(Connection con) {
        singleton = con;
    }

    public static Connection connection() throws SQLException {
        if (singleton == null) {

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");

            } catch (ClassNotFoundException ex) {
                Conf.MYLOGGER.log(Level.SEVERE, null, ex);
            }

            singleton = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        }
        return singleton;
    }

}
