package com.asama.houseclean.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice
public class MyErrorController implements ErrorController {

    @Override
    public String getErrorPath() {
        return "/error";
    }
    
    @RequestMapping("/error")
    @ExceptionHandler(value = NoHandlerFoundException.class)
    public String handleError(HttpServletRequest request) {
        Object status = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);

        if (status != null) {
            Integer statusCode = Integer.valueOf(status.toString());

            if (statusCode == HttpStatus.NOT_FOUND.value()) {
                return "errors/404";
            } else if (statusCode == HttpStatus.INTERNAL_SERVER_ERROR.value()) {
                return "errors/500";
            } else if (statusCode == HttpStatus.FORBIDDEN.value()) {
                return "errors/403";
            }
        }
        return "errors/error";
    }
    
    @RequestMapping("/unauthorized")
    public String handleErrorUnAuthorize(HttpServletRequest request) {
        return "errors/403";
    }

}
