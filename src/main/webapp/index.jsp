<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import='java.util.*'%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello World</title>
<link href="styles.css" rel="stylesheet" type="text/css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
</head>
<body>

	<p>Hola, esto es una pagina en JSP.</p>
	<p>
		La hora del servidor es
		<%=new Date()%>
	</p>

	<%
	
	int suma = 0;
	if (request.getParameter("enviar") != null) {

		int num1 = Integer.parseInt(request.getParameter("numerouno"));

		int num2 = Integer.parseInt(request.getParameter("numerodos"));

		suma = num1 + num2;


	}
	%>
	<div class="container">
	<form action="index.jsp" method="get">
		<div class="row g4 orm-group">
			<div class="col-sm form-group">
				<input type="number" class="form-control" name="numerouno"
					placeholder="Primer Número">
			</div>
			<div class="col-sm form-group">
				<input type="text" class="form-control" name="numerodos"
					placeholder="Segundo Número">
			</div>
			<div class="col-sm form-group">
				<button type="submit" class="btn btn-primary" name="enviar">Calcular</button>
			</div>
			<div class="col-sm form-group">
				<input type="text" class="form-control" name="result"
					placeholder="Resultado: <%=suma%>">
			</div>
		</div>
	</form>
	</div>
	


</body>
</html>