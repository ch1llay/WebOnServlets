package servlets;
import javax.servlet.*;

import javax.servlet.http.*;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

public class MyServlet extends HttpServlet {

    @Override

    public void doGet(HttpServletRequest request, HttpServletResponse response)

            throws IOException, ServletException {

        String path = "/index.jsp";

        ServletContext servletContext = getServletContext();

        RequestDispatcher requestDispatcher = servletContext.getRequestDispatcher(path);

        requestDispatcher.forward(request, response);
    }
}
