package com.example.demoairplanereservation.model;

import java.util.Date;
import java.util.UUID;

public class Flight {
    private final UUID flightId;
    private final String flightCode;
    private final String type;
    private final String origin;
    private final String destination;
    private final String manufacture;
    private final int maxCapacity;
    private final Date etd;
    private final Date eta;
    private final Date atd;
    private final Date ata;
    private final String status;

    public Flight(UUID flightId, String flightCode, String type, String origin, String destination, String manufacture, int maxCapacity, Date etd, Date eta, Date atd, Date ata, String status) {
        this.flightId = flightId;
        this.flightCode = flightCode;
        this.type = type;
        this.origin = origin;
        this.destination = destination;
        this.manufacture = manufacture;
        this.maxCapacity = maxCapacity;
        this.etd = etd;
        this.eta = eta;
        this.atd = atd;
        this.ata = ata;
        this.status = status;
    }

    public String getFlightCode() {
        return flightCode;
    }

    public UUID getFlightId() {
        return flightId;
    }

    public String getType() {
        return type;
    }

    public String getOrigin() {
        return origin;
    }

    public String getDestination() {
        return destination;
    }

    public String getManufacture() {
        return manufacture;
    }

    public int getMaxCapacity() {
        return maxCapacity;
    }

    public Date getEtd() {
        return etd;
    }

    public Date getEta() {
        return eta;
    }

    public Date getAtd() {
        return atd;
    }

    public Date getAta() {
        return ata;
    }

    public String getStatus() {
        return status;
    }
}
