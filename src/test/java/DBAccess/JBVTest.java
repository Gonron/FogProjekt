//package DBAccess;
//
///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//
//
//import FunctionLayer.User;
//import java.text.DateFormat;
//import java.text.SimpleDateFormat;
//import java.util.Set;
//import javax.validation.ConstraintViolation;
//import javax.validation.Validation;
//import org.junit.After;
//import org.junit.AfterClass;
//import org.junit.Before;
//import org.junit.BeforeClass;
//import org.junit.Test;
//import static org.junit.Assert.*;
//import javax.validation.Validator;
//import static org.hamcrest.CoreMatchers.is;
//import org.junit.Assert.*;
//
///**
// *
// * @author kristoffer
// */
//public class JBVTest {
//    
//    private Validator validator = Validation.buildDefaultValidatorFactory().getValidator();
//    private DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
//    
//    public JBVTest() {
//    }
//    
//    @BeforeClass
//    public static void setUpClass() {
//    }
//    
//    @AfterClass
//    public static void tearDownClass() {
//    }
//    
//    @Before
//    public void setUp() {
//    }
//    
//    @After
//    public void tearDown() {
//    }
//
//    
//    @Test 
//    public void userPOJOTest_whenPasswordIsNull(){
//        
//        User user1 = new User();
//        user1.setEmail("");
//            Set<ConstraintViolation<User>> violation =validator.validateProperty(user1, "password");
//        assertTrue(violation.isEmpty());
//     
//    }
//
// 
//}
