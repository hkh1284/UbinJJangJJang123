package com.ssafy.khyb.controller.exceptions;

import jakarta.servlet.http.HttpServletResponse;

public class HttpBadRequestException extends HttpException {
    public HttpBadRequestException(HttpServletResponse resp, String message) {
        super(resp, 400, String.format("Bad request > %s", message));
    }
}
