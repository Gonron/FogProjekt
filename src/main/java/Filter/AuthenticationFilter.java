/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Filter;

/**
 *
 * @author kristoffer
 */
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@WebFilter(urlPatterns = "/LogInSample/FrontController?command=createorder") // i tuborgklammerne skal alle servletter der skal konfigureres skrives
public class AuthenticationFilter implements Filter {
    
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        
    }
    
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
       //pre-processing (ting der sker inden filteret bliver taget i brug)
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        //nedenfor checker for hvilke servlets, der skal filtreres inden en bruger kan tilgå dem
        // vi bruger eller operatøren (||), for at tjekke hvert nødvendigt URI
        if (httpRequest.getRequestURI().startsWith("/LogInSample/FrontController?command=createorder")
                || httpRequest.getRequestURI().startsWith("/customerpage")) {
            HttpSession session = httpRequest.getSession();
            System.out.println("inde i authentication filter");
            if (session.getAttribute("user") == null) {
                request.getRequestDispatcher("/login").forward(request, response);
            }
            
        }
        
        chain.doFilter(request, response);
        System.out.println("efter do filter");
        //post-processing kommer efter denne kommentar
        
    }
    
    @Override
    public void destroy() {
        
    }
    
}