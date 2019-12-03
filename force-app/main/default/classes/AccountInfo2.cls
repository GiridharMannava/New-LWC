public class AccountInfo2 {
    
    public List<Account> objacc {get;set;}
    
    public string AType{get;set;}
      public  List<SelectOption> Types{get;set;}
 
    
    public AccountInfo2()
    {
        objacc=new List<Account>();
        Types= new List<SelectOption>();
        
   Schema.DescribeFieldResult fieldResult =
 Account.Type.getDescribe();
   List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();
        
   for( Schema.PicklistEntry f : ple)
   {
      Types.add(new SelectOption(f.getLabel(), f.getValue()));
   } 
   AType = Types[0].getValue();      
  // return options;
        
        //string search='select id,Name,phone,fax from Account';
        
        //objacc=Database.Query(search);
        Display();
    }
    
    public pageReference Display()
    {
        //string search='select id,Name,phone,fax from Account where Type = '+AType;
            
            objacc=[select id,Name,phone,fax from Account where Type = :AType];//Database.query(search);
            system.debug('@@@'+objacc.size()+'##'+AType);
        return null;
        
    }
    
    
}