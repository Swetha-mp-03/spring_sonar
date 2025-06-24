package com.example.annotations;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class NameValidator implements ConstraintValidator<ValidName, String> {

    @Override
    public boolean isValid(String value, ConstraintValidatorContext context) {
        // Validate if the name is alphabetic with spaces
        return value != null && value.matches("^[A-Za-z\\s]+$");
    }
}
