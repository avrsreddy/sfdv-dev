public class CustomFieldCreation {

    public void createield(){
        
MetadataService.MetadataPort service = new MetadataService.MetadataPort();  
service.SessionHeader = new MetadataService.SessionHeader_element();
service.SessionHeader.sessionId = UserInfo.getSessionId();

List<MetadataService.Metadata> fields = new List<MetadataService.Metadata>();
MetadataService.CustomField customField = new MetadataService.CustomField();
		customField.fullName = 'Employee__c.TestField1__c';
		customField.label = 'Test Field';
		customField.type_x = 'Text';
		customField.length = 42;
        customField.externalid=true;
        customField.unique=true;
fields.add(customField);
List<MetadataService.SaveResult> results = service.createMetadata(new MetadataService.Metadata[] { customField });	
        
    }
    
    
}