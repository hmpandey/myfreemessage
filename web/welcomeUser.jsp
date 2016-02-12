<%@page import="java.sql.*"%>
<div>
    <div style="float: left">
    <h2>Welcome
    <%
    String first_name = session.getAttribute("first_name").toString();
    out.print(first_name);
    %>
    </h2>
    <h4>
    <%
    String msg = request.getParameter("msg");
    if(msg!=null)
        out.print(msg);
    %>
    </h4>
      </div>
    <div style="float: right">
        <script src="jquery-1.10.2.min.js">

        </script>
        <script>
            $(document).ready(function(){
                $("#contact").blur(function(){
                        $v= $("#contact").val();
                        $("#send").val($v);
               });
            });
        </script>
    <form action="logOut.jsp">
        <input type="submit" value="Log Out" />
    </form>
     </div>
</div>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
<div>
    <div style=" float: left">
<form action="messageStatus.jsp">
    <font color="blue" size="4">Enter your message Here</font>
    <br>
<textarea name="message" rows="4" cols="20" placeholder="character less than 200">
</textarea>
    <br><br>
 <font color="blue" size="4">Mobile</font>
    <br>
<input type="text" name="hmp" value="91" size="2" readonly="readonly" />
<input type="text" name="sendto" id="send" value="" />
<input type="submit" value="SEND" name="button" />
</form>
    </div>

    <div style="float: right" >
      <font color="blue" size="4">Your Contact List</font>
      <select name="contact_list" id="contact">

<%
try{
Class.forName("com.mysql.jdbc.Driver")    ;
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/myfreemessage","root","12345qwert");
Statement st= con.createStatement();
ResultSet rs = st.executeQuery("select * from message_master where mobile= "+session.getAttribute("mobile"));
while(rs.next())
    {
    out.println("<option>"+rs.getString("sendto")+"</option>");
    }
 con.close();
       st.close();
        }catch(Exception e){}
        finally {}


%>
      </select>

    </div>
</div>
      <a href="viewSentHistory.jsp" > View Sent History</a>