public with sharing class AccountController1_picklistrendering {
    public String selectedAccId{get;set;}
    public String selectedConId{get;set;}
      
          public List<SelectOption> getAccountNames() {
                  List<SelectOption> accOptions= new List<SelectOption>();
                  accOptions.add( new SelectOption('','--Select--'));
                  for( Account acc : [select Id,name from Account ] ) {
                          accOptions.add( new SelectOption(acc.Id,acc.name));
                  }
                 return accOptions;
           }
         
           public List<SelectOption> getContactNames() {
                  System.debug('Entered ContactNames account id...........'+selectedAccId );
                  List<SelectOption> conOptions= new List<SelectOption>();
                  List<SelectOption> options = new List<SelectOption>();
                    if(selectedAccId != null)
                    {     
                       for( contact con : [select Id,name,accountid from contact where accountid=:selectedAccId ] ) {
                          conOptions.add( new SelectOption(con.Id,con.name));
                       }
                    }                  
                    else
                    {
                        conOptions.add( new SelectOption('--None--','--None--'));
                    }
                 return conOptions;
           }
    }