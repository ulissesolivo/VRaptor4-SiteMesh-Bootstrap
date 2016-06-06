/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ulisses.app.controllers;

import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Message;
import br.com.caelum.vraptor.validator.Severity;
import br.com.caelum.vraptor.validator.SimpleMessage;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.inject.Inject;
import javax.json.Json;
import javax.json.JsonArrayBuilder;
import javax.json.JsonObjectBuilder;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author uliss
 */
public class MsgController {

  @Inject
  private Result result;
  @Inject
  private HttpServletResponse response;

  public void json() {

  }

  public void json(String texto) {
    result.forwardTo(this).json(texto, Severity.INFO);
  }

  public void json(String texto, Severity severity) {
    result.forwardTo(this).json(Arrays.asList(new SimpleMessage(null, texto, severity)));
  }

  public void json(List<Message> messages) {
    JsonArray msgs = new JsonArray();
    for (Message message : messages) {
      JsonObject m = new JsonObject();
      m.addProperty("tipo", message.getSeverity().name());
      m.addProperty("texto", message.getMessage());
      msgs.add(m);
    }
    JsonObject json = new JsonObject();
    json.add("mensagens", msgs);
    response.setContentType("text/x-json;charset=UTF-8");
    response.setHeader("Cache-Control", "no-cache");
    try {
      response.getWriter().write(json.toString());
    } catch (IOException ex) {
      Logger.getLogger(MsgController.class.getName()).log(Level.SEVERE, null, ex);
    }
  }

}
