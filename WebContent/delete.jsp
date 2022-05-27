<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.PersonVo" %>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="java.util.List" %>
<%
	//파라미터에서 값 꺼내오기
	int id = Integer.parseInt(request.getParameter("id"));

	//personVo 객체 만들기
	
	//데이터삭제하기
	PhoneDao phoneDao = new PhoneDao();
	int count = phoneDao.personDelete(id);
	
	//리스트를 가져와서 html에 섞어놓는다
	//List<PersonVo> personList = phoneDao.getPersonList();
	
	//기존 리스트 화면
	response.sendRedirect("./list.jsp");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>