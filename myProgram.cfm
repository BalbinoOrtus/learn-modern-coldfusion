<!--- tag syntax --->
<p>
<cfset s = new Sample()>
<cfoutput>#s.hello()#</cfoutput>
</p>

<!--- script syntax --->
<p>
<cfscript>
    s = new Sample();
    writeOutput(s.hello());
</cfscript>
</p>

<!--- tags in scripts --->
<!--- <cfscript>
    cfform( name="myform", action=""){
        cfgrid( name="mygrid", query="empQuery"){
            cfgridcolumn( name="firstname", id="firstname", type="string");
            cfgridcolumn( name="lastname", id="lastname", type="string");
        }
    }
</cfscript> --->

<!--- variables --->
<p>
<cfscript>
    a = "string"; //string
    b = now(); //data
    c=123; //integer
    d=1.34; //float
    f=false; //boolean
    writeOutput("now is #b#");

    /* writeDump(b);
    abort; */

    /* isDefined */
    if(isDefined("c")){
        writeOutput(c);
    }else{
        writeOutput("not defined!");
    }

    if(isDefined("z")){
        writeOutput(z);
    }else{
        writeOutput("not defined!");
    }

    /* isNull */
    //Returns true if the specified object is null.
    
    if(isNull(d)){
        writeOutput(d);
    }else{
        writeOutput("is null");
    }

    /* structKeyExists */
    if(structKeyExists(variables, "a")){
        writeOutput(a);
    }else{
        writeOutput("not defined!");
    }
    writeDump(variables);
    abort;

</cfscript>
</p>