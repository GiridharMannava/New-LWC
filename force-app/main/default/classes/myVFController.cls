public class myVFController{
 
   public void trackVisits(){
     
    user gr = new user();   
      
     gr.Id =userinfo.getuserid();
     
     gr.TestingOnMe__c=1;
     
     update gr;
     
     
        
    }

}