package com.example.demoairplanereservation.model;

import java.util.UUID;

public class Airport {
    private final UUID airportId;
    private final String airportName;
    private final String city;
    private final String country;
    private final String status;

    public Airport(UUID airportId, String airportName, String city, String country, String status) {
        this.airportId = airportId;
        this.airportName = airportName;
        this.city = city;
        this.country = country;
        this.status = status;
    }


    public UUID getAirportId() {
        return airportId;
    }

    public String getAirportName() {
        return airportName;
    }

    public String getCity() {
        return city;
    }

    public String getCountry() {
        return country;
    }

    public String getStatus() {
        return status;
    }
}
