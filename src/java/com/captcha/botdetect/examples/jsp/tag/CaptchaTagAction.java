/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author USER
 */
package com.captcha.botdetect.examples.jsp.tag;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.captcha.botdetect.web.servlet.Captcha;

public class CaptchaTagAction extends HttpServlet {

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {

    Map<String, String> messages = new HashMap<String, String>();
    request.setAttribute("messages", messages);

    // validate the Captcha to check we're not dealing with a bot
    Captcha captcha = Captcha.load(request, "exampleCaptchaTag");
    boolean isHuman = captcha.validate(request.getParameter("captchaCode"));
    if (!isHuman) {
      // Captcha validation failed, show error message
      messages.put("captchaIncorrect", "Incorrect code");
    } else {
      // Captcha validation passed, perform protected action
      messages.put("captchaCorrect", "Correct code");
    }

    RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Catcha.jsp");
    dispatcher.forward(request, response);
  }
}
