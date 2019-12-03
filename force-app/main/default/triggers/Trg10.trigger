trigger Trg10 on Account (Before update) {
  map<id,Account> mmyMap = trigger.newmap;
  list<contact>conList = new list<contact>();
  list <contact> clist = [select id,accountId,name from contact where accountId IN : mmyMap.keyset()];
  for(contact c : clist){
      c.phone = mmyMap.get(c.accountId).Phone;
      conList.add(c);
  }update conList;
}