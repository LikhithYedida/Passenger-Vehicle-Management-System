<%@page import="java.sql.*"%>
<% 

try
    {
      Connection con=null;
      Class.forName("com.mysql.cj.jdbc.Driver");
      con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pvms", "root","root");
    PreparedStatement pst=con.prepareStatement("insert into register values(?,?,?,?,?,?)"); 
    pst.setInt(1,0);
    pst.setString(2,request.getParameter("fname")); 
    pst.setString(3,request.getParameter("lname")); 
    pst.setString(4,request.getParameter("email"));
    pst.setString(5,request.getParameter("gender"));
    pst.setString(6,request.getParameter("vehicle"));
   
    
    pst.executeUpdate();
    pst.close(); 
    con.close(); 
    response.sendRedirect("h1.html");
    
    }
    catch(Exception e)
    {
      System.out.println(e);
    }

   %>