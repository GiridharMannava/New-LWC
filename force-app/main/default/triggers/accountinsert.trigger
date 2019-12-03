trigger accountinsert on Account (before insert)
{
for(Account a:Trigger.new)
{
List<Account> mynew=[select id,name from Account where name=:a.name];
if(mynew.size()>0)
{
a.Name.addError('Account with name Already Exisisting');
}
}
}