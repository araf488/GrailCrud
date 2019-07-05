<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Form</title>
</head>
<body>
<g:form controller="user" action="save">
    <label>User Name: </label>
    <g:textField name="username"/><br/>
    <label>Full Name: </label>
    <g:textField name="fullname"/><br/>
    <label>Email: </label>
    <g:textField name="email"/><br/>
    <label>Password: </label>
    <g:textField name="password"/><br/>
    <label>Age: </label>
    <g:textField name="age"/><br/>
    <g:actionSubmit value="Save"/>
</g:form>
</body>
</html>