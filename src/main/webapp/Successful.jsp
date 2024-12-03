<%@ page import="uz.pdp.studycenter.entity.Student" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Successful</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            text-align: center;
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #4CAF50;
        }

        p {
            font-size: 1.2em;
            color: #333;
        }

        a, button {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            font-size: 1em;
            color: #fff;
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            cursor: pointer;
        }

        a:hover, button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="container">
    <%
        Student student = (Student) request.getSession().getAttribute("student");
        Integer groupId = student.getGroups().getId();
    %>
    <h1>Payment Successfully Completed!</h1>
    <p>Thank you for your payment!</p>
    <form action="/Students.jsp" method="post">
    <input type="hidden" name="groupId" value="<%=groupId%>">
        <button type="submit">Go Back</button>
    </form>
</div>
</body>
</html>
