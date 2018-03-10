public with sharing class MySampleClass{
	
	public List<String> name {get;set;}
	
	MySampleClass(){
	name=new List<String>{'rajasekhar','ramya krishna'};	
	}
	
	public void displayName(){
		System.debug('name in the list'+name);
	}
}