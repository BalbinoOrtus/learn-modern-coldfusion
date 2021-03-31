<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>main portal</title>
</head>
<body>
    <h1>main portal</h1>

    <br>
    <div>
        <a href="personMain.cfm">person main</a>
    </div>
    <br>

    <cfscript>
        wirebox = new wirebox.system.ioc.Injector( "Binder" );
        utilsObj = wirebox.getInstance("models.Utils");

        persons = queryExecute("SELECT ID,NAME,AGE FROM Person");
        writeDump(persons);

        displayPerson(persons);
        utilsObj.wopln();

        displayPersonToo(persons);
        utilsObj.wopln();

        utilsObj.wopln(persons["name"][1]);

        function displayPerson(pPersons){
            for(person in pPersons){
                utilsObj.wopln(person.name);
            }
            utilsObj.wopln("done!");
        }

        function displayPersonToo(pPersons){
            pPersons.each(function(pRow, pIndex){
                utilsObj.wopln("i am #pRow.name# and #pRow.age#");
            });
            utilsObj.wopln("done too!");
        }
    </cfscript>
</body>
</html>

