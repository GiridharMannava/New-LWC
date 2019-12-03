public class RetrieveFieldsController

{
public List<String> objFields { get;set; }

public void retrieveFields(){

  // Object Name whose fields we have to retrieve

  String objectName = 'Account'; 

  Map<String , Schema.SObjectType> schemaGlobalDescription = Schema.getGlobalDescribe();

   Schema.sObjectType objType = schemaGlobalDescription.get(objectName); 
   Schema.DescribeSObjectResult objDescribeSObjectResult = objType.getDescribe(); 
   Map<String , Schema.SObjectField> mapFieldList = objDescribeSObjectResult.fields.getMap();  

  for(Schema.SObjectField field : mapFieldList.values())  
  {  
    Schema.DescribeFieldResult fieldResult = field.getDescribe(); 
 // isAccessible () Returns true if the current user can see this object, false otherwise
      if(fieldResult.isAccessible())
        objFields.add(fieldResult.getName());
        
   }
  
  System.debug('objFields--'+objFields);
 }
}