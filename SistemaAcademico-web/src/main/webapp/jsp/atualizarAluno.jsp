<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Sistema Acadêmico</title>
	<link rel="stylesheet" href="./css/estilo.css">
	<link rel="shortcut icon" type="imagex/png" href="./imagens/pilha-de-livros.ico">
	
</head>

<body class="imagem_fundo">

	<jsp:useBean id="aluno" scope="session" class="br.edu.exemplo.model.Aluno" />
	<%
	SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");
	%>
	<form class="formulario" action="ServletAluno?cmd=atualizar" method="post">
		<table class="tabela" border="1">
		
			<tr class="camp_titulo">
			<th  class="titulo2" colspan="8"><h1>Atualizar Alunos</h1></th>
		</tr>
		
			<tr class="camp_titulo">
				<td>RA:</td>
				<td><input type="text" size="60" name="txtRa"
					value="<%=aluno.getRa()%>" readonly="readonly" /></td>
			</tr>
			<tr class="camp_titulo">
				<td>Nome:</td>
				<td><input type="text" size="60" name="txtNome"
					value="<%=aluno.getNome()%>"  /></td>
			</tr>
			<tr class="camp_titulo">
				<td>E-mail:</td>
				<td><input type="text" size="60" name="txtEmail"
					value="<%=aluno.getEmail()%>"  /></td>
			</tr>
			<tr class="camp_titulo">
				<td>Endereço:</td>
				<td><input type="text" size="60"	name="txtEndereco" value="<%=aluno.getEndereco()%>"
					 /></td>
			</tr>

			<tr class="camp_titulo">
				<td>Nascimento (dd/mm/aaaa):</td>
				<td><input type="date" size="60" name="txtData" value="<%=aluno.getDataNascimento()%>" /></td>
			</tr>
			<tr class="camp_titulo">
				<td>Período:</td>
				<td><select name="cmbPeriodo" size="1">
						<option><%=aluno.getPeriodo()%></option>
						<option>Manhã</option>
						<option>Tarde</option>
						<option>Noite</option>
				     </select>		
				</td>
				
			</tr>
			<tr class="camp_confirm_exclu">
				<th colspan="2">
				<input class="bt_atualiza" type="submit" value="Confirmar Atualização" /></th>
			</tr>

			<tr class="pag_inicial">
				<th colspan="2"><a class="bt_retorno" href="index.html">Página Principal</a></th>
			</tr>
		</table>
	</form>
</body>
</html>
