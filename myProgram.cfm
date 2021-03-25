<!--- tag syntax --->
<cfset s = new Sample()>
<cfoutput>#s.hello()#</cfoutput>

<!--- script syntax --->
<cfscript>
    s = new Sample();
    writeOutput(s.hello());
</cfscript>

<!--- tags in scripts --->
<!--- <cfscript>
    cfform( name="myform", action=""){
        cfgrid( name="mygrid", query="empQuery"){
            cfgridcolumn( name="firstname", id="firstname", type="string");
            cfgridcolumn( name="lastname", id="lastname", type="string");
        }
    }
</cfscript> --->