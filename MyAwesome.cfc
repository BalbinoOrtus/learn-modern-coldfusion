/**
 * this is my component
 * @author Luis Majano
 */
component extends="Base" implements="IHello" singleton{
    /**
     * the settings
     */
    property name="settings";

    /**
     * Constructor
     *
     * @wirebox the injector
     * @wirebox.inject wirebox
     * @vars the vars i need
     * @vars.generic Array
     * 
     * @return MyComponent
     * @throws SomethingException
     */
    function init( required wirebox, required vars ){
        variables.wirebox = arguments.wirebox;
        return this;
    }
}