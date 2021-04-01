component{
    function init(required struct dataSource){
        variables.dataSource = arguments.dataSource;
        
        return this;
    }

    query function getAllPersons(){
        variables.dataSource = "mySqlDB";
        local.persons = queryExecute("SELECT ID,NAME,AGE FROM Person",{}, {datasource=variables.dataSource});
        return persons;
    }

    query function getPersonById(required numeric pId){
        variables.dataSource = "mySqlDB";
        local.persons = queryExecute("SELECT ID,NAME,AGE FROM Person where ID= :pId",
                                    {pId = {value=arguments.pId, cfsqltype="numeric", list=true}}, 
                                    {datasource=variables.dataSource});
        return persons;
    }

}