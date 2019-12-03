@isTest
private class LeadProcessorTest1{

    @testSetup 
    static void setup() {
        List<Lead> leds = new List<Lead>();
         // insert 200 Leads
        for(Integer i=0;i<200;i++) {
        Lead gr    = new Lead();
        gr.Lastname    = 'LeadTest';
        gr.Company = 'ABCD';
        gr.Status  = 'Open';
        leds.add(gr);
      }
        insert leds;
    }
     static testmethod void test() {        
        Test.startTest();
        LeadProcessor mgr = new LeadProcessor();
        Id batchId = Database.executeBatch(mgr);
        Test.stopTest();       
        System.assertEquals(200, [select count() from Lead where LeadSource = 'Dreamforce']);
    }
    
    }