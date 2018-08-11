package in.myproject.test.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

/**
 *
 * @author Sayan
 */
public class CorsDomain extends HandlerInterceptorAdapter {

    //after the handler is executed

    @Override
    public boolean preHandle(HttpServletRequest request,
            HttpServletResponse response, Object handler)
            throws Exception {

        response.addHeader("Access-Control-Allow-Origin", "*");
        response.addHeader("Access-Control-Allow-Methods", "GET,HEAD,POST,PUT,DELETE,TRACE,OPTIONS,PATCH");
        response.addHeader("Access-Control-Allow-Headers", "Content-Type,x-requested-with");
        response.addHeader("Access-Control-Max-Age", "600");
        return true;
    }
}
