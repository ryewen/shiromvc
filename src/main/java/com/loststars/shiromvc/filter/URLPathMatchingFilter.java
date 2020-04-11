package com.loststars.shiromvc.filter;

import java.io.IOException;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.PathMatchingFilter;
import org.apache.shiro.web.util.WebUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.loststars.shiromvc.service.ShiroDAOService;

public class URLPathMatchingFilter extends PathMatchingFilter {

    @Autowired
    private ShiroDAOService shiroDAOService;
    
    @Override
    protected boolean onPreHandle(ServletRequest request, ServletResponse response, Object mappedValue) throws IOException {
        String requestURI = getPathWithinApplication(request).substring(1);
        Subject subject = SecurityUtils.getSubject();
        if (! subject.isAuthenticated()) {
            WebUtils.issueRedirect(request, response, "/login");
            return false;
        }
        boolean needInterceptor = shiroDAOService.listPermissions().contains(requestURI);
        if (! needInterceptor) {
            return true;
        } else {
            boolean hasPermission = false;
            String userName = subject.getPrincipal().toString();
            hasPermission = shiroDAOService.listPermissions(userName).contains(requestURI);
            if (hasPermission) {
                return true;
            } else {
                WebUtils.issueRedirect(request, response, "/nopermission");
                return false;
            }
        }
    }
}
