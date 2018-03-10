public class Practice_schema_class {

    public List<String> fields=new List<String>();
    
    public List<String> getApiFielsd(String apiName){
        	
       Map<String,Schema.SObjectField> mapGlobal= Schema.getGlobalDescribe().get(apiName).getDescribe().fields.getMap();
		String result='';
        
        for(String field:mapGlobal.keySet())
        {
           system.debug('api name->>>>>  '+field);
            if(mapGlobal.get(field).getDescribe().isAccessible()){
                fields.add(field);
                result+=result.length()==0?field:','+field;
            }
        }
        system.debug('fields accessable---->>>>>>>'+result );
        return fields;
    }
}