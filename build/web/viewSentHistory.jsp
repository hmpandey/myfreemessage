 <a href="welcomeUser.jsp" > HOME PAGE</a>
 <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
    <font color="red" size="5">
        <h3 align="center" style="border-bottom: black">
      Sent SMS Report
      </h3>
      </font>

<table width="525" align="center" border="1" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  
  
  <tr>
    <td height="23" valign="top">From</td>
    <td valign="top">Message</td>
    <td valign="top">Sent To</td>
    <td valign="top">Action</td>
  </tr>


<%

try{
Class.forName("com.mysql.jdbc.Driver")    ;
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/myfreemessage","root","12345qwert");
Statement st= con.createStatement();
ResultSet rs = st.executeQuery("select * from message_master where mobile= "+session.getAttribute("mobile"));
while(rs.next())
    {
    String from = rs.getString(1);
    String sentto = rs.getString(2);
    String message = rs.getString(3);
    out.print( "<tr><td height='23' valign='top'>"+from+"</td> <td valign='top'>"+sentto+"</td><td valign='top'>"+message+"</td><td valign='top'><!--DWLayoutEmptyCell-->&nbsp;</td></tr>");
    }
 con.close();
       st.close();
        }catch(Exception e){}
        finally {}
%>
 
  <tr>
    <td height="10"></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</table>
</body>
</html>
