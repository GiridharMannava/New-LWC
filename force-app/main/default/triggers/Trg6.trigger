trigger Trg6 on Account (Before insert) {
 Set<String> accNamesSet = new set<String>();
 for(Account a : trigger.new){
     accNamesSet.add(a.name);
 }
 List<Contact> conList =[SELECT id,name from Contact where name IN : accNamesSet];
 if(conList.size()>0 && conList != null){
     DELETE conList;
 }
}