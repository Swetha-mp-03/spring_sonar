<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Enhanced Form</title>
    <style>
          body {
                    font-family: Arial, sans-serif;
                    background-color: #f9f9f9;
                    margin: 0;
                    padding: 0;
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    height: 100vh;
                }

                .form-container {
                    background-color: #fff;
                    border-radius: 10px;
                    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
                    padding: 20px 30px;
                    max-width: 400px;
                    width: 100%;
                }

                h2 {
                    margin-bottom: 20px;
                    font-size: 1.5rem;
                    text-align: center;
                    color: #333;
                }

                label {
                    display: block;
                    margin-bottom: 5px;
                    font-weight: bold;
                    color: #555;
                }

                input, select, button {
                    width: 100%;
                    padding: 10px;
                    margin-bottom: 15px;
                    border: 1px solid #ddd;
                    border-radius: 5px;
                    font-size: 1rem;
                }

                input[type="checkbox"], input[type="radio"] {
                    width: auto;
                    margin-right: 10px;
                }

                .checkbox-group, .radio-group {
                    display: flex;
                    align-items: center;
                    margin-bottom: 15px;
                }

                button {
                    background-color: #007bff;
                    color: #fff;
                    border: none;
                    cursor: pointer;
                    transition: background-color 0.3s ease;
                }

                button:hover {
                    background-color: #0056b3;
                }

                .error {
                    color: #d9534f;
                    font-size: 0.85rem;
                    margin-top: -10px;
                    margin-bottom: 10px;
                }

                select {
                    appearance: none;
                    background: #fff url("data:image/svg+xml;charset=UTF-8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='10' height='10' viewBox='0 0 24 24'%3E%3Cpath fill='%23333' d='M7 10l5 5 5-5z'/%3E%3C/svg%3E") no-repeat right 10px center;
                    background-size: 10px;
                }
    </style>
</head>
<body>
<div class="form-container">
    <h2>Enter Your Details</h2>
    <form:form modelAttribute="user" action="submit" method="POST">
        <label for="name">Name:</label>
        <form:input path="name" id="name"/>
        <form:errors path="name" cssClass="error"/>

        <label for="email">Email:</label>
        <form:input path="email" id="email"/>
        <form:errors path="email" cssClass="error"/>

        <label>
            <form:checkbox path="agreeToTerms"/> Agree to Terms and Conditions
        </label>
        <form:errors path="agreeToTerms" cssClass="error"/>

        <label>Gender:</label>
        <form:radiobutton path="gender" value="Male"/> Male
        <form:radiobutton path="gender" value="Female"/> Female
        <form:errors path="gender" cssClass="error"/>

        <label for="country">Country:</label>
        <form:select path="country" id="country">
            <form:option value="" label="Select a country"/>
            <form:option value="India" label="India"/>
            <form:option value="USA" label="USA"/>
            <form:option value="UK" label="UK"/>
            <form:option value="Australia" label="Australia"/>
        </form:select>
        <form:errors path="country" cssClass="error"/>

        <button type="submit">Submit</button>
    </form:form>
</div>
</body>
</html>
