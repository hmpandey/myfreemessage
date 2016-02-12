 <%@page import="java.sql.*"%>
<%
String mobile = request.getParameter("mobile");
String email = request.getParameter("email");
try{
Class.forName("com.mysql.jdbc.Driver")    ;
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/myfreemessage","root","12345qwert");
Statement st= con.createStatement();
ResultSet rs = st.executeQuery("select * from detail_master where mobile= '"+mobile+"'AND email = '"+email+"'");
if(rs.next())
    {
    String first_name = rs.getString(2);
    String last_name = rs.getString(3);
    out.print("<h3>thanks  "+ first_name+"  "+last_name+"  your password has been sent to your email id</h3>");
    out.print("<a href='index.jsp'>GO TO LOG IN PAGE</a>");
    }
else{
    out.print("<h3>You Have enterd wrong credentials : </h3>");
    out.print("<a href='forgetPassword.jsp'>TRY AGAIN</a>");
    }
 con.close();
       st.close();
        }catch(Exception e){
        out.print(e);}
        finally {}

%>
