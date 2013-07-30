<#assign s=JspTaglibs["/WEB-INF/struts-tags.tld"] />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<@s.form action="Action1.action">
<@s.textfield name="username"></@s.textfield>
<@s.textfield name="password"></@s.textfield>
<@s.submit value="submit"/>
</@s.form>
<br/>name:${username}

</body>
</html>