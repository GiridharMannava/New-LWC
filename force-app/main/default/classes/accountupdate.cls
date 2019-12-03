global class accountupdate implements Database.Batchable<sObject>{

   public string querys;

   global accountupdate(string qury){

      querys=qury;
      
   }

   global Database.QueryLocator start(Database.BatchableContext BC){
      return Database.getQueryLocator(querys);
   }

   global void execute(Database.BatchableContext BC, List<Account> Acc){
     
     for(Account act:Acc){
       act.NumberofLocations__c =20;
     }
     Update acc;
     
    }

   global void finish(Database.BatchableContext BC){
   }



}