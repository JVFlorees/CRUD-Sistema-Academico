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
	<% 	SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");	%>
	<form action="ServletAluno?cmd=excluir" method="post">
		<table class="tabela" border="1">
		
			<tr class="camp_titulo">
				<th class="titulo2" colspan="2"><h2>Excluir Aluno</h2></th>
			</tr>
			<tr>
				<td class="camp_titulo">RA:</td>
				<td class="camp_titulo">
				<input type="text" maxlength="60" size="60" name="txtRa"
					value="<%=aluno.getRa()%>" readonly="readonly" /></td>
			</tr>
			<tr>
				<td class="camp_titulo">Nome:</td>
				<td class="camp_titulo">
				<input type="text" maxlength="60" size="60" name="txtNome"
					value="<%=aluno.getNome()%>" /></td>
			</tr>
			<tr>
				<td class="camp_titulo">E-mail:</td>
				<td class="camp_titulo">
				<input type="text" maxlength="60" size="60" name="txtEmail"
					value="<%=aluno.getEmail()%>" /></td>
			</tr>
			<tr>
				<td class="camp_titulo">Endereço:</td>
				<td class="camp_titulo">
				<input type="text" maxlength="60" size="60"
					name="txtEndereco" value="<%=aluno.getEndereco()%>" /></td>
			</tr>
			<tr>
				<td class="camp_titulo">Nascimento (dd/mm/aaaa):</td>
				<td class="camp_titulo">
				<input type="text" size="60" name="txtData"
					value="<%=data.format(aluno.getDataNascimento())%>" /></td>
			</tr>

			<tr>
				<td class="camp_titulo">Período:</td>
				<td class="camp_titulo">
				<input  type="text" maxlength="60" size="60" name="txtIdade"
					value="<%=aluno.getPeriodo()%>" readonly="readonly" /></td>
			</tr>
			<tr class="camp_confirm_exclu">
				<th colspan="2">
				<input class="bt_exclu" type="submit" value="Confirmar Exclusão" /></th>
			</tr>
			<tr class="pag_inicial">
				<th colspan="2"><a class="bt_retorno" href="index.html">Página Principal</a></th>
			</tr>
		</table>
	</form>
</body>
</html>
