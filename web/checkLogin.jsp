<%@page import="java.sql.*"%>
<h1>Log In menu</h1>
<%
try{
    String mobile = request.getParameter("mobile");
    String password = request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver")    ;
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/myfreemessage","root","12345qwert");
Statement st= con.createStatement();
String str_sql="select first_name from detail_master where mobile = "+mobile+" AND password = '"+password+"'";
ResultSet rs = st.executeQuery(str_sql);
while(rs.next())
    {
    String first_name = rs.getString(1);
    session.setAttribute("first_name", first_name);
    session.setAttribute("mobile", mobile);
    session.setAttribute("password",password);
    response.sendRedirect("welcomeUser.jsp?first_name="+first_name);
    }

con.close();
       st.close();
        }catch(Exception e){
            response.sendRedirect("index.jsp?msg="+e);
        }
        finally {}



%>