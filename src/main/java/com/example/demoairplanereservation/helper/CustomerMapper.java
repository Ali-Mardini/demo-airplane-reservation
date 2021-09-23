package com.example.demoairplanereservation.helper;

import com.example.demoairplanereservation.model.Customer;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.UUID;

public class CustomerMapper implements RowMapper<Customer> {
    public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
        Customer customer = new Customer(
                UUID.fromString(rs.getString("customerId")),
                rs.getString("firstName"),
                rs.getString("lastName"),
                rs.getInt("age"),
                rs.getString("email"),
                rs.getString("mobile"),
                rs.getString("nationality"),
                rs.getString("address")
        );

        return customer;
    }
}
