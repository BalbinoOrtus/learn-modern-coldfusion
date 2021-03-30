<cfscript>
    function nextLine(message = ""){
        return message & "<br>";
    }

    function wop(message=""){
        writeOutput(message);
    }

    function wopln(message=""){
        writeOutput(nextLine(message));
    }

    name="luis";
    name2="balbino  ";
    listString = "luis, majano, lucas, alexia, veronica";


    writeOutput(nextLine(name[1]));
    for(letter in name){
        writeOutput(letter);
    }
    writeOutput(nextLine());

    /* string functions */
    wopln(name.len());
    wopln(trim(name2));
    wopln(replace(name2, "l", "m"));
    listArray = listString.listToArray();
    writeDump(listArray);
    wopln("ortus is runned by #name#");

    /* json */
    jsonString = "{age:23, name:'carl'}";
    newObject;
    if(isJSON(jsonString)){
        wopln("its json data");
        newObject = deserializeJSON(jsonString);
    }else{
        wopln("its not json data");
    }
    writeDump(newObject);
    wopln();
    wopln(newObject.name)
</cfscript>