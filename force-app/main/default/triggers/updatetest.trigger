trigger updatetest on Account (Before update,After update) {

  if(Trigger.isupdate && trigger.isbefore){

    for(Account ts:Trigger.new){
        
        if(ts.ownership  != trigger.oldmap.get(ts.Id).ownership && ts.ownership=='Public'){
        
            ts.rating='Cold';
        
        }
       
    
    }
   
    
     
     
     
     }
   

}