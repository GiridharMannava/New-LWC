public class picklstaccout{

public string industry{set;get;}
public string type{set;get;}
public string rating{set;get;}

public list<account> aclst{set;get;}

public List<selectOption>gettypes(){

 List<SelectOption> options1 = new List<SelectOption>();
 
 Schema.DescribeFieldResult fieldResult =Account.Type.getDescribe();
 
   List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();
        
   for( Schema.PicklistEntry f : ple)
   {
      options1.add(new SelectOption(f.getLabel(), f.getValue()));
   }       
   return options1;
}

public List<SelectOption> getCountries() {

  List<SelectOption> options = new List<SelectOption>();
        
  Schema.DescribeFieldResult fieldResult =Account.Industry.getDescribe();
 
   List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();
        
   for( Schema.PicklistEntry f : ple)
   {
      options.add(new SelectOption(f.getLabel(), f.getValue()));
   }       
   return options;
}
public List<SelectOption> getCountries3() {
List<SelectOption> options3 = new List<SelectOption>();
Schema.DescribeFieldResult fieldResult =Account.Rating.getDescribe();
return options3;
}
public picklstaccout(){

}

public void queryaccrecord(){

aclst=[select id,name,industry,type,rating from account where industry=:industry and type=:Type and Rating=:Rating];

}


}