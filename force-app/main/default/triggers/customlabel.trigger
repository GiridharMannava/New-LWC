trigger customlabel on Account (after insert) {

if(Trigger.isinsert && Trigger.isafter) {


for(Account acc:trigger.new){

List<Contact> conlst = new List<Contact>();

if(acc.Industry == system.label.Industry){


contact con = new contact();

con.Lastname=acc.Name;

con.accountId=acc.Id;

conlst.add(con);

}

insert conlst;

}
}
}