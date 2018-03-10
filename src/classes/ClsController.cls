public with sharing class ClsController {
public List<Contact> contacts {get;set;}
public String searchString {get;set;}

   public ClsController(){
    contacts=[select name,accountId,email,phone from Contact limit 10];
    //doSearch();
    }
    public void save(){
    update contacts;
    }
    
    public PageReference doSearch(){
    String queryString;
    queryString=(searchString!=null)?'%'+searchString+'%':'';
    contacts=[select name,accountId,email,phone from Contact where name like :queryString];
    return null;
    }

}