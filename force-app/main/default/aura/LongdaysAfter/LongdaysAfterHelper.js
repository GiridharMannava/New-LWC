({
    myhelperMethod : function(component, event) {
        console.log("You can find me here:>");
        var checkboxValue = component.find("checkBox").get("v.checked");
        //component.set("v.Checkboxvalue", checkboxValue);
        component.set("v.RegForm.Giridharm__Available_on_weekends__c", checkboxValue);
    }
})