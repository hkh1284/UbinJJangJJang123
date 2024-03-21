package com.ssafy.khyb.controller.exceptions.bad_request;

import com.ssafy.khyb.controller.exceptions.HttpBadRequestException;
import jakarta.servlet.http.HttpServletResponse;

public class UnknownActionException extends HttpBadRequestException {
    public UnknownActionException(HttpServletResponse resp, String actionName) {
        super(resp, String.format("Unknown action: %s", actionName));
    }
}
