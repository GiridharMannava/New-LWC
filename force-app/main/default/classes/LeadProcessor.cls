global class LeadProcessor implements Database.Batchable<sObject> {

 global Database.QueryLocator start(Database.BatchableContext bc) {
 
   String Query='select ID,Name,Company,Status from Lead';
 
   return Database.getQueryLocator(Query);
}  
global void execute(Database.BatchableContext bc,List<Lead> Scope) { 
  
List<Lead> leds = [select id,leadsource from lead];
   
    for(Lead l : leds) {
   
    l.LeadSource = 'Dreamforce';
       
}
   update leds;
   
}
  global void finish(Database.BatchableContext bc){
  
}

}