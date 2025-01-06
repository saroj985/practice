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
            background: linear-gradient(135deg, #ff7e5f, #feb47b, #ff6a00);
            font-family: 'Poppins', sans-serif;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .logo {
            position: fixed;
            top: 10px;
            left: 10px;
            font-size: 1.2rem;
            font-weight: bold;
            color: #fff;
            background: repeating-radial-gradient(#f69d3c, #3f87a6 50px);
            padding: 5px 10px;
            text-align: center;
            font-family: 'Courier New', Courier, monospace;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3); /* Added shadow */
            z-index: 1000;
            line-height: 1.2;
        }
        .logo span {
            display: block;
        }
        .card {
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }
        .card-header {
            background-color: #6c63ff;
            color: #fff;
            text-align: center;
            font-size: 1.8rem;
            font-weight: bold;
            padding: 1rem;
            letter-spacing: 1px;
        }
        .form-label {
            color: #6c63ff;
            font-weight: 600;
        }
        .btn-custom {
            background: #ff758c;
            color: #fff;
            font-weight: 600;
            font-size: 1rem;
            border: none;
            padding: 10px;
            transition: all 0.3s ease;
        }
        .btn-custom:hover {
            background: #ff4757;
            transform: scale(1.05);
        }
        .extra-field-label {
            color: #ff4757;
            font-weight: 500;
        }
        input, select {
            font-size: 1rem;
        }
    </style>
</head>
<body>
    <div class="logo">
        <span>ZORBA</span>
        <span>Project</span>
    </div>
    <div class="card shadow-lg" style="width: 100%; max-width: 500px;">
        <div class="card-header">
            Passenger Registration
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
                    <label for="type" class="form-label">Passenger Type</label>
                    <select class="form-select" id="type" name="type" required>
                        <option value="" disabled selected>Select Passenger Type</option>
                        <option value="general">General</option>
                        <option value="senior_citizen">Senior Citizen</option>
                        <option value="physically_handicapped">Physically Handicapped</option>
                    </select>
                </div>
                <div id="extraFields"></div>
                <button type="submit" class="btn btn-custom w-100 mt-3">Register</button>
            </form>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        const typeSelect = document.getElementById("type");
        const extraFieldsDiv = document.getElementById("extraFields");

        typeSelect.addEventListener("change", function () {
            extraFieldsDiv.innerHTML = '';

            if (typeSelect.value === "senior_citizen") {
                extraFieldsDiv.innerHTML = `
                    <div class="mb-3">
                        <label for="seniorId" class="form-label extra-field-label">Senior Citizen ID</label>
                        <input type="text" class="form-control" id="seniorId" name="seniorId" placeholder="Enter your Senior Citizen ID" required>
                    </div>
                `;
            } else if (typeSelect.value === "physically_handicapped") {
                extraFieldsDiv.innerHTML = `
                    <div class="mb-3">
                        <label for="proof" class="form-label extra-field-label">Physical Handicapped Proof</label>
                        <input type="text" class="form-control" id="proof" name="proof" placeholder="Enter your Proof ID" required>
                    </div>
                `;
            }
        });
    </script>
</body>
</html>
