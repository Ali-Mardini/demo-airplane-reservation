package com.example.demoairplanereservation.api;

import com.example.demoairplanereservation.model.dto.ReservationDto;
import com.example.demoairplanereservation.service.ReservationService;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.RequestBuilder;
import org.springframework.test.web.servlet.ResultMatcher;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;

import static net.bytebuddy.matcher.ElementMatchers.is;
import static org.junit.jupiter.api.Assertions.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@SpringBootTest
@ActiveProfiles("test")
class ReservationControllerTest {
    private MockMvc mvc;

    @Autowired
    public ReservationController reservationController;

    @MockBean
    public ReservationService reservationService;
    private ObjectMapper objectMapper = new ObjectMapper();

    @BeforeEach
    public void setUp(){
        mvc = MockMvcBuilders.standaloneSetup(reservationController).build();
    }

    @Test
    void createReservation() throws Exception {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-dd-MM");
        //Parsing the given String to Date object
        Date date = formatter.parse("2021-09-23");

        ReservationDto reservationDto = new ReservationDto("C26",date,"first class",
                "noraml","Na","confirmed","+9715012345678","DXB",
                "EK-480");

        mvc.perform(post("/api/v1/reservation/book")
                .contentType(MediaType.APPLICATION_JSON_VALUE)
                .content(objectMapper.writeValueAsBytes(reservationDto))
        ).andExpect(status().is(201));

    }
}