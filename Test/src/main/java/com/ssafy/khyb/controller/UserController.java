package com.ssafy.khyb.controller;

import com.ssafy.khyb.controller.exceptions.bad_request.NoRequiredParameterException;
import com.ssafy.khyb.controller.exceptions.bad_request.UnknownActionException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/user")
public class UserController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");

        if (action == null) {
            throw new NoRequiredParameterException(resp, new String[]{"action"});
        } else if (action.equals("logout")) {
            System.out.println("Logout action triggered");
        } else {
            throw new UnknownActionException(resp, action);
        }
    }
}
