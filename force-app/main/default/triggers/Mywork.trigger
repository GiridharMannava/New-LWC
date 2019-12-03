trigger Mywork on Account (Before Insert,After Insert,Before update,After update) {

 if(Trigger.Isinsert && Trigger.Isbefore) {
 
 
    for(Account gr: Trigger.new) {
    
      system.debug('Accounts Inserted'+gr);

       if(gr.SLA__c=='Gold') {
        system.debug('InsideGold');
          
          gr.UpsellOpportunity__c='Maybe';
          
          }else {
          
          system.debug('NotGold');

          
          gr.UpsellOpportunity__c='Yes';
          
          }
            
             
                         
             
      
       }
 
  
 
 }
  
 if(Trigger.Isinsert && Trigger.Isafter){
 
   List<Case> lst= new List<Case>();
     
     for(Account gr: Trigger.new) { 
     
     Case mg=new Case();
     mg.accountId=gr.Id;
     mg.Status='New';
     mg.Origin='Phone';
     
     lst.add(mg);
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     }
 
 insert lst;
  }




 }