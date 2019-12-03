@isTest
public class LogEntriesQueueableApexTest{
  
    static testmethod void testmethod1() {
    
    try{
       
       LogSettings__c ns=new LogSettings__c();
       ns.Name='System.DmlException';
       ns.Key__C='e73bcf34-e89c-45bc-9bed-f4a83417ce5d';
       insert ns;
       
       LogSettings__c nss=new LogSettings__c();
       nss.Name='Read/WriteKey';
       nss.Key__C='9211ef4b-2e40-4e2a-b063-285fc95d6b9d';
       insert nss;
       
       
        system.Test.startTest();  
        
            try{
              Account ct=new Account();
            
               Insert ct;
            
            }catch(Exception e){
               System.enqueueJob(new LogEntriesQueueableApex(e));
            }
            
            
        
              
        system.Test.stopTest();
       
       }catch(Exception e){
       
       } 
       
    }
}