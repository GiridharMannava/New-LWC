trigger stafftrigger on Staffinformation__c (Before insert,After insert,before update,After update,After delete) {

if(trigger.Isafter && trigger.IsINSERT){

    
    stafftrigger.beforeinsert(trigger.new);


}




}