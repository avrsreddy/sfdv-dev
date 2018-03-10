trigger EmployeeTrigger on Employee__c (before insert,before update) {

    for(Employee__C emp:Trigger.new)
    {
     //   emp.CurrencyIsoCode='INR';
     //   emp.serviceline__c='Business Application';
       system.debug('image ->>'+emp.Rich_Test__c);
       /* if(emp.Rich_Test__c!=null){
        if(!emp.Rich_Test__c.contains('</img>')){
            system.debug('image uploaded->>>>>>');
            emp.addError('enter some value');
        }
            }*/
       // insert emp; // will throw runtime exception System.SObjectException: 
       //insert Trigger.new; // will throw runtime exception System.SObjectException: 
      	// [select name from Employee__c where id=emp.Id]; bad practice that causes limit exceads
      	// [select name from Employee__c where id in :Trigger.new] best practice
      	// use collections to insert or update to overcome limits
        /* try{
       
        }
        catch(System.Exception e){
            system.debug('failed->>>>>>'+e.getMessage());
        }*/
    }
    
}