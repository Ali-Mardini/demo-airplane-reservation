package com.example.demoairplanereservation.model;

import java.util.UUID;

public class Customer {
    private final UUID customerId;
    private final String firstName;
    private final String lastName;
    private final int age;
    private final String email;
    private final String mobile;
    private final String nationality;
    private final String address;


    public Customer(UUID customerId, String firstName, String lastName, int age, String email, String mobile,
                    String nationality, String address) {
        this.customerId = customerId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;
        this.email = email;
            this.mobile = mobile;
        this.nationality = nationality;
        this.address = address;
    }

    public UUID getCustomerId() {
        return customerId;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public int getAge() {
        return age;
    }

    public String getEmail() {
        return email;
    }

    public String getMobile() {
        return mobile;
    }

    public String getNationality() {
        return nationality;
    }

    public String getAddress() {
        return address;
    }
}
