component{
    function init(required struct dataSource){
        variables.dataSource = arguments.dataSource;

        variables.personDAO = createObject('PersonDAO').init(dataSource = arguments.dataSource);
        variables.personGateway = createObject('PersonGateway').init(dataSource = arguments.dataSource);

        return this;
    }


    person function getPerson( numeric pId=0 ) {
        local.person = createObject('person');


        if (arguments.pId GT 0) {
            personQuery = variables.personGateway.getPersonById(arguments.pId);
            local.person.setId(personQuery.id);
            local.person.setName(personQuery.name);
            local.person.setAge(personQuery.age);
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

    void function createPerson(required string pName,required numeric pAge) {
        variables.personDAO.create(pId = 0, pName = arguments.pName, pAge = arguments.pAge);
    }

    void function updatePerson(required numeric pId, required string pName, required numeric pAge){
        variables.personDAO.update(pId = arguments.pId, pName=arguments.pName, pAge=arguments.pAge);
    }

    void function deletePerson(required numeric pId){
        variables.personDAO.delete(pId);
    }


}