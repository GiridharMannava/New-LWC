global class contactupdate implements Database.Batchable<Sobject> {

global Database.QueryLocator start(Database.BatchableContext BC) {

String query='select id,phone,Account.phone from Contact';

return Database.getQueryLocator(Query);

}

global void execute(Database.BatchableContext BC,List<Contact> Scope) {

List<Contact> con = new List<Contact>();

 for(Contact c : con) {
 
 c.phone=c.Account.phone;
 
 con.add(c);
 
 }
 
 update con;
 
 }
 
   global void finish(Database.BatchableContext BC){
  
}

}