component{
    function init(required struct dataSource){
        variables.dataSource = arguments.dataSource;
        return this;
    }

    //CRUD goes here

    //read

    //create
    numeric function create(required string fname,
                             required string lname) {

        // query to create goes here

        return person_id;
    }

    //update
    void function update() {

        // update query
        
    }
}