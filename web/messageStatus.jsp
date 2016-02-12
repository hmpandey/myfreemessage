<%@page import="java.sql.*"%>

<%
try
{
String message = request.getParameter("message");
String sendto = request.getParameter("sendto");
Class.forName("com.mysql.jdbc.Driver")    ;
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/myfreemessage","root","12345qwert");
Statement st= con.createStatement();
String mobile = session.getAttribute("mobile").toString();
String str_query = "insert into message_master values('"+mobile+"','"+sendto+"','"+message+"')";

int i = st.executeUpdate(str_query);
if(i>0)
    {
    new smsapi.Main().sensms(sendto, message);
    response.sendRedirect("welcomeUser.jsp?msg= Your message sent successfulyy to "+sendto);
    }
else
    {
    response.sendRedirect("welcomeUser.jsp?msg=Something went wrong");
    }
 con.close();
       st.close();
        }catch(Exception e){

            response.sendRedirect("welcomeUser.jsp?msg="+e);
        }
%>