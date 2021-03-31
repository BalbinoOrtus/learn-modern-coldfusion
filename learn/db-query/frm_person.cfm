<cfscript>
    param name="url.pid" default="0";

    person = application.PersonService.getPerson(person_id = url.pid);
</cfscript>


<cfoutput>
<form action="">
    
    <input name="fname" type="text" value="#person.getFname()#">
    <input name="fname" type="text" value="#person.getLname()#">

    <input name="id" type="text" value="#person.getPerson_Id()#">

</form>
</cfoutput>