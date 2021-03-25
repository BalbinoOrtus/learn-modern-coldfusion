<!--- tag syntax --->
<cfset s = new Sample()>
<cfoutput>#s.hello()#</cfoutput>

<!--- script syntax --->
<cfscript>
    s = new Sample();
    writeOutput(s.hello());
</cfscript>