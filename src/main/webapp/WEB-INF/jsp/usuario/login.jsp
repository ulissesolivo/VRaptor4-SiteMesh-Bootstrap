<%-- 
    Document   : login
    Created on : 21/04/2016, 23:29:27
    Author     : Ulisses Olivo
    E-mail     : ulissesolivo@gmail.com
--%>

<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>Login de acesso - App exemplo</title>

<div class="col-sm-12">
  <div class="panel panel-default" style="max-width: 600px; margin: auto;">
    <div class="panel-heading">
      <h3 class="panel-title">Área restrita, informe seu e-mail e senha </h3>
    </div>
    <div class="panel-body jumbotron" style="margin-bottom: 0px;">
      <form action="<c:url value="/usuario/logar" />" enctype="application/x-www-form-urlencoded" method="post">
        <c:if test="${usuarios eq 0}">
          <div class="form-group">
            <label for="usuario.nome">Nome do usuário</label>
            <input type="text" class="form-control" id="usuario.nome" name="usuario.nome" />
          </div>
        </c:if>
        <div class="form-group">
          <label for="usuario.login">E-mail de login</label>
          <input type="email" class="form-control" id="usuario.login" name="usuario.login" required="required" />
        </div>
        <div class="form-group">
          <label for="usuario.senha">Senha de acesso</label>
          <input type="password" class="form-control" id="usuario.senha" name="usuario.senha" required="required" />
        </div>
        <c:if test="${usuarios eq 0}">
          <div class="form-group">
            <label for="usuario.senhaConfirmacao">Senha confirmação</label>
            <input type="password" class="form-control" id="usuario.senhaConfirmacao" name="usuario.senhaConfirmacao" required="required" />
          </div>
        </c:if>
        <c:if test="${not empty errors}">
          <ul class="error-messages">
            <c:forEach var="error" items="${errors}">
              <li class="${error.category}">${error.message}</li>
              </c:forEach>
          </ul>
        </c:if>
        <c:if test="${usuarios eq 0}">
          <p style="color: red;">O sistema não possui nenhum usuário cadastrado!</p>
          <p>Informe os dados do primeiro usuário!</p>
        </c:if>
        <div class="form-group">
          <button type="button" class="btn btn-default" onclick="window.history.back();">Cancelar</button>
          <button type="submit" class="btn btn-primary pull-right">Entrar</button>
        </div>
      </form>
    </div>
  </div>
</div>

<script>
  document.getElementById('nome').focus();
</script>
