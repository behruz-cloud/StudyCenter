<%@ page import="uz.pdp.studycenter.Repo.ModuleRepo" %>
<%@ page import="uz.pdp.studycenter.entity.Module" %>
<%@ page import="java.util.List" %>
<%@ page import="uz.pdp.studycenter.entity.Groups" %>
<%@ page import="uz.pdp.studycenter.Repo.GroupsRepo" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Groups page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 20px;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #333;
        }

        .module-card {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px;
            margin-bottom: 20px;
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .module-card h3 {
            margin: 0;
            font-size: 1.5em;
            color: #333;
        }

        .module-card form button {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1em;
        }

        .module-card form button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Groups for Module</h1>
    <%
        int moduleId = Integer.parseInt(request.getParameter("moduleId"));
        List<Groups> groupsList = GroupsRepo.getGroupsList(moduleId);

        if (groupsList != null && !groupsList.isEmpty()) {
            for (Groups group : groupsList) {
    %>
    <div class="module-card">
        <div>
            <h3><%= group.getName() %></h3>
        </div>
        <form action="/Students.jsp" method="post">
            <button type="submit">View Directions</button>
        </form>
    </div>
    <%
        }
    } else {
    %>
    <p>No modules found for this course.</p>
    <%
        }
    %>
</div>

</body>
</html>