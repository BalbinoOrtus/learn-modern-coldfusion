component{
    function init(required struct dataSource){
        variables.dataSource = arguments.dataSource;

        variables.personDAO = createObject('PersonDAO').init(dataSource = arguments.dataSource);
        variables.personGateway = createObject('PersonGateway').init(dataSource = arguments.dataSource);
        
        return this;
    }


    person function getPerson( numeric person_id=0 ) {
        local.person = createObject('person');


        if (arguments.person_id GT 0) {
            
        }


        return local.person;
    }



    query function getAllPersons(){

        local.qry_person = variables.personGateway.getAllPersons();

        // local.parray = ArrayNew(1);

        // for (i = 1; i <= local.qry_person.recordCount; i++) { 
        //     local.person = createObject('person');
        //     local.person.setFname(local.qry_person.fname[i]);
        //     local.person.setlname(local.qry_person.lname[i]);
        //     local.parray[i] = local.person;
        // } 

        // return local.parray;
        

        return variables.personGateway.getAllPersons();
    }

    numeric function create(required string fname,
                             required string lname) {

        

        return variables.personDAO.create( fname = arguments.fnmae, lname = arguments.lname);
    }


}