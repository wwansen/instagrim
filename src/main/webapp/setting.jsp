<%-- 
    Document   : register.jsp
    Created on : Sep 28, 2014, 6:29:51 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />
    </head>
    <body>
        <header>
         <h1><i><center>I n s t a G r i m ! </center></i></h1>
        
        </header>
        <nav>
            <ul>
                <li><a href="/Instagrim">Home</a></li>
            </ul>
        </nav>
       
        <article>
            <h3>Register as user</h3><br>
            <form method="POST"  action="setting">
                <ul>
                    <li>Firstname <input type="text" name="firstrname"></li>
                    <li>Surname <input type="text" name="surname"></li>
                    <li>Email Address<input  type="text" name="email"</li>
                </ul>
                <br/>
                <input type="submit" value="Register"> 
            </form>

        </article>
       
    </body>
</html>
