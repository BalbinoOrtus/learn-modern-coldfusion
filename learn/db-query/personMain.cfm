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

    <cfscript>
        persons = queryExecute("SELECT ID,NAME,AGE FROM Person");
    </cfscript>

    <div class="container">
        <div class="newlink">
            <a href="#">new person</a>
        </div>

        <div class="tablediv">
            <table>
                <tr>
                    <th>id</th>
                    <th>name</th>
                    <th>age</th>
                </tr>
                <cfoutput query = "persons" encodefor="html">
                    <tr>
                        <td>#persons.id#</td>
                        <td>#persons.name#</td>
                        <td>#persons.age#</td>
                    </tr>
                </cfoutput>
            </table>
        </div>
    </div>
</body>
</html>