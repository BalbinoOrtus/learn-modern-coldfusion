component{
    function init(required struct dataSource){
        variables.dataSource = arguments.dataSource;
        
        return this;
    }

    query function getAllPersons(){
        variables.dataSource = "mySqlDB";
        local.persons = queryExecute("SELECT ID,NAME,AGE FROM Person",{}, {datasource=variables.dataSource});
        //qryResult = queryExecute("SELECT * FROM Employees", {}, {datasource="myDataSourceName"});
        return persons;
    }
}