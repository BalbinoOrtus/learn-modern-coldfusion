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
}