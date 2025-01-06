<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Passenger Registration</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(135deg, #ff0000, #00796b);
            font-family: 'Poppins', sans-serif;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }
        .logo {
            position: fixed;
            top: 20px;
            left: 20px;
            font-size: 1.5rem;
            font-weight: bold;
            color: #fff;
            background: radial-gradient(circle, #00bcd4, #4caf50);
            padding: 8px 8px;
            border-radius: 8px;
            text-align: center;
            font-family: cursive, monospace;
            box-shadow: 0 4px 25px rgba(0, 0, 0, 0.3);
            z-index: 1000;
            line-height: 1.2;
        }
        .logo span {
            display: block;
            font-size: 1.2rem;
        }
        .card {
            border-radius: 20px;
            overflow: hidden;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
            margin-top: 20px;
            background: #fff;
        }
        .card-header {
            background-color: #7f00ff;
            color: #fff;
            text-align: center;
            font-size: 2rem;
            font-weight: bold;
            padding: 1.5rem;
            letter-spacing: 1px;
            border-radius: 20px 20px 0 0;
        }
        .form-label {
            color: #6a1b9a;
            font-weight: 600;
        }
        .btn-custom {
            background: #ff4081;
            color: #fff;
            font-weight: 600;
            font-size: 1.1rem;
            border: none;
            padding: 12px;
            transition: all 0.3s ease;
            border-radius: 8px;
        }
        .btn-custom:hover {
            background: #e91e63;
            transform: scale(1.05);
        }
        .extra-field-label {
            color: #ff5722;
            font-weight: 500;
        }
        input, select {
            font-size: 1.1rem;
            border-radius: 8px;
            padding: 10px;
        }
        h1 {
            font-size: 2.5rem;
            font-weight: bold;
            color: #fff;
            text-align: center;
            margin-bottom: 30px;
            text-shadow: 2px 2px 8px rgba(0,0,0,0.2);
        }
        .form-control, .form-select {
            border: 2px solid #ff4081;
        }
        .form-control:focus, .form-select:focus {
            border-color: #ff5722;
            box-shadow: 0 0 10px rgba(255, 87, 34, 0.5);
        }
    </style>
</head>
<body>
    <div class="logo">
        <span>ZORBA Project</span>
        <span><small>by: Ibrahim</small></span>
    </div>

    <h1>Welcome to Zorba Project</h1>

    <div class="card shadow-lg" style="width: 100%; max-width: 500px;">
        <div class="card-header">
            User Registration
        </div>
        <div class="card-body p-4">
            <form action="<%= request.getContextPath() %>/passenger_registration" method="post">
                <div class="mb-3">
                    <label for="name" class="form-label">Name</label>
                    <input type="text" class="form-control" id="name" name="name" placeholder="Enter your name" required>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
                </div>
                <div class="mb-3">
                    <label for="mobile" class="form-label">Mobile</label>
                    <input type="tel" class="form-control" id="mobile" name="mobile" placeholder="Enter your mobile number" required>
                </div>
                <div class="mb-3">
                    <label for="username" class="form-label">Username</label>
                    <input type="text" class="form-control" id="username" name="username" placeholder="Enter your username" required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" required>
                </div>
                <button type="submit" class="btn btn-custom w-100 mt-3">Register</button>
            </form>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
