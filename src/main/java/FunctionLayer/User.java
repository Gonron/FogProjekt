package FunctionLayer;

/**
 * The purpose of User is to...
 *
 * @author kasper
 */
public class User {

    
    //the "real" constructor which has all the parameters nedded to create the object
    public User(int id, String username, String phonenumber, String email, byte[] password, String role, byte[] salt) {
        this.id = id;
        this.username = username;
        this.phonenumber = phonenumber;
        this.email = email;
        this.password = password;
        this.role = role;
        this.salt = salt;
    }
    
    //constructor without id, which is used to create the user object, where the id is genereated in the MySQL database
      public User( String username, String phonenumber, String email, byte[] password, String role, byte[] salt) {
        this.username = username;
        this.phonenumber = phonenumber;
        this.email = email;
        this.password = password;
        this.role = role;
        this.salt = salt;
    }



    private int id; // just used to demo retrieval of autogen keys in UserMapper
    private String username;
    private String phonenumber;
    private String email;
    private byte[] password; // Should be hashed and all
    private String role;
    private byte[] salt;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    public byte[] getSalt() {
        return salt;
    }

    public void setSalt(byte[] salt) {
        this.salt = salt;
    }
    

    public User() { //used for testing purposes on Java Bean Entities

    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public byte[] getPassword() {
        return password;
    }

    public void setPassword(byte[] password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

}
