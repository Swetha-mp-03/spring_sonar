package com.example.model;

import com.example.annotations.ValidName;
import javax.validation.constraints.*;

public class User {

//    @NotBlank(message = "Name is required.")
//    @Pattern(regexp = "^[A-Za-z\\s]+$", message = "Name must contain only letters and spaces.")
//    private String name;

    @NotBlank(message = "Name is required.")
    @ValidName
    private String name;

    @NotBlank(message = "Email is required.")
    @Email(message = "Enter a valid email address.")
    private String email;

    @AssertTrue(message = "You must agree to the terms and conditions.")
    private boolean agreeToTerms;

    @NotBlank(message = "Gender selection is required.")
    private String gender;

    @NotBlank(message = "Country selection is required.")
    private String country;

    // Getters and Setters
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isAgreeToTerms() {
        return agreeToTerms;
    }

    public void setAgreeToTerms(boolean agreeToTerms) {
        this.agreeToTerms = agreeToTerms;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }
}
