trigger scenario6 on Account (before update) {
if(Trigger.Isupdate && Trigger.Isbefore) {
for(Account ac:Trigger.new) {

if(ac.Rating=='Cold'){
ac.Ownership='Public';
}
}
}
}