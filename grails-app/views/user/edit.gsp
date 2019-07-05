<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Form</title>
</head>
<body>

<g:each in="${results}" var="info" status="i">
    <g:form controller="user" action="update" id="${info.id}">
        <label>User Name: </label>
        <g:textField name="username" value="${info.username}"/><br/>
        <label>Full Name: </label>
        <g:textField name="fullname" value="${info.fullname}"/><br/>
        <label>Email: </label>
        <g:textField name="email" value="${info.email}"/><br/>
        <label>Password: </label>
        <g:textField name="password" value="${info.password}"/><br/>
        <label>Age: </label>
        <g:textField name="age" value="${info.age}"/><br/>
        <g:hiddenField name="id" value="${info.id}" />
        <g:actionSubmit value="Update"/>
    </g:form>
</g:each>
</body>
</html>