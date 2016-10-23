<%-- 
    Document   : login.jsp
    Created on : Sep 28, 2014, 12:04:14 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />
        <script type="text/javascript">
            
        </script>
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
            <h3>Login</h3>
            <form method="POST"  action="Login">
                <ul>
                    <li>User Name <input type="text" name="username"></li>
                    <li>Password <input type="password" name="password"></li>
                </ul>
                <br/>
                <p>${info}<p>
                <li><input type="submit" value="Submit"></li>
            </form>
           
        </article>
      
    </body>
</html>
