<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>main form</title>
</head>
<body>
    <h1>main form</h1>

    <form name="myform" action="getData.cfm" method="post">
        <label for="num1">num1</label>
        <input type="text" id="num1" name="num1">
        <br><br>
        <label for="num2">num2</label>
        <input type="text" id="num2" name="num2">
        <br><br>
        <input type="submit" name="submit" value="send">
    </form>
</body>
</html>