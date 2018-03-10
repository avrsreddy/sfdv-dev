trigger AccountTrigger on Account (before insert,after insert) {
    
    System.debug('starting account before trigger....');
    // before insert will have a new set of records science it doent have a redf in db so we can update the fields and we cant delete obj and perform DML
    if(Trigger.isBefore){
        for(Account acc:Trigger.new){
            acc.Website='www.google.com';
        }
    }
    /*for(Account acc:[select name from Account]){
        System.debug('acc->>>>'+acc.Name);
    }*/
   
    if(Trigger.isAfter){
        for(Account acc:Trigger.old){
            System.debug('new value after insert'+acc.Website);
        }
    }
    
    
    
}