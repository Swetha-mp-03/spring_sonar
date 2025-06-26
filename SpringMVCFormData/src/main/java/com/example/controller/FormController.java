package com.example.controller;

import com.example.model.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;


import javax.validation.Valid;
import org.apache.commons.text.StringEscapeUtils;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class FormController {
    private static final Logger logger = LoggerFactory.getLogger(FormController.class);

    @PostMapping(value = "/submit")
    public String handleFormSubmission(
            @Valid @ModelAttribute("user") User user,
            BindingResult result,
            Model model) {
        if (result.hasErrors()) {
            logger.error("Validation failed: {}", result.getAllErrors());
            return "form";
        }

        String sanitizedName = sanitize(user.getName());
        logger.info("Form submitted successfully.");

        model.addAttribute("sanitizedUserName", sanitizedName);
        return "result";
    }

    private String sanitize(String input) {
        if (input == null) {
            return null;
        }
        return StringEscapeUtils.escapeHtml4(input);
    }
}
