<h1>Registration Form For New User</h1>
<font color="red">
    <h4 style="font-style: italic" >
        <% String msg= request.getParameter("msg");
        if(msg!=null)
         out.print(msg); %>
    </h4>
</font>
    <form action="confirmNewRegistration.jsp">
    Gender
    <select name="gender">
    <option>Male</option>
    <option>Female</option>
    <option>Other</option>
    </select>
    <br><br>
    First Name
    <input type="text" name="first_name" value="" />
    <br><br>
    Last Name
    <input type="text" name="last_name" value="" />
    <br><br>
    Date Of Birth(day/month/year)
    <select name="dob_day">
        
<%
for(int i=1;i<=31;i++)
out.print("<option>"+i+"</option>");
%>
        
    </select>
    <select name="dob_month">
        
<%
for(int i=1;i<=12;i++)
out.print("<option>"+i+"</option>");
%>
    </select><select name="dob_year" >
       
 <%
for(int i=1950;i<=2015;i++)
out.print("<option>"+i+"</option>");
%>
    </select>
    <br><br>
    State
    <input type="text" name="state" value="" />
    <br><br>
    City
    <input type="text" name="city" value="" />
     <br><br>
    Email Id:
    <input type="text" name="email" value="" />
     <br><br>
    Confirm Email Id
    <input type="text" name="c_email" value="" />
    <br><br>
    Mobile Number
    <input type="text" name="hmp" value="91" size="2" readonly="readonly" />
    <input type="text" name="mobile" value=""/>
    <br><br>
    Password:
    <input type="password" name="password" value="" />
     <br><br>
    Confirm Password
    <input type="password" name="c_password" value="" />
    <br><br>
    <input type="radio" name="" value="" />
    Agree <a href="ConditionNewUser.jsp"> Terms & Condition</a>
    <br><br>
    <input type="submit" value="Submit" />


</form>