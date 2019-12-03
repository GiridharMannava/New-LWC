trigger MySecondWork on Account (Before insert,Before update,After insert,After update,Before delete,After delete) {
    if(Trigger.Isinsert && Trigger.Isbefore) {
        
        for(Account ct: Trigger.new) {
            
            system.debug('Accounts Inserted My Work'+ct);
            
            
            if(ct.Rating=='Hot' || ct.Ownership=='Private') {
                
                ct.CustomerPriority__c='Medium';
            }
            
            
            
            if(ct.Rating=='Hot' && ct.Ownership=='Public') {
                
                system.debug('High');
                
                ct.CustomerPriority__c='High';
           
            }            
            
            
           
            if(ct.Rating=='Cold' && ct.UpsellOpportunity__c=='No') {
                
                ct.SLA__c='Gold';
            }
            
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}