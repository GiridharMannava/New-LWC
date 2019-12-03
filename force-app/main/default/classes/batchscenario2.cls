global class batchscenario2 implements Database.Batchable<Sobject> {

global Database.QueryLocator start(Database.BatchableContext BC){

return Database.getQueryLocator('SELECT id,Phone,Account.phone From contact');
}
global void execute(Database.BatchableContext BC, list<Contact> Scope){

List<Contact> con = new List<Contact>();

 for(Contact c: con) {
      c.Phone=c.Account.Phone;
      con.add(c);    
     }
      update con;
}
global void finish(Database.BatchableContext BC){
   }
}