public class testdemo{
    
    
    
    
public  testdemo(){
    
    
    
}



public static List<String> getObjectApiname(){
    
    List<String> stlst=new list<String>();
    

    Map<String, Schema.SObjectField> fieldsMap = Schema.SObjectType.Account.fields.getMap();
   
    for (Schema.SObjectField field : fieldsMap.values())
    {
    system.debug(field.getDescribe().getLabel()+'--'+field.getDescribe().getName() );
    
    stlst.add( field.getDescribe().getName() );
    }
    

    
    
    
    
    
    
    
    return stlst;
}
    
    
    
    
    
    
    
    
    
}