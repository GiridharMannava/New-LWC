public class selectlst{

public string test{set;get;}

public List<string> test1{set;get;}

public list<Account> aclst{set;get;}


public List<SelectOption> getCountries()
{
  List<SelectOption> options = new List<SelectOption>();
        
   Schema.DescribeFieldResult fieldResult =Account.type.getDescribe();
   
   List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();
        
   for( Schema.PicklistEntry f : ple)
   {
      options.add(new SelectOption(f.getLabel(), f.getValue()));
   }       
   return options;
}


public List<SelectOption> getCountries1()
{
  List<SelectOption> options = new List<SelectOption>();
        
   
        
      options.add(new SelectOption('Id', 'Id'));

      options.add(new SelectOption('Name', 'Name'));
          
   return options;
}


public void accoutn(){

 aclst=[select id,name from account where type=:test];

}




}