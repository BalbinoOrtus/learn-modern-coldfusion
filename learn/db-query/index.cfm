<cfscript>
    wirebox = new wirebox.system.ioc.Injector( "Binder" );
    utilsObj = wirebox.getInstance("models.Utils");

    qItems = queryExecute("SELECT ID,NAME,AGE FROM Person");
    writeDump(qItems);
    for(person in qItems){
        utilsObj.wopln(person.name);
    }
    utilsObj.wopln(qItems["name"][1]);
</cfscript>