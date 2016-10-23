<%-- 
    Document   : index
    Created on : Sep 28, 2014, 7:01:44 PM
    Author     : Administrator
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <header>
            <h1><i><center>I n s t a G r i m ! </center></i></h1>
           
        </header>
        	
			
        <nav>
            <ul>
                <li><a href="/Instagrim">Home</a></li>
                            
                    <%
                        
                        LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");//判断是否用户是否登录
                        if (lg != null) //LoggedIn为变量类型，lg为新定义的变量 
                        {
                            String UserName = lg.getUsername();
                            if (lg.getlogedin()) {//如果登录之后进入用户的图片界面
                    %>
                <li> <a style="text-decoration: none"href="upload.jsp">Upload</a></li> 
                <li> <a style="text-decoration: none"href="/Instagrim/Images/<%=lg.getUsername()%>"><%=UserName%> Images</a> </li>   
                <li> <a style="text-decoration: none"href="/Instagrim/Logout">Log out</a></li> 
                <li> <a style="text-decoration: none"href="/Instagrim/userprofile">upload userprofile</a></li> 
            
                <div style="width:350px;    float:left;    padding:10px;">
                <br><h2>Welcome ! <%=lg.getUsername()%></h2><br>
                </div>   
                    <%}//在用户界面显示欢迎信息

                } else{//否则为注册和登录选项
                                %>
                 <li><a style="text-decoration: none" href="register.jsp">Register</a></li>
                <li><a style="text-decoration: none" href="login.jsp">Login</a></li>
                <%
                                        
                            
                    }%>
            </ul>
        </nav>
            <div style="float:left;padding:10px;">
                
            <%if (lg != null) //LoggedIn为变量类型，lg为新定义的变量 
                        {
                            if (lg.getlogedin()) {//如果登录之后进入用户的图片界面
                                if (lg.gethavepic()){
                            String userpic=(String)session.getAttribute("userpic");
            %>
            <img src="/Instagrim/Thumb/<%=userpic%>">
            <%}}}%>
            </div>
            
    </body>
</html>
