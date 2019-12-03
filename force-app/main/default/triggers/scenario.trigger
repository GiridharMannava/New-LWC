trigger scenario on Account (Before Update) {

if(Trigger.Isupdate && Trigger.Isbefore) {

 for(Account gr: Trigger.new){
           
                    if(gr.CustomerPriority__c=='High'){
                        
                        gr.Rating='Hot';
                        
                         }
 }
}
}