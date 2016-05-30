<%-- 
    Document   : lista
    Created on : 20/04/2016, 21:58:04
    Author     : Ulisses Olivo
    E-mail     : ulissesolivo@gmail.com
--%>

<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>Listagem de usuários</title>

<div class="col-sm-12">
  <c:if test="${not empty errors}">
    <ul class="error-messages">
      <c:forEach var="error" items="${errors}">
        <li class="${error.category}">${error.message}</li>
        </c:forEach>
    </ul>
  </c:if>

  <div class="panel panel-default">
    <div class="panel-heading">Lista de usuários</div>
    <div class="panel-body">
      <form action="<c:url value="/usuario/listar" />" method="post" enctype="application/x-www-form-urlencoded">
        <div class="input-group">
          <span class="input-group-addon">Pesquisa</span>
          <input type="text" class="form-control" placeholder="Texto" id="texto" name="texto" value="${texto}" />
          <span class="input-group-btn">
            <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search"></span></button>
          </span>
        </div>
      </form>
    </div>
    <div class="table-responsive">
      <table class="table table-striped ">
        <thead>
          <tr>
            <th colspan="2"><a href="<c:url value="/usuario/editar" />">Novo</a></th>
            <th>Nome</th>
            <th>Login</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach items="${usuarios}" var="usuario">
            <tr>
              <td><a href="<c:url value="/usuario/editar/${usuario.id}" />">Editar</a></td>
              <td><a href="<c:url value="/usuario/excluir/${usuario.id}" />">Excluir</a></td>
              <td>${usuario.nome}</td>
              <td>${usuario.login}</td>
            </tr>
          </c:forEach>
        </tbody>
        <tfoot>
          <tr>
            <td colspan="4">${usuarios.size() == 0 ? 'Nenhum' : usuarios.size()} usuário${usuarios.size() > 1 ? 's' : ''}</td>
          </tr>
        </tfoot>
      </table>
    </div>
  </div>
</div>