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
        application.PersonService.createPerson(form.name, form.age);
        location("?action=home&msg=createsuccess", false);
        break;
    case "updateStart":
        include "/learn/db-query/personForm.cfm";
        break;
    case "updateEnd":
        application.PersonService.createPerson(form.name, form.age);
        include "/learn/db-query/personForm.cfm";
        break;
    case "delete":
        application.PersonService.deletePerson(url.pid);
        location("?action=home&msg=deletesuccess", false);
        break;
    default:
        writeOutput("Fruit, what fruit?");
        break;
 }

</cfscript>
