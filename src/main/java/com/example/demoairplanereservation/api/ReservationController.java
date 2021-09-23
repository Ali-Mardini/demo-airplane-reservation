package com.example.demoairplanereservation.api;

import com.example.demoairplanereservation.model.Reservation;
import com.example.demoairplanereservation.model.dto.ApiResponse;
import com.example.demoairplanereservation.model.dto.ReservationDto;
import com.example.demoairplanereservation.service.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

@RequestMapping("api/v1/reservation")
@RestController
public class ReservationController {

    // reservation service
    private final ReservationService reservationService;

    @Autowired
    public ReservationController(ReservationService reservationService) {
        this.reservationService = reservationService;
    }

    /**
     * Method to create a reservation
     * @param reservation
     * @return (201 created, 500 server internal error)
     */
    @RequestMapping(value = "/book",method = RequestMethod.POST)
    public ResponseEntity<ApiResponse> createReservation(@RequestBody ReservationDto reservation){
        try{
            int result = reservationService.createReservation(reservation);

            ApiResponse response = new ApiResponse("true","your reservation has been created successfully!");
            return ResponseEntity.status(HttpStatus.CREATED).body(response);
        }
        catch (Exception ex){
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR,"Something went wrong please try again later!",
                    ex);
        }

    }
}
