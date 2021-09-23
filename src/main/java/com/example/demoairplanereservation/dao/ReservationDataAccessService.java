package com.example.demoairplanereservation.dao;

import com.example.demoairplanereservation.helper.AirportMapper;
import com.example.demoairplanereservation.helper.CustomerMapper;
import com.example.demoairplanereservation.helper.FlightMapper;
import com.example.demoairplanereservation.model.Airport;
import com.example.demoairplanereservation.model.Customer;
import com.example.demoairplanereservation.model.Flight;
import com.example.demoairplanereservation.model.Reservation;
import com.example.demoairplanereservation.model.dto.ReservationDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository("reservationRepo")
public class ReservationDataAccessService implements ReservationDao{

    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public ReservationDataAccessService(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    /**
     * Method to create reservation in database
     * @param id GUID
     * @param reservation reservation details
     * @return (1,0)
     */
    @Override
    public int createReservation(UUID id, ReservationDto reservation) {

        final String sql = ""+
                "INSERT INTO reservations(" +
                "reservationid, seat, reservationdate, class, type, extra, reservationstate, customerid, airportid, flightid)" +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";

        // generate guid
        UUID reservationId = UUID.randomUUID();

        // get customer id
        UUID customerId = getCustomerByName(reservation.getCustomerMobile());

        // get airport id
        UUID airportId = getAirportByName(reservation.getAirportName());

        // get flight id
        UUID flightId = getFlightByCode(reservation.getFlightCode());

        return jdbcTemplate.update(sql,reservationId,reservation.getSeat(),reservation.getReservationDate(),
                reservation.getReservationClass(), reservation.getType(),reservation.getExtra(),reservation.getReservationState(),
                customerId,airportId,flightId);
    }

    /**
     * Method to get flight Id by flight code
     * @param flightCode
     * @return (guid)
     */
    @Override
    public UUID getFlightByCode(String flightCode) {

        final String sql = "SELECT * FROM flights WHERE flightCode = ?";

        Flight flight = jdbcTemplate.queryForObject(sql, new FlightMapper(),flightCode);

        return flight.getFlightId();
    }

    /**
     * Method to get customer id by mobile number
     * @param customerMobile
     * @return (guid)
     */
    @Override
    public UUID getCustomerByName(String customerMobile) {

        final String sql = "SELECT * FROM customers WHERE mobile = ?";

        Customer customer = jdbcTemplate.queryForObject(sql, new CustomerMapper(),customerMobile);

        return customer.getCustomerId();
    }

    /**
     * Method to get airport id by airport name
     * @param airportName
     * @return (guid)
     */
    @Override
    public UUID getAirportByName(String airportName) {
        final String sql = "SELECT * FROM airports WHERE airportName = ?";

        Airport airport = jdbcTemplate.queryForObject(sql, new AirportMapper(),airportName);

        return airport.getAirportId();
    }
}
