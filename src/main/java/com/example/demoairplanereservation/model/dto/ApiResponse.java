package com.example.demoairplanereservation.model.dto;

public class ApiResponse {
    private final String success;
    private final String message;

    public ApiResponse(String success, String message) {
        this.success = success;
        this.message = message;
    }

    public String getSuccess() {
        return success;
    }

    public String getMessage() {
        return message;
    }
}
