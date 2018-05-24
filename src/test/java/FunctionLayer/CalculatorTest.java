/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FunctionLayer;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author User
 */
public class CalculatorTest {

    public CalculatorTest() {
    }

    @BeforeClass
    public static void setUpClass() {
    }

    @AfterClass
    public static void tearDownClass() {
    }

    @Before
    public void setUp() {
    }

    @After
    public void tearDown() {
    }

    @Test
    public void testCalculatePlanksLength() {
        double userLength = 780.0;
        double lengthPrUnit = 360.0;
        Calculator calc = new Calculator();
        int expResult = 6;
        int result = calc.calculatePlanks(userLength, lengthPrUnit);
        assertEquals(expResult, result);
    }

    @Test
    public void testCalculatePlanksWidth() {
        double userLength = 600.0;
        double lengthPrUnit = 360.0;
        Calculator calc = new Calculator();
        int expResult = 5;
        int result = calc.calculatePlanks(userLength, lengthPrUnit);
        assertEquals(expResult, result);
    }

    @Test
    public void testCalculatePostsWithoutShed() {
        double userLength = 780.0;
        double userwidth = 600.0;
        boolean shed = false;
        Calculator calc = new Calculator();
        int expResult = 6;
        int result = calc.calculatePosts(userLength, userwidth, shed);
        assertEquals(expResult, result);
    }

    @Test
    public void testCalculatePostsWithShed() {
        double userLength = 780.0;
        double userwidth = 600.0;
        boolean shed = true;
        Calculator calc = new Calculator();
        int expResult = 10;
        int result = calc.calculatePosts(userLength, userwidth, shed);
        assertEquals(expResult, result);
    }

    @Test
    public void testCalculatePrice() {
        OrderLine ol = new OrderLine(0, "planke", 0, 200, "Ed Bois", 14, 0);
        Calculator instance = new Calculator();
        int expResult = 2800;
        int result = instance.calculatePrice(ol);
        assertEquals(expResult, result);
    }

    @Test
    public void testCalculatePriceManyOrderLines() {
        OrderLine ol = new OrderLine(0, "planke", 0, 200, "Ed Bois", 14, 0); 
        OrderLine ol01 = new OrderLine(0, "planke", 0, 20, "Ed Bois", 12, 0);
        OrderLine ol02 = new OrderLine(0, "planke", 0, 1, "Ed Bois", 150, 0);
        OrderLine ol03 = new OrderLine(0, "planke", 0, 12, "Ed Bois", 2, 0); 
        OrderLine ol04 = new OrderLine(0, "planke", 0, 10, "Ed Bois", 4, 0); 
        OrderLine ol05 = new OrderLine(0, "planke", 0, 6, "Ed Bois", 6, 0); 

        Calculator instance = new Calculator();
        int expResult = 3290;
        int result = instance.calculatePrice(ol) + instance.calculatePrice(ol01)
                + instance.calculatePrice(ol02) + instance.calculatePrice(ol03)
                + instance.calculatePrice(ol04) + instance.calculatePrice(ol05);
        assertEquals(expResult, result);
    }

}
