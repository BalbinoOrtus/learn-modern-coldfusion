component singleton{
    function nextLine(message = ""){
        return message & "<br>";
    }

    function wop(message=""){
        writeOutput(message);
    }

    function wopln(message=""){
        writeOutput(nextLine(message));
    }
}