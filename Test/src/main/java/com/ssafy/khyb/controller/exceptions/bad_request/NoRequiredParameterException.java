package com.ssafy.khyb.controller.exceptions.bad_request;

import com.ssafy.khyb.controller.exceptions.HttpBadRequestException;
import jakarta.servlet.http.HttpServletResponse;

public class NoRequiredParameterException extends HttpBadRequestException {
    public NoRequiredParameterException(HttpServletResponse resp, String[] requiredFields) {
        super(resp, String.format("Request with required parameters: %s", String.join(", ", requiredFields)));
    }
}
