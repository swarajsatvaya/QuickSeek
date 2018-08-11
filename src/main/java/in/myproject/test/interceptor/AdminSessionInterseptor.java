/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.interceptor;

import in.myproject.test.dto.Status;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

/**
 *
 * @author @sayan saha
 */
public class AdminSessionInterseptor extends HandlerInterceptorAdapter {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();
        Status user = (Status) session.getAttribute("superUser");
        if (user == null) {
            String context = request.getServletContext().getContextPath();
            response.sendRedirect(context + "/admin");
            return false;
        }
        return true;
    }
}
