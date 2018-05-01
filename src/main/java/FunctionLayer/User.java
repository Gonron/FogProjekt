package FunctionLayer;

/**
 * The purpose of User is to...
 *
 * @author kasper
 */
public class User {

    
    
    private int id; // just used to demo retrieval of autogen keys in UserMapper
    private String phonenumber;
    private String email;
    private String password; // Should be hashed and all
    private String role;
    private int postalCode;
    private String address;
    
    //the "real" constructor which has all the parameters nedded to create the object
    public User(int id, String phonenumber, String email, String password, String role, int postalCode, String address) {
        this.id = id;
        this.phonenumber = phonenumber;
        this.email = email;
        this.password = password;
        this.role = role;
        this.postalCode = postalCode;
        this.address = address;
    }
    
    //constructor without id, which is used to create the user object, where the id is genereated in the MySQL database
      public User(String phonenumber, String email, String password, String role, int postalCode, String address) {
        this.phonenumber = phonenumber;
        this.email = email;
        this.password = password;
        this.role = role;
        this.postalCode = postalCode;
        this.address = address;
    }


    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }
    

    public User() { //used for testing purposes on Java Bean Entities

    }

    public int getPostalCode() {
        return postalCode; 
    }

    public void setPostalCode(int postalCode) {
        this.postalCode = postalCode;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
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
