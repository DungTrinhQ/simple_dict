
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.io.PrintWriter" %><%--
 <%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 6/16/2020
  Time: 5:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<%!
    Map<String, String> dic = new HashMap<>();
%>
<%
    dic.put("hello", "xin chao");
    dic.put("how", "the nao");
    dic.put("book", "quyen vo");
    dic.put("computer", "may tinh");
    String search = request.getParameter("word");
    String result = dic.get(search);
    PrintWriter writer = response.getWriter();
    if (result != null) {
        writer.print("Word: " + search);
        writer.print("</br>Result: " + result);
    } else {
        writer.print("Not found");
    }
%>
</body>
</html>