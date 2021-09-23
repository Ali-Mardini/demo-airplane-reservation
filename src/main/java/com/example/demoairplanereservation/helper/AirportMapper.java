package com.example.demoairplanereservation.helper;

import com.example.demoairplanereservation.model.Airport;
import com.example.demoairplanereservation.model.Customer;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.UUID;

public class AirportMapper implements RowMapper<Airport> {
    public  Airport mapRow(ResultSet rs, int rowNum) throws SQLException{
        Airport airport = new Airport(
                UUID.fromString(rs.getString("airportId")),
                rs.getString("airportName"),
                rs.getString("city"),
                rs.getString("country"),
                rs.getString("status")
        );

        return airport;
    }
}
