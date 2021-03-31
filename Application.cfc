component{
    this.defaultdatasource="mySqlDB";
    this.datasources={
        mySqlDB={
            class : "com.mysql.jdbc.Driver",
            connectionString : "jdbc:mysql://localhost:3307/testdb?useUnicode=true&characterEncoding=UTF-8&useLegacyDatetimeCode=true",
            username : "root",
            password : "root"
        }
    };

    public boolean function onApplicationStart(){
        application.dsn = this.datasources.mySqlDB;

        application.PersonService = createObject("models.person.PersonService").init( datasource = application.dsn );

        return true;
    }

    public boolean function onRequestStart(){
        

        if (StructkeyExists(url, 'reloadApp') AND url.reloadApp EQ 1) {
            this.onApplicationStart();
        }

        return true;
    }

}