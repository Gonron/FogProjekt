/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBAccess;

import FunctionLayer.Calculator;
import org.junit.After;
import org.junit.AfterClass;
import static org.junit.Assert.assertEquals;
import org.junit.Before;
import org.junit.BeforeClass;

/**
 *
 * @author kristoffer
 */
public class JUnitBeanTest {
    
    public JUnitBeanTest() {
    }
    
  public void testJavaBeans(){
      
      
  //nedenfor tester vi java Beans metoder, det vil sige de egentlige udregninger, der sker på server-site, når kundne indtaster sine input. 
  //vi har lavet vores input således, at der vil være nogle metoder, der ændrer sig

  Calculator calc = new Calculator();
  
  
  double userInput = 450; // 450 cm dvs. kunden vil have en caport, som er 4.5 m lang
  double lengthPrUnit = 5.5;
  int output =calc.calculatePlanks(450, 5.5);
  assertEquals(4, output);
    
}
}
