global class accounttest implements Database.Batchable<sObject>{

   public string querys;

   global accounttest(string qury){

      querys=qury;
      
   }

   global Database.QueryLocator start(Database.BatchableContext BC){
      return Database.getQueryLocator(querys);
   }

   global void execute(Database.BatchableContext BC, List<Account> Acc){
     
     for(Account mnr:Acc){
       mnr.Website ='www.google.com';
     }
     Update acc;
     
    }

   global void finish(Database.BatchableContext BC){
   }



}