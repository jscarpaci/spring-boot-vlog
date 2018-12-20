package com.jmsmobile.vl.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import com.jmsmobile.vl.util.Settings;
import org.springframework.validation.Validator;

@Component
public class SettingsValidator implements Validator {

    public boolean supports(Class<?> clazz) {
       return Settings.class.isAssignableFrom(clazz);
    }

    public void validate(Object target, Errors errors) {
       ValidationUtils.rejectIfEmptyOrWhitespace(errors, "recentVideoInterval", "field.required");
       ValidationUtils.rejectIfEmptyOrWhitespace(errors, "facesFoundLastSeveralDays", "field.required");
       ValidationUtils.rejectIfEmptyOrWhitespace(errors, "greeting", "field.required");
       Settings settings = (Settings) target;
       if (settings.getFacesFoundLastSeveralDays() < 1) {
         errors.rejectValue("facesFoundLastSeveralDays", "field.must.be.greater.than.zero");
       }


    }
 }
