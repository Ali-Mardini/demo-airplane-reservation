package com.example.demoairplanereservation.helper;

import com.example.demoairplanereservation.model.Flight;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.UUID;

public class FlightMapper implements RowMapper<Flight> {
    public Flight mapRow(ResultSet rs, int rowNum) throws SQLException{
        Flight flight = new Flight(
                UUID.fromString(rs.getString("flightId")),
                rs.getString("flightCode"),
                rs.getString("type"),
                rs.getString("origin"),
                rs.getString("destination"),
                rs.getString("manufacture"),
                rs.getInt("maxCapacity"),
                rs.getDate("etd"),
                rs.getDate("eta"),
                rs.getDate("atd"),
                rs.getDate("ata"),
                rs.getString("status")
        );

        return flight;
    }

}
