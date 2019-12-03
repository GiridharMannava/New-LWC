public with sharing class custcon {
 public String selectedValue{get;set;}

 //get first picklist value
   public List<SelectOption> getP1(){
   List<SelectOption> options = new List<SelectOption>();

options.add( new SelectOption('None','--None--'));
options.add(new SelectOption('India','India'));
options.add( new SelectOption('USA','USA'));
options.add( new SelectOption('Australia','Australia'));
return options;
}
public void setP1(String s){
    this.selectedValue = s;
}

//Child Picklist Value
public List<SelectOption> getP2(){
List<SelectOption> options = new List<SelectOption>();
options.add(new SelectOption('None','--None--'));

    if(selectedValue == 'India') {
    options.add(new SelectOption('AP','AP'));
    options.add(new SelectOption('TN','TN'));
    options.add(new SelectOption('RJ','RJ'));
    options.add(new SelectOption('MH','MH'));
    }
    
    if(selectedValue == 'USA'){
    options.add(new SelectOption('AL','AL'));
    options.add(new SelectOption('CA','CA'));
    options.add(new SelectOption('IN','IN'));
    options.add(new SelectOption('NY','NY'));
    }
else 
    if(selectedValue == 'Australia'){
    options.add(new SelectOption('ACT','ACT'));
    options.add(new SelectOption('NT','NT'));
    options.add(new SelectOption('SA','SA'));
    options.add(new SelectOption('Vic','Vic'));
    }
return options;
}
}