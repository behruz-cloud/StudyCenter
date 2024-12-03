<%@ page import="uz.pdp.studycenter.Repo.CourserRepo" %>
<%@ page import="uz.pdp.studycenter.entity.Course" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Course Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .course-container {
            border: 1px solid #ddd;
            padding: 15px;
            margin-bottom: 10px;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 15px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
        .details {
            display: none;
            margin-top: 10px;
        }
    </style>
</head>
<body>
<h1>Available Courses</h1>
<%
    List<Course> coursesList = CourserRepo.getCoursesList();
    for (Course course : coursesList) {
%>
<div class="course-container">
    <span><%= course.getName() %></span>
    <form action="" method="post">
        <input type="hidden" name="courseId" value="<%=course.getId()%>">
    <button>View Directions</button>
    </form>
</div>
<%
    }
%>
</body>
</html>
