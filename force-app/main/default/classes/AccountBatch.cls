global class AccountBatch implements Database.Batchable<Sobject> {

  global Database.QueryLocator start(Database.BatchableContext BC) {
  
     String query='select id,name from Account';
  
     return Database.getQueryLocator(Query);
    
  }

  global void execute(Database.BatchableContext BC,List<Account> Scope) {

     List<Account> acc = new List<Account>();

     for(Account a : acc) {

       a.name = 'Mr.'+a.name;

       acc.add(a);

}

  update acc;

}

  global void finish(Database.BatchableContext BC){
  
}

}