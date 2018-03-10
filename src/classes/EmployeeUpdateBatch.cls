global class EmployeeUpdateBatch implements Database.Batchable<sObject> {

    global Database.QueryLocator start(Database.BatchableContext BC){
        String query = 'SELECT Id,EmployeeName__c,serviceline__c FROM Employee__c';
        return Database.getQueryLocator(query);
    }
        
    global void execute(Database.BatchableContext BC, List<Employee__c> employees) {
        system.debug('emp list--->'+employees);
         for(Employee__c emp : employees)
         {
           /**  if(emp.serviceline__c.equals('Business Application')){
                 
             emp.EmployeeName__c = emp.EmployeeName__c + ' BA';  
             }*/
             if(emp.EmployeeName__c.endsWith('BA')){
                 emp.EmployeeName__c=emp.EmployeeName__c.subString(0,emp.EmployeeName__c.length()-2);
             }
             
             system.debug('updated name'+emp.EmployeeName__c);
         }
        
         update employees;
    }   
    
    global void finish(Database.BatchableContext BC) {
        	List<Messaging.SingleEmailMessage> mails = 
  new List<Messaging.SingleEmailMessage>();
       Messaging.SingleEmailMessage mail = 
      new Messaging.SingleEmailMessage();
       List<String> sendTo =new List<String>();
        sendTo .add('avrsreddy@gmail.com');
        mail.setToAddresses(sendTo);
        mail.setSubject('Employee Batch Update');
        String body='employees of BA service line updated sucessfully';
       mail.setHtmlBody(body);
        mails.add(mail);
       Messaging.sendEmail(mails);
    }
}