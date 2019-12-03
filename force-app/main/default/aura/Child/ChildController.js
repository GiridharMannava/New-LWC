({
    childComponentEvent : function(cmp, event,helper) { 
        //Get the event using registerEvent name. 
        var cmpEvent = cmp.getEvent("sampleCmpEvent"); 
        alert("I am from child component");
        //Set event attribute value
        cmpEvent.setParams({"message" : "Welcome "}); 
        cmpEvent.fire(); 
    }
})