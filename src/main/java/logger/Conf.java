/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logger;

import java.util.logging.Logger;

/**
 *
 * @author Martin
 */
 
public class Conf {
    public static final boolean PRODUCTION = true;
    public static final String LOGFILEPATH = "/var/log/tomcat8/demoApp.log";
    //her tilføjet vi navnet på klassen som navnet til loggeren
    public static final Logger MYLOGGER = Logger.getLogger(Conf.class.getName());
}
