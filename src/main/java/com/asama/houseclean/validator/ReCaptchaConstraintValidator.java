package com.asama.houseclean.validator;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.springframework.beans.factory.annotation.Autowired;

import com.asama.houseclean.annotation.ValidReCaptcha;
import com.asama.houseclean.service.ReCaptchaService;

public class ReCaptchaConstraintValidator implements ConstraintValidator<ValidReCaptcha, String> {

    @Autowired
    private ReCaptchaService reCaptchaService;

    @Override
    public void initialize(ValidReCaptcha constraintAnnotation) {

    }

    @Override
    public boolean isValid(String reCaptchaResponse, ConstraintValidatorContext context) {
        if (reCaptchaResponse == null || reCaptchaResponse.isEmpty()) {
            return true;
        }

        return reCaptchaService.validate(reCaptchaResponse);
    }

}
