<%@ page import="java.sql.*"%>


<%

String email=request.getParameter("uname");

String pass=request.getParameter("passwd");


try{
 Class.forName("oracle.jdbc.OracleDriver");
 Connection conn=DriverManager.getConnection("jdbc::mysql//localhost:3306/ess","root","root");
 PreparedStatement ps=conn.prepareStatement("select * email,password form registration");
ps.setString(1,email);
ps.setString(2,pass);

 ResultSet x=ps.executeQuery();
 if(x.next()){
response.sendRedirect("h1.index");
}
 else
{
  out.print("Something went wrong.Try after sometime");
}
}
catch(Exception e)
{
out.print(e);
}

%>