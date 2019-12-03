trigger scenariozipcodes on Account(before insert) {
 
 Map<String,Zipcodes__c> zipmap = Zipcodes__c.getAll();

  for(Account ac:Trigger.new) {

   if(zipmap.containskey(ac.BillingCity)){
     
     ac.BillingPostalCode=zipmap.get(ac.BillingCity).Zip_Code__c;
     
}

}

}