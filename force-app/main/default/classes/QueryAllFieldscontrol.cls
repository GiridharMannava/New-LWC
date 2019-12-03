public with sharing class QueryAllFieldscontrol {

    public list<String> qfiled { get; set; }

    public list<sobject> allsobj { get; set; }

    public String fields1 { get; set; }

  public QueryAllFieldscontrol (){
  allsobj=new list<sobject>();
  qfiled =new list<string>();
  
  }
    public PageReference Fetch() {
    //str=null;
    allsobj.clear();
    qfiled.clear(); 
     map<string,Schema.SObjectType> fd = Schema.getGlobalDescribe();
    map<String,Schema.SobjectField> fc=fd.get(listval).getDescribe().fields.getMap();
    set<string> se=fc.keyset();
    str='select';
        for(string sc:se)
        {
          str=sc+'';  
          qfiled.add(sc);
                 
          }
          str+='from'+listval;
          
    
        return null;
    }


    public list<selectoption> getSobjectnames() {
    list<schema.sobjecttype> gd= schema.getglobaldescribe().values();
    list<selectoption> options =new list<selectoption>();
    for(schema.sobjecttype gh:gd)
    {
       options.add(new selectoption(gh.getdescribe().getname(),gh.getdescribe().getname()));
    }
        return options;
    }

  public string str;
    public String listval { get; set; }
    list<sobject> query1=new list<sobject>();

   public PageReference search() {
   String SobjectApiName = listval;
        Map<String, Schema.SObjectType> schemaMap = Schema.getGlobalDescribe();
        Map<String, Schema.SObjectField> fieldMap = schemaMap.get(SobjectApiName).getDescribe().fields.getMap();
 
        String commaSepratedFields = '';
        for(String fieldName : fieldMap.keyset()){
            if(commaSepratedFields == null || commaSepratedFields == ''){
                commaSepratedFields = fieldName;
            }else{
                commaSepratedFields = commaSepratedFields + ', ' + fieldName;
            }
        }
 
        fields1=  'select '+commaSepratedFields+' from ' + SobjectApiName ;
   
     
    
     allsobj =database.query(fields1);
     //system.debug(query1);
      return  null;
     
    }

}