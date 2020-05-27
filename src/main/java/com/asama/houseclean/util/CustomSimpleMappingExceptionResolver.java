package com.asama.houseclean.util;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpStatus;
import org.springframework.web.client.HttpServerErrorException.InternalServerError;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;
import org.springframework.web.servlet.handler.SimpleMappingExceptionResolver;

public class CustomSimpleMappingExceptionResolver extends SimpleMappingExceptionResolver {

    public CustomSimpleMappingExceptionResolver() {
        // Turn logging on by default
        setWarnLogCategory(getClass().getName());
    }

    @Override
    public String buildLogMessage(Exception e, HttpServletRequest req) {
        return "MVC exception: " + e.getLocalizedMessage();
    }

    @Override
    protected ModelAndView doResolveException(HttpServletRequest request, HttpServletResponse response,
                                              Object handler, Exception ex) {

        // Log exception
        ex.printStackTrace();
        String exceptionType = ex.getClass().getCanonicalName();

        // Get the ModelAndView to use
        ModelAndView mav = super.doResolveException(request, response, handler, ex);

        // Make more information available to the view - note that SimpleMappingExceptionResolver adds the exception already
        mav.addObject("url", request.getRequestURL());
        mav.addObject("timestamp", new Date());

        ArrayList<String> exceptions404 = new ArrayList<String>(
                Arrays.asList(
                        NoHandlerFoundException.class.getName()
                        )
        );
        ArrayList<String> exceptions500 = new ArrayList<String>(
                Arrays.asList(
                        InternalServerError.class.getName(),
                        NullPointerException.class.getName()
                        )
        );

        if (exceptions404.contains(exceptionType)) {
            mav.setViewName("errors/404");
            mav.addObject("status", HttpStatus.NOT_FOUND.value());
        } else if (exceptions500.contains(exceptionType)) {
            mav.setViewName("errors/500");
            mav.addObject("status", HttpStatus.INTERNAL_SERVER_ERROR.value());
        } else {
            mav.setViewName("errors/error");
            mav.addObject("status", response.getStatus());
        }
        return mav;
    }
}