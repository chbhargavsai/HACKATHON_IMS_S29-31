<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login Form</title>
<%@include file="mainnavebar.jsp" %>

<!-- Add CSS for background image and color scheme -->
<style>
    body {
    }

    .container {
        background-color: rgba(0, 0, 0, 0.7); /* Dark semi-transparent background */
        padding: 20px;
        border-radius: 10px;
        max-width: 400px;
        margin: 90px auto;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.7);
        color: white; /* White text color for readability */
    }

    .form-group {
        margin-bottom: 15px;
    }

    .form-group label {
        font-weight: bold;
        color: #ffdd57; /* Golden color for labels */
    }

    .form-control {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        border-radius: 5px;
        border: 1px solid #ccc;
    }

    .button-container {
        display: flex;
        justify-content: space-between;
    }

    .btn {
        padding: 10px 20px;
        border-radius: 5px;
        border: none;
        cursor: pointer;
        font-size: 16px;
        transition: background-color 0.3s ease;
    }

    .btn-success {
        background-color: #28a745; /* Green button color */
        color: white;
    }

    .btn-success:hover {
        background-color: #218838; /* Darker green on hover */
    }

    .btn-reset {
        background-color: #ff5722; /* Red button color for Reset */
        color: white;
    }

    .btn-reset:hover {
        background-color: #e64a19; /* Darker red on hover */
    }

    h3 {
        font-size: 28px;
        font-weight: bold;
        text-transform: uppercase;
        text-align: center;
        margin-top: 20px; /* Added margin to account for fixed navbar */
        margin-bottom: 20px; /* Added margin to space out the title from the form */
        color: #ffdd57; /* Golden color for title */
    }
</style>

</head>
<body>

<h3>Admin Login Form</h3>
<div class="container">
<h4>${message }</h4>
    <form method="post" action="checkadminlogin">
        <div class="form-group">
            <label for="auname">Enter Username</label>
            <input type="text" value="admin" id="auname" class="form-control" name="auname" required/>
        </div>

        <div class="form-group">
            <label for="apwd">Enter Password</label>
            <input type="password" value="admin" id="apwd" class="form-control" name="apwd" required/>
        </div>

        <div class="button-container">
            <input type="submit" value="Login" class="btn btn-success"/>
            <input type="reset" value="Clear" class="btn btn-reset"/>
        </div>
    </form>
</div>

</body>
<%@include file="footer.jsp" %>
</html>