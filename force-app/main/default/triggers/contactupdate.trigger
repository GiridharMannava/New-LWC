trigger contactupdate on Account (Before Insert,Before Update,After Insert,After update,Before Delete,after delete) {

    if(Trigger.Isinsert && Trigger.Isbefore){
    
          
          
           for(Account ct: Trigger.new){
           
                    if(ct.Ownership=='Private'){
                        
                        ct.Phone='5555';
                        
                    }else{
                    
                         ct.Phone='9999';
                   
                    }
                    
                    if(ct.NumberOfEmployees==50){
                    
                       ct.Website='www.google.com';
                       
                    }
             
           
           }
      
    
    
    
    
    
    }
    
     if(Trigger.Isinsert && Trigger.Isafter){
         
         List<Contact> lst=new List<Contact>();
     
         for(Account ct:Trigger.new){
             
             Contact ts=new Contact();
             
             ts.LastName=ct.Name;
             
             ts.accountId=ct.Id;
         
             lst.add(ts);
         
         }
         
         Insert lst;
    
       
    
    
    
    
    
    }
    
    if(Trigger.Isupdate && Trigger.Isbefore){
    
    
    
    
    
    
    
    
    }
    
     if(Trigger.Isupdate && Trigger.Isafter){
    
    
    
    
    
    
    
    
    }
    
    
     



}