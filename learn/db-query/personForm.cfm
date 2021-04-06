<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>person form</title>
</head>
<body>
    <h1>person form</h1>

    <cfscript>
        param name="url.pid" default="0";
        person = application.PersonService.getPerson(pId = url.pid);
    </cfscript>


    <cfoutput>
        <form action="#(url.action=="newStart")?"?action=newEnd":"?action=updateEnd"#" method="post">
            <label for="id">id</label>
            <input name="id" type="#(url.action=="newStart")?"hidden":"text"#" value="#person.getId()#">
            <br><br>
            <label for="id">name</label>
            <input name="name" type="text" value="#person.getName()#">
            <br><br>
            <label for="id">age</label>
            <input name="age" type="number" value="#person.getAge()#">
            <br><br>
            <input type="submit" value="#(url.action=="newStart")?"Create":"Update"#">
        </form>
    </cfoutput>

</body>
</html>

