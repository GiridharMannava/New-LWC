trigger longtime on Account (before insert,after insert,before delete,after delete) {

List<ConPhones__c> cust = ConPhones__c.getall().values();

if(Trigger.IsInsert && Trigger.IsAfter){

 List<Contact> conts=new List<Contact>();
      
         for(Account ac:Trigger.new){
             
             Contact con=new Contact();
             
             con.LastName=ac.Name;
             
             con.accountId=ac.Id;
             
        
         
             conts.add(con);
         
         }
         
         Insert conts;
}
}