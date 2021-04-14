component{
    function init(required struct dataSource){
        variables.dataSource = arguments.dataSource;
        return this;
    }

    //CRUD goes here

    //read

    //create
    void function create(required numeric pId, required string pName, required numeric pAge) {

        // query to create goes here
        queryExecute("INSERT INTO Person(id,name,age) VALUES(?,?,?)",
                    [
                        arguments.pId,
                        arguments.pName,
                        arguments.pAge
                    ],
                    {datasource=variables.dataSource});
    }

    //update
    void function update(required numeric pId, required string pName, required numeric pAge) {
        // update query
        queryExecute("UPDATE Person SET name = ?, age = ? WHERE id = ?;",
                    [
                        arguments.pName,
                        arguments.pAge,
                        arguments.pId
                    ],{datasource=variables.dataSource});
    }

    //delete
    void function delete(pId){
        queryExecute("DELETE FROM Person WHERE ID= :pId",
                    {pId = {value=arguments.pId, cfsqltype="numeric", list=true}},
                    {datasource=variables.dataSource});
    }
}