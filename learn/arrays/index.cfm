<cfscript>
    wirebox = new wirebox.system.ioc.Injector( "Binder" );
    utilsObj = wirebox.getInstance("models.Utils");

    utilsObj.wopln("arrays are going here");
    
</cfscript>