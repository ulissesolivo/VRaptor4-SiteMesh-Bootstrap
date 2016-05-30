<%-- 
    Document   : edita
    Created on : 20/04/2016, 23:30:40
    Author     : Ulisses Olivo
    E-mail     : ulissesolivo@gmail.com
--%>

<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>${empty usuario.id ? 'Inserindo usuário' : 'Editando'} ${usuario.nome}</title>

<div class="col-sm-12">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h3 class="panel-title">${empty usuario.id ? 'Inserindo usuário' : 'Editando '.concat(usuario.nome)} </h3>
    </div>
    <div class="panel-body jumbotron" style="margin-bottom: 0px;">
      <form class="form-horizontal" action="<c:url value="/usuario/salvar" />" enctype="application/x-www-form-urlencoded" method="post">
        <input type="hidden" name="usuario.id" value="${usuario.id}" readonly="readonly" />
        <div class="form-group">
          <label for="usuario.nome" class="col-sm-3 control-label">Nome do usuário</label>
          <div class="col-sm-9">
            <input type="text" class="form-control" name="usuario.nome" value="${usuario.nome}" />
          </div>
        </div>
        <div class="form-group">
          <label for="usuario.login" class="col-sm-3 control-label">E-mail de login</label>
          <div class="col-sm-9">
            <input type="email" class="form-control" name="usuario.login" value="${usuario.login}" />
          </div>
        </div>
        <div class="form-group">
          <label for="usuario.senha" class="col-sm-3 control-label">Senha de acesso</label>
          <div class="col-sm-6">
            <input type="password" class="form-control" name="usuario.senha" />
          </div>
        </div>
        <div class="form-group">
          <label for="usuario.senhaConfirmacao" class="col-sm-3 control-label">Senha confirmação</label>
          <div class="col-sm-6">
            <input type="password" class="form-control" name="usuario.senhaConfirmacao" />
          </div>
        </div>
        <c:if test="${not empty errors}">
          <div class="form-group">
            <div class="col-md-offset-3 col-md-6 col-sm-offset-2 col-sm-8">
              <c:forEach var="error" items="${errors}">
                <div class="alert ${error.category}" role="alert">${error.message}</div>
              </c:forEach>
            </div>
          </div>
        </c:if>
        <div class="form-group">
          <div class="col-md-offset-3 col-md-6 col-sm-offset-2 col-sm-8">
            <button type="button" class="btn btn-default" onclick="window.history.back();">Cancelar</button>
            <button type="submit" class="btn btn-primary pull-right">Salvar</button>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>