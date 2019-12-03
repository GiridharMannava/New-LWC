({
    render : function(cmp, helper) {
    var ret = this.superRender();
    console.log("This text is from rendor function gets executed when component is initiated");
    return ret;
},
    afterRender: function (component, helper) {
    this.superAfterRender();
    console.log("This text is from AfterRendor function");
    
},
    rerender : function(cmp, helper){
    this.superRerender();
    console.log("This text is from ReRendor function");
},
    unrender: function () {
    this.superUnrender();
    console.log("This text is executed when your component is terminated");
}
 
})