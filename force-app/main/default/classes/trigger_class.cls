public class trigger_class {

public static void trigger_method(list<opportunity> ops) {

double Total_Amount=0;

for(opportunity o1: [select Amount from opportunity where createdDate=today and createdbyID= :userinfo.getuserID()]) {

Total_Amount=Total_Amount+o1.Amount;

}

for(opportunity o2:ops) {

Total_Amount=Total_Amount+o2.Amount;

if(Total_Amount>100000)

o2.addError('You Have Exceeded Daily Limit');

}
}
}