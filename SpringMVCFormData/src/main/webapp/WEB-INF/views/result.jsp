<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Submission Result</title>
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f9f9f9;
            color: #555;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        h2 {
            color: #007bff;
            text-align: center;
            font-size: 1.8rem;
            margin-bottom: 20px;
        }

        p {
            font-size: 1rem;
            line-height: 1.6;
            margin: 10px 0;
            color: #333;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            padding: 12px 20px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            font-weight: bold;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        a:hover {
            background-color: #0056b3;
            transform: translateY(-3px);
        }

        .container {
            max-width: 450px;
            background: white;
            padding: 25px 35px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
            border-radius: 12px;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Form Submission Result</h2>
        <p>Hello, ${user.name}!</p>
        <p>Email: ${user.email}</p>
        <p>Agreed to Terms: ${user.agreeToTerms ? "Yes" : "No"}</p>
        <p>Gender: ${user.gender}</p>
        <p>Country: ${user.country}</p>
        <a href="form">Go Back</a>
    </div>
</body>
</html>
