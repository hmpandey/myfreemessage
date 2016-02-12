<%@page import="java.sql.*"%>
<%
try{
String gender = request.getParameter("gender");
String first_name = request.getParameter("first_name");
String last_name = request.getParameter("last_name");
String dob_day=request.getParameter("dob_day");
String dob_month=request.getParameter("dob_month");
String dob_year=request.getParameter("dob_year");
String state = request.getParameter("state");
String city = request.getParameter("city");
String email = request.getParameter("email");
String c_email = request.getParameter("c_email");
String mobile = request.getParameter("mobile");
String password = request.getParameter("password");
String c_password = request.getParameter("c_password");
String dob = ""+dob_year+"-"+dob_month+"-"+dob_day;
out.println(dob);
if(!email.contentEquals(c_email))
    {
    response.sendRedirect("newUserRegistration.jsp?msg=Please confirm email correctly");
    }
if(!password.contentEquals(c_password))
    {
    response.sendRedirect("newUserRegistration.jsp?msg=Please confirm password correctly");
    }
if(mobile.length()!=10)
    {
    response.sendRedirect("newUserRegistration.jsp?msg=Please provide valid 10 digit mobile number");
    }

Class.forName("com.mysql.jdbc.Driver")    ;
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/myfreemessage","root","12345qwert");
Statement st= con.createStatement();
String str_query = "insert into detail_master values('"+gender+"','"+first_name+"','"+last_name+"','"+dob+"','"+email+"','"+mobile+"','"+state+"','"+city+"','"+password+"')";
//out.print(str_query);
int i = st.executeUpdate(str_query);
//out.print(i);
if(i>0)
    {
    session.setAttribute("first_name", first_name);
    session.setAttribute("mobile", mobile);
    session.setAttribute("password",password);
    response.sendRedirect("welcomeUser.jsp");
    }
else
    {
    response.sendRedirect("newUserRegistration.jsp?msg=Something went wrong");
    }
 con.close();
       st.close();
        }catch(Exception e){
            
            response.sendRedirect("newUserRegistration.jsp?msg="+e);
        }
        finally {}

%>
