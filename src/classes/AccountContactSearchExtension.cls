public class AccountContactSearchExtension {

    public List<Contact> contacts {get;set;}
    public String searchString{get;set;}
    public String accountId;
    
    public AccountContactSearchExtension(ApexPages.StandardController sc){
        searchString='';
        accountId=sc.getId();
        doSearch();
    }
    
    public PageReference doSearch(){
        system.debug('accountId-->>>>>>'+accountId);
        contacts=[select name,accountId,email,phone from Contact where accountId=:accountId and name like :searchString+'%' ];
        system.debug('contacts--->>'+contacts);
        return null;
    }
    
}