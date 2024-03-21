package com.ssafy.khyb.controller.exceptions;

import jakarta.servlet.http.HttpServletResponse;

public class HttpException extends RuntimeException {
    public HttpException(HttpServletResponse resp, int statusCode, String message) {
        super(String.format("Exception with status code %d : %s", statusCode, message));
        resp.setStatus(statusCode);
    }
}
