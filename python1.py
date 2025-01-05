<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Addition App</title>
</head>
<body>
    <h1>Addition App</h1>
    <form id="addForm">
        <label for="num1">Number 1:</label>
        <input type="number" id="num1" required>
        <br>
        <label for="num2">Number 2:</label>
        <input type="number" id="num2" required>
        <br>
        <button type="button" onclick="addNumbers()">Add</button>
    </form>
    <h2 id="result"></h2>

    <script>
        function addNumbers() {
            const num1 = parseInt(document.getElementById('num1').value);
            const num2 = parseInt(document.getElementById('num2').value);
            const result = num1 + num2;
            document.getElementById('result').innerText = "Result: " + result;
        }
    </script>
</body>
</html>
