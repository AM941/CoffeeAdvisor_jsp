/**
 *
 * @author : am:941
 * e-mail  : mpousdra@inf.uth.gr
 */
 	

package com.example.web;

import com.example.model.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;

public class CoffeeSelect extends HttpServlet {

  @Override
  public void doPost(HttpServletRequest request, 
                       HttpServletResponse response)
                       throws IOException, ServletException {

    String c = request.getParameter("type");

    CoffeeExpert co = new CoffeeExpert();

    List result = co.getTypes(c);

    request.setAttribute("styles", result);
    RequestDispatcher view = request.getRequestDispatcher("result.jsp");
    view.forward(request, response);
  }
}