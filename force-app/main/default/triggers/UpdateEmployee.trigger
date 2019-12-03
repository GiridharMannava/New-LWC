trigger UpdateEmployee on Employees__c (before update) {

     if(Trigger.IsBefore && Trigger.isUpdate){
     
              List<Employees__c> Emptlst=new List<Employees__c>();
              for(Employees__c  Empt : Trigger.New ){
              
                    if(  Empt!= trigger.Oldmap.get(Empt.Id)){
                         
                           Employees__c Oldrec= trigger.Oldmap.get(Empt.Id).clone(false,false,false,false);
                          
                           Oldrec.Prior__c=Empt.id;
                           
                           
                           Emptlst.add(Oldrec);
                    
                    }
              
              
              
              }
              
              Insert Emptlst;
     
     }
     }