<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.PersonVo" %>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="java.util.List" %>
<%
	//파라미터에서 값 꺼내오기
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");

	//person 객체 만들기
	PersonVo personVo = new PersonVo(name, hp, company);
	System.out.println(personVo);
	
	//PhoneDao 객체 만들기
	PhoneDao phoneDao = new PhoneDao();
	
	//PhoneDao의 personInsert값 불러오기
	int count = phoneDao.personInsert(personVo);
	System.out.println(count);
	
	//리스트를 가져와서 html에 섞어놓는다
	List<PersonVo> personList = phoneDao.getPersonList();
	System.out.println(personList);
	
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