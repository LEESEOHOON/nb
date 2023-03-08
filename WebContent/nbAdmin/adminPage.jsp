<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>	
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="${contextPath}/css/adminPage.css">
</head>
<body>
	<div class="container">
		<aside class="sidebar">
			<h2>������</h2>
			<ul class="menu">
				<li><a href="#">ȸ�� ����Ʈ ����</a></li>
				<li><a href="#">�Ʒû� ����Ʈ ����</a></li>
				<li><a href="#" class="board_manage">�Խ��� ����</a>
					<ul class="submenu">
						<li><a href="#">�����Խ���</a></li>
						<li><a href="#">�Ʒû� ��� �Խ���</a></li>
						<li><a href="#">���� �ı� �Խ���</a></li>
					</ul></li>
			</ul>
		</aside>
		<main class="content">
			<h2>������ ������</h2>
			<p>What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the
				printing and typesetting industry. Lorem Ipsum has been the
				industry's standard dummy text ever since the 1500s, when an unknown
				printer took a galley of type and scrambled it to make a type
				specimen book. It has survived not only five centuries, but also the
				leap into electronic typesetting, remaining essentially unchanged.
				It was popularised in the 1960s with the release of Letraset sheets
				containing Lorem Ipsum passages, and more recently with desktop
				publishing software like Aldus PageMaker including versions of Lorem
				Ipsum.</p>
		</main>
	</div>
	<script src="${contextPath}/js/adminPage.js"></script>
</body>
</html>