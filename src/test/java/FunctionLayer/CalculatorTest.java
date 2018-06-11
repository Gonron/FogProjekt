/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FunctionLayer;

import java.util.ArrayList;
import java.util.Random;
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

    Calculator calc;
    double plankLength;
    double userLength;
    double userWidth;

    @BeforeClass
    public static void setUpClass() {
    }

    @AfterClass
    public static void tearDownClass() {
    }

    @Before
    public void setUp() {
        calc = new Calculator();
        plankLength = 360;
        userLength = 780;
        userWidth = 600;
    }

    @After
    public void tearDown() {
    }

    @Test
    public void testCalculatePlanksLength() {
        int expResult = 6;
        int result = calc.calculatePlanks(userLength, plankLength);
        assertEquals(expResult, result);

    }

    @Test
    public void testCalculatePlanksWidth() {
        int expResult = 5;
        int result = calc.calculatePlanks(userWidth, plankLength);
        assertEquals(expResult, result);
    }

    @Test
    public void testCalculatePostsWithoutShed() {
        boolean shed = false;
        int expResult = 6;
        int result = calc.calculatePosts(userLength, userWidth, shed);
        assertEquals(expResult, result);
    }

    @Test
    public void testCalculatePostsWithShed() {
        boolean shed = true;
        int expResult = 10;
        int result = calc.calculatePosts(userLength, userWidth, shed);
        assertEquals(expResult, result);
    }

    @Test
    public void testCalculatePrice() {
        OrderLine ol = new OrderLine(0, "planke", 0, 200, "desc", 14, 0);
        int expResult = 2800;
        int result = calc.calculatePrice(ol);
        assertEquals(expResult, result);
    }

    @Test
    public void testCalculatePriceManyOrderLines() {
        ArrayList<OrderLine> OList;
        OList = new ArrayList();

        for (int i = 0; i < 10; i++) {
            OList.add(new OrderLine(i, "Plank", 0, 200, "description", 20, 0));

        }
        int result = 0;
        int expResult = 40000;
        for (int i = 0; i < OList.size(); i++) {
            result += calc.calculatePrice(OList.get(i));
        }

        assertEquals(expResult, result);
    }

    @Test
    public void testCalculateRafter() {
        int expResult = 13;
        int result = calc.calculateRafter(userLength, userWidth);
        assertEquals(expResult, result);
    }

    @Test
    public void testCalculateNails() {
        int expResult = 5;
        int result = calc.calculateNails(userLength, userWidth);
        assertEquals(expResult, result);
    }

    @Test
    public void testCalculateBrackets() {
        int expResult = 60;
        int result = calc.calculateBrackets(userLength, plankLength);
        assertEquals(expResult, result);
    }

    @Test
    public void testCalculateShedPlanksWithShed() {
        int expResult = 398;
        int result = calc.calculateShedplanks(userWidth, true);
        assertEquals(expResult, result);
    }
    
    @Test
    public void testCalculateShedPlanksWithoutShed() {
        int expResult = 0;
        int result = calc.calculateShedplanks(userWidth, false);
        assertEquals(expResult, result);
    }

}
