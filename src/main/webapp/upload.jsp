<%-- 
    Document   : upload
    Created on : Sep 22, 2014, 6:31:50 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />
    </head>
    <body>
         <h1><i><center>I n s t a G r i m ! </center></i></h1>
      
        <nav>
            <ul>
                <%
                      LoggedIn lg2 = (LoggedIn) session.getAttribute("LoggedIn");
                      String UserName = lg2.getUsername();
                 %>
                 <li><a href="/Instagrim">Home</a></li>
                <li class="nav"><a href="upload.jsp">Upload</a></li>
                <li class="nav"><a href="/Instagrim/Images/majed">Sample Images</a></li>
                <li class="nav"><a style="text-decoration: none"href="/Instagrim/Images/<%=lg2.getUsername()%>">Your Images</a> </li>
            </ul>
        </nav>
 
        <article>
            <h3>File Upload</h3>
            <form method="POST" enctype="multipart/form-data" action="Image">
                File to upload: <input type="file" name="upfile"><br/>

                <br/>
                <input type="submit" value="Press"> to upload the file!
            </form>

        </article>
       
    </body>
</html>
