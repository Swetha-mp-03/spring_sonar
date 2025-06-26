package com.example.controller;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;
import org.junit.jupiter.api.extension.ExtendWith;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations = {"classpath:DispatcherServlet.xml"})
public class FormControllerTest {

    @Autowired
    private WebApplicationContext webApplicationContext;

    private MockMvc mockMvc;

    @BeforeEach
    public void setup() {
        mockMvc = MockMvcBuilders.webAppContextSetup(webApplicationContext).build();
    }

    @Test
    public void testValidFormSubmission() throws Exception {
        mockMvc.perform(post("/submit")
                        .param("name", "John Doe")
                        .param("email", "johndoe@example.com")
                        .param("gender", "Male")
                        .param("country", "USA")
                        .param("agreeToTerms", "true"))
                .andExpect(status().isOk())
                .andExpect(view().name("result"))
                .andExpect(model().attributeExists("sanitizedUserName"));
    }

    @Test
    public void testInvalidFormSubmission() throws Exception {
        mockMvc.perform(post("/submit")
                        .param("name", "") // Empty name triggers validation error
                        .param("email", "invalid-email") // Invalid email
                        .param("gender", "")
                        .param("country", "")
                        .param("agreeToTerms", "false"))
                .andExpect(status().isOk())
                .andExpect(view().name("form")) // Returns to form view
                .andExpect(model().attributeHasFieldErrors("user", "name", "email", "gender", "country", "agreeToTerms"));
    }

}
