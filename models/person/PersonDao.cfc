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
    void function update() {

        // update query

    }

    //delete
    void function delete(pId){
        queryExecute("DELETE FROM Person WHERE ID= :pId",
                    {pId = {value=arguments.pId, cfsqltype="numeric", list=true}},
                    {datasource=variables.dataSource});
    }
}