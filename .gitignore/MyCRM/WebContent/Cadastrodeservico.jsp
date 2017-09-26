<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de servico</title>
</head>
<body>


	<c:choose>
		<c:when test = "${not empty listaservico}">
			<table>
			<thead>
				<tr>
				    <th>ID</th>
					<th>PRODUTO</th>
					<th>DATA</th>
					<th>HORA</th>
					<th>STATUS</th>
				</tr>
			</thead>
			<c:forEach var="servico" items="${listaservico}">
				<tr>
					<td>${servico.id}</td>
					<td>${servico.produto}</td>
					<td>${servico.data}</td>
					<td>${servico.hora}</td>
					<td>${servico.status}</td>
		
					<td>
					<a href="/MyCRM/ObterClienteServlet?id=${servico.id}">
					Exibir Detalhes do serviço de manutenção
					</a> 
					</td>


				</tr>
			</c:forEach>
			</table>

			
			</c:when>
			<c:otherwise>
				<br>
				<div class="alert alert-info">
                	Não há dados
                </div>
			</c:otherwise>
	</c:choose>


</body>
</html>