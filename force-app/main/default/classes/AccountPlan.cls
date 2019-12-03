global class AccountPlan {

webservice string area;

webservice string region;

//Define an object in apex that is exposed in apex web service

global class plan {

webservice string name;

webservice integer PlanNumber;

webservice date PlanPeriod;

webservice id PlanId;

}

webservice static plan CreateAccountPlan(plan vplan) {

//A plan maps to account object in salesforce platform
//So need to map the plan class object to account standard object

Account acct = new Account();

acct.Name=vplan.name;

acct.AccountNumber=string.valueof(vplan.plannumber);

insert acct;

vplan.planId=acct.Id;

return vplan;
}
}