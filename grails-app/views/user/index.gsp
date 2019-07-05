<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Users</title>
</head>
<body>
<g:link controller="user" action="form">
    <button type="button">Add New</button>
</g:link>
<table>
    <thead>
        <tr>
            <th>Username</th>
            <th>Fullname</th>
            <th>Email</th>
            <th>Password</th>
            <th>Age</th>
            <th colspan="2">Action</th>
        </tr>
    </thead>
    <tbody>
    <g:each in="${users}" var="user" status="i">
        <tr>
            <td>${user.username}</td>
            <td>${user.fullname}</td>
            <td>${user.email}</td>
            <td>${user.password}</td>
            <td>${user.age}</td>
            <td>
                <g:link controller="user" action="edit" id="${user.id}">
                    <button type="button">Edit</button>
                </g:link>
            </td>
            <td>
                <g:link controller="user" action="flush" id="${user.id}">
                    <button type="button">Delete</button>
                </g:link>
            </td>
        </tr>
    </g:each>
    </tbody>
</table>
</body>
</html>