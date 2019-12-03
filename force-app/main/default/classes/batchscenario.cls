global class batchscenario implements Database.Batchable<Sobject> {

public string indus;

global batchscenario(String Industry) {
indus=Industry;
}

global Database.QueryLocator start(Database.BatchableContext BC){
   
 return Database.getQueryLocator('SELECT id,Phone,Industry From Account where industry=:indus');
   }

global void execute(Database.BatchableContext BC, list<Account> Scope){
            
            set<Id> sid=new Set<Id>();
            for(Account act: Scope) {
            sid.add(act.Id);
            act.Phone='1364';     
            }
            update Scope;
            
            List<Contact> lst=[select id,phone,account.phone from contact where accountid in:sid];
            for(Contact cn:lst){
            
            cn.phone=cn.account.phone;
            }
            update lst;
            
      
    
    }

global void finish(Database.BatchableContext BC){
   }
}