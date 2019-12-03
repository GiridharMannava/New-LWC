/* This trigger is for recursive trigger error*/

trigger Recursive on Account (after insert,after update) {

if(trigger.isBefore && trigger.isInsert) {

Account acc=[select id,name from Account where name='agriculture' limit 1];

acc.name='agriculturee';

update acc;
}

if(trigger.isAfter && trigger.isUpdate) {

Account a = new Account();

a.name='trigger';

insert a;

}

}