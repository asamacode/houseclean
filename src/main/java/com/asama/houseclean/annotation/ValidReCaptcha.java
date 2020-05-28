package com.asama.houseclean.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

import com.asama.houseclean.validator.ReCaptchaConstraintValidator;

@Documented
@Constraint(validatedBy = ReCaptchaConstraintValidator.class)
@Target({ElementType.TYPE, ElementType.FIELD, ElementType.ANNOTATION_TYPE})
@Retention(RetentionPolicy.RUNTIME)
public @interface ValidReCaptcha {

    String message() default "Captcha không hợp lệ !";
    
    Class<?>[] groups() default {};
    
    Class<? extends Payload>[] payload() default {};
}
