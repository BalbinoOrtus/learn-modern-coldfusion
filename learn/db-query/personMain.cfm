<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>person main</title>
</head>
<body>
    <h1>person main</h1>

    <br><br>
    <a href="?act=other">foobar</a>
    <br><br>

    <div class="container">
        <div class="newlink">
            <a href="frm_person.cfm">new person</a>
        </div>

        <div class="tablediv">
            <table>
                <tr>
                    <th>id</th>
                    <th>name</th>
                    <th>age</th>
                </tr>
                <cfoutput query = "request.persons" encodefor="html">
                    <tr>
                        <td>#request.persons.id#</td>
                        <td>#request.persons.name#</td>
                        <td>#request.persons.age#</td>
                        <td><a href="frm_person.cfm?pid=#request.persons.id#">modify</a></td>
                        <td>delete</td>
                    </tr>
                </cfoutput>
            </table>
        </div>
    </div>
</body>
</html>