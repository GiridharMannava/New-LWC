trigger Customobjects on Object_A__c (before insert) {

if(Trigger.Isinsert && Trigger.Isbefore) {

for(Object_A__c obj : Trigger.new){

Object_B__c objtb = new Object_B__c();

objtb.Name=obj.Name;

if(obj.Picklist_A__c == 'Approved'){

objtb.Picklist_B__c='Approved';

} else {

objtb.Picklist_B__c='open';

}

insert objtb;


Object_C__c objtc = new Object_C__c();

objtc.Name=obj.Name;

if(obj.Picklist_A__c == 'Approved'){


objtc.Picklist_C__c='Approved';

} else{

objtc.Picklist_C__c='open';

}

insert objtc;

}

}
}