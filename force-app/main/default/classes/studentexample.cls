public class studentexample{

public decimal sal{set;get;}

public decimal exp{set;get;}

public decimal bonus{set;get;}

public void calculate(){

if(exp!=0 & exp>0) {

if(exp>5) {sal = 50000;bonus = sal*0.10;}
else{sal = 30000;bonus = sal*0.10;}

apexpages.message ms = new apexpages.message(apexpages.Severity.confirm, 'Success');
apexpages.addmessage(ms);
} else{
apexpages.message ms = new apexpages.message(apexpages.Severity.error, 'Experience value must be entered');
apexpages.addmessage(ms);

}

}
}