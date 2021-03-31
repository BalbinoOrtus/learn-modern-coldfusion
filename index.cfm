<cfscript>
    param name="url.act" default="home";

    switch(url.act) {
    case "home":
        request.persons = application.PersonService.getAllPersons();
        // request.otherq1 = application.PersonService.getAllPersons();

        include "/learn/db-query/personMain.cfm";

    case "other":
        writeOutput("I like kiwi!"); 
        break; 
    default: 
        writeOutput("Fruit, what fruit?"); 
        break; 
 }

</cfscript>
