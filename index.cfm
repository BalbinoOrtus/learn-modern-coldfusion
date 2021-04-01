<cfscript>
    param name="url.action" default="home";

    switch(url.action) {
    case "home":
        request.persons = application.PersonService.getAllPersons();
        include "/learn/db-query/personMain.cfm";
        break;
    case "newStart":
        include "/learn/db-query/personForm.cfm";
        break;
    case "newEnd":
        application.PersonService.createPerson(url.name, url.age);
        request.persons = application.PersonService.getAllPersons();
        include "/learn/db-query/personMain.cfm";
        break;
    case "updateStart":
        include "/learn/db-query/personForm.cfm";
        break;
    case "updateEnd":
        include "/learn/db-query/personForm.cfm";
        break;
    case "delete":
        application.PersonService.deletePerson(url.pid);
        request.persons = application.PersonService.getAllPersons();
        include "/learn/db-query/personMain.cfm";
        break;
    default:
        writeOutput("Fruit, what fruit?");
        break;
 }

</cfscript>
