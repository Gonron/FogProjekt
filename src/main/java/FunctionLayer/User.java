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
    private byte[] password; // Should be hashed and all
    private String role;
    private String postalCode;
    private String address;
    private byte[] salt;
    
    //the "real" constructor which has all the parameters nedded to create the object
    public User(int id, String email, byte[] password, String phonenumber, String postalCode, String address, String role, byte[] salt) {
        this.id = id;        
        this.email = email;
        this.password = password;
        this.phone = phonenumber;        
        this.postalCode = postalCode;
        this.address = address;
        this.role = role;
        this.salt = salt;
    }
    
    //constructor without id, which is used to create the user object, where the id is genereated in the MySQL database

      public User(String email, byte[] password, String phonenumber, String postalCode, String address, String role, byte[] salt) {
        this.email = email;
        this.password = password;
        this.phone = phonenumber;
        this.postalCode = postalCode;
        this.address = address;
        this.role = role;
        this.salt = salt;
    }
     /**
      * Used to show Users to employees
      * @param id
      * @param phone
      * @param email
      * @param postalCode
      * @param address 
      */
    public User(int id, String phone, String email, String postalCode, String address) {
        this.id = id;
        this.phone = phone;
        this.email = email;
        this.postalCode = postalCode;
        this.address = address;
    }

    public User(int id, String phone, String email, String address, String postalCode, String role, byte[] salt) {
        this.id = id;
        this.phone = phone;
        this.email = email;
        this.role = role;
        this.postalCode = postalCode;
        this.address = address;
        this.salt = salt;
    }

    

    public String getPhonenumber() {
        return phone;
    }

    public byte[] getSalt() {
        return salt;
    }

    public void setSalt(byte[] salt) {
        this.salt = salt;
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

    @Override
    public String toString() {
        return "Kunde:" + "id=" + id + ", phone=" + phone + ", email=" + email + ", postalCode=" + postalCode + ", address=" + address;
    }

}
