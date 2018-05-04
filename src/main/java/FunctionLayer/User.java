package FunctionLayer;

/**
 * The purpose of User is to...
 *
 * @author kasper
 */
public class User {

    
    
    private int id; // just used to demo retrieval of autogen keys in UserMapper
    private String phone;
    private String email;
    private String password; // Should be hashed and all
    private String role;
    private String postalCode;
    private String address;
    
    //the "real" constructor which has all the parameters nedded to create the object
    public User(int id, String email, String password, String phonenumber, String postalCode, String address, String role) {
        this.id = id;        
        this.email = email;
        this.password = password;
        this.phone = phonenumber;        
        this.postalCode = postalCode;
        this.address = address;
        this.role = role;
    }
    
    //constructor without id, which is used to create the user object, where the id is genereated in the MySQL database
      public User(String email, String password, String phonenumber, String postalCode, String address, String role) {
        this.email = email;
        this.password = password;
        this.phone = phonenumber;
        this.postalCode = postalCode;
        this.address = address;
        this.role = role;
    }


    public String getPhonenumber() {
        return phone;
    }

    public void setPhonenumber(String phonenumber) {
        this.phone = phonenumber;
    }
    

    public User() { //used for testing purposes on Java Bean Entities

    }

    public String getPostalCode() {
        return postalCode; 
    }

    public void setPostalCode(String postalCode) {
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
