trigger Scenario2 on Object_A__c (after update ) {

if(trigger.IsUpdate && trigger.Isafter){

for(Object_A__c cc : trigger.new){

Object_A__c hh = new Object_A__c(); 

if(cc.Status__c=='Pending'){


}

if(cc.Status__c=='Completed'){

Object_B__c bb = new Object_B__c();

bb.Name='cc.Name';

insert bb;


Object_C__c aa = new Object_C__c();

aa.Name='cc.Name';

insert aa;
}
}
}
}