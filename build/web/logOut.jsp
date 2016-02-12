<%
 session.invalidate();
 response.sendRedirect("index.jsp?msg=Successfully loged out");
%>