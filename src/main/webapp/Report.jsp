<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="uz.pdp.studycenter.entity.Report" %>
<%@ page import="uz.pdp.studycenter.Repo.CourserRepo" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Course Report</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }
        .container {
            width: 80%;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #007bff;
            color: white;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Course Report</h2>
    <table>
        <thead>
        <tr>
            <th>Course Name</th>
            <th>Number of Students</th>
            <th>Total Payment</th>
        </tr>
        </thead>
        <tbody>
        <%
            // JSP pagega report ma'lumotlarini olish
            List<Object[]> reportData = CourserRepo.getReport();

            // Har bir qatorni chiqarish
            for (Object[] data : reportData) {
                String courseName = (String) data[0];
                Long studentCount = (Long) data[1];
                Object datum = data[2];
        %>
        <tr>
            <td><%= courseName %></td>
            <td><%= studentCount %></td>
            <td><%= datum %></td>
        </tr>
        <% } %>
        </tbody>
    </table>
</div>
</body>
</html>
