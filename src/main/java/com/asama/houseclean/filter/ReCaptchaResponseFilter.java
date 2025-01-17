package com.asama.houseclean.filter;

import java.io.IOException;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;

@Component
public class ReCaptchaResponseFilter implements Filter {

    private static final String RE_CAPTCHA_ALIAS = "reCaptchaResponse";
    private static final String RE_CAPTCHA_RESPONSE = "g-recaptcha-response";

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;

        if (req.getParameter(RE_CAPTCHA_RESPONSE) != null) {
            ReCaptchaHttpServletRequest reCaptchaRequest = new ReCaptchaHttpServletRequest(req);
            chain.doFilter(reCaptchaRequest, res);
        } else {
            chain.doFilter(req, res);
        }
    }

    @Override
    public void destroy() {

    }

    private static class ReCaptchaHttpServletRequest extends HttpServletRequestWrapper {

        final Map<String, String[]> params;

        ReCaptchaHttpServletRequest(HttpServletRequest request) {
            super(request);
            params = new HashMap<>(request.getParameterMap());
            params.put(RE_CAPTCHA_ALIAS, request.getParameterValues(RE_CAPTCHA_RESPONSE));
        }

        @Override
        public String getParameter(String name) {
            return params.containsKey(name) ? params.get(name)[0] : null;
        }

        @Override
        public Map<String, String[]> getParameterMap() {
            return params;
        }

        @Override
        public Enumeration<String> getParameterNames() {
            return Collections.enumeration(params.keySet());
        }

        @Override
        public String[] getParameterValues(String name) {
            return params.get(name);
        }
    }
}
