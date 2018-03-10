trigger AppoinmentTrigger on Apponment__c (after insert,after update) {

    List<Patient__c> patients=new List<Patient__c>();
    List<ID> patientIds=new List<ID>();
    
    for(Apponment__c c:Trigger.new){
    	patientIds.add(c.Patient__c);    
    }
    system.debug('patient IDs-->>>'+patientIds);
    
    for(Patient__c p:[select name,Email__C from Patient__c where id=:patientIds]){
        patients.add(p);
    }
    system.debug('patients-->>>'+patients);
    
    
}