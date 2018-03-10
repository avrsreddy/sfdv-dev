public class ContactController {

    @AuraEnabled
    public static List<Contact> findAll(){
        return [select firstName,LastName from Contact];
    }
}