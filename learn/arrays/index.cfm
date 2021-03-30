<cfscript>
    wirebox = new wirebox.system.ioc.Injector( "Binder" );
    utilsObj = wirebox.getInstance("models.Utils");

    utilsObj.wopln("arrays are going here");

    meals = ["breakfast", "lunch", "dinner"];
    utilsObj.wopln();
    displayMeals(meals);
    displayMealsToo(meals);
    utilsObj.wopln(meals.len());

    meals.append("dessert");
    utilsObj.wopln();
    displayMeals(meals);
    displayMealsToo(meals);
    utilsObj.wopln(meals.len());

    function displayMeals(pMeals){
        for(item in pMeals){
            utilsObj.wopln(item);
        }
    }

    function displayMealsToo(pMeals){
        pMeals.each(function(pElement, pIndex){
            utilsObj.wopln(pElement & " " & pIndex);
        });
    }
</cfscript>