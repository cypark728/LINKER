<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.LINKER.member.model.MemberDAO, com.LINKER.member.model.MemberDTO" %>
<!DOCTYPE html>
<html>
<head>
    <title>DB 연결 테스트</title>
</head>
<body>
    <h2>DB 연결 테스트 결과</h2>
    <%
        MemberDAO dao = MemberDAO.getInstance();
        int testUserId = 1; // 실제 존재하는 USER_ID 값
        MemberDTO member = dao.getMemeberInfo(testUserId);

        if (member.getUserName() != null) {
    %>
        <p>DB 연결 성공!</p>
        <p>이름: <%= member.getUserName() %></p>
        <p>이메일: <%= member.getEmail() %></p>
        <p>비밀번호: <%= member.getPassword() %></p>
    <%
        } else {
    %>
        <p>DB 연결 실패 또는 해당 ID의 데이터 없음.</p>
    <%
        }
    %>
</body>
</html>