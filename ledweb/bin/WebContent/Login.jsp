<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Sign On</title>
</head>

<body>
<s:form action="welcome">
    <s:textfield name="username" label="Enter your name"></s:textfield>
    <s:submit value="submit"></s:submit>
</s:form>
</body>
</html>
