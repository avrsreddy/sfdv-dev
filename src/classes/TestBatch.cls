global class TestBatch implements Database.Batchable<sObject> {
    
   global Database.QueryLocator  start(Database.BatchableContext bc) {
       // collect the batches of records or objects to be passed to execute
         String query = 'SELECT Id,Name FROM Account';
        return Database.getQueryLocator(query);
   }

    global void execute(Database.BatchableContext bc, List<sObject> records){
       // process each batch of records
   }    
 
   global void finish(Database.BatchableContext bc){
       // execute any post-processing operations
   } 
}