<cfscript>
    wirebox = new wirebox.system.ioc.Injector( "Binder" );
    utilsObj = wirebox.getInstance("models.Utils");

    produce = {
        grapes = 2,
        lemons = 1,
        eggplants = 6
    };

    utilsObj.wopln("my grapes: #produce['grapes']#");
    utilsObj.wopln("my eggplants: #produce['eggplants']#");

    produce.lemons = 3; //same as produce["lemons"]=3;
    produce.eggplants--;
    utilsObj.wopln(produce.toString());

    linkedList = structNew("ordered");
    cache = structNew("soft");

    utilsObj.wopln("produce count: "&produce.count());
    utilsObj.wopln("produce is empty: "&produce.isEmpty());

    if(produce.keyExists("apples")){
        utilsObj.wopln("there are apples");
    }else{
        utilsObj.wopln("there are no apples");
    }

    if(produce.keyExists("eggplants")){
        utilsObj.wopln("there are eggplants");
    }else{
        utilsObj.wopln("there are no eggplants");
    }

    displayProduce(produce);
    utilsObj.wopln();
    displayProduceToo(produce);

    function displayProduce(pProduce){
        for(var key in pProduce){
            utilsObj.wopln("i bought #pProduce[key]# #key#");
        }
    }

    function displayProduceToo(pProduce){
        pProduce.each(function(pKey, pValue){
            utilsObj.wopln("i bought #pValue# #pKey#");
        });
        utilsObj.wopln("too");
    }
</cfscript>