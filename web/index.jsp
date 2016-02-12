<h1>Welcome to MyFreeMessage</h1>
<br>
<font color="red">
<%
String msg = request.getParameter("msg");
if(msg!=null)
out.print(msg);
else
out.print("Existing User Login");
%>
</font>
<br><br>
<form action="checkLogin.jsp">
Mobile Number
<input type="text" name="mobile" maxlength="10" >
<br><br>
Password
<input type="password" name="password">
<button type="submit"> Login </button>
</form>
<p><a href="newUserRegistration.jsp"> New User</a> </p>
<p><a href="forgetPassword.jsp">Forget Password</a> </p>




