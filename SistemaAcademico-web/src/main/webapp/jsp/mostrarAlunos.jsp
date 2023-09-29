<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="br.edu.exemplo.model.Aluno"%>

<!DOCTYPE html>
<html>
<head>
	<title>Lista Alunos</title>
	<link rel="stylesheet" href="./css/estilo.css">
	<link rel="shortcut icon" type="imagex/png" href="./imagens/pilha-de-livros.ico">

</head>

<body class="imagem_fundo">

	<table class="tabela1" width="60%" border="1">
	
		<tr class="camp_titulo">
			<th  class="titulo2" colspan="8"><h1>Lista de Alunos</h1></th>
		</tr>
		<tr class="camp_titulo">
			<th>RA</th>
            <th>Nome</th>
            <th>Endereço</th>
            <th>E-mail</th>
            <th>Nascimento</th>
            <th>Período</th>
            <th colspan="6" > Opçoes</th>
        </tr>

		<%
		SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");
		List<Aluno> lista = new ArrayList<Aluno>();
		lista = (ArrayList) request.getAttribute("alunosList");
		for (Aluno a : lista) {
		%>
		<tr class="camp_result">
	  <td><%=a.getRa()%></td>
    <td><%=a.getNome()%></td>
    <td><%=a.getEndereco()%></td>
    <td><%=a.getEmail()%></td>
    <td><%=data.format(a.getDataNascimento())%></td>
    <td><%=a.getPeriodo()%></td>
    <td><a class="bt_excluir" href="html\excluir.html">Excluir</a></td>
    <td><a class="bt_editar" href="html\atualizar.html">Editar</a></td>
</tr>
		<% } %>
		<tr class="pag_inicial">
			<th colspan="8" ><a class="bt_retorno" href="index.html">Página Principal</a></th>
		</tr>
	</table>
</body>
</html>
