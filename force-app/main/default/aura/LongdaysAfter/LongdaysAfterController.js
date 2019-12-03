({
    doSubmit : function(component, event, helper) {
        var Rfm = component.get("v.RegForm");        
        var action = component.get("c.SaveRegistrationDetails");
        action.setParams({ RegForm : Rfm });
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                // Alert the user with the value returned 
                // from the server
                alert("From server: " + response.getReturnValue());
                var parentId = response.getReturnValue();
                component.set("v.RegistrationRecordId" , parentId);
                var toastEvent = $A.get("e.force:showToast");
                toastEvent.setParams({
                    "title": "Success!",
                    "message": "Record is saved Successfully.",
                    "type" :"success",
                });
                toastEvent.fire();
       
            }
            else if (state === "INCOMPLETE") {
                // do something
            }
                else if (state === "ERROR") {
                    var errors = response.getError();
                    if (errors) {
                        if (errors[0] && errors[0].message) {
                            console.log("Error message: " + 
                                        errors[0].message);
                        }
                    } else {
                        console.log("Unknown error");
                    }
                }
        });
        
        $A.enqueueAction(action);      
    },
    
    Secondfunction : function(component, event, helper){
        //console.log("I'm from controller");
        helper.myhelperMethod(component);
        
    },
    addDetails : function(component, event, helper){
        //alert("Hello Add Details in next screen");
        var CurrentEducationalDetailsList = component.get("v.EducationalDetailsList");
        var currentSize = parseInt((CurrentEducationalDetailsList.Length));
        var newSize = parseInt((CurrentEducationalDetailsList.Length) + 1);
        CurrentEducationalDetailsList.push(newSize);
        component.set("v.EducationalDetailsList", CurrentEducationalDetailsList);
        
    }
})