public class acountwrapper {

public list<Account> acclist {set;get;}
public list<accwrap> wraplist{set;get;}
public boolean checkbox {set;get;}

public class accwrap {

public boolean chk {set;get;}
public Account acc {set;get;}

public accwrap(Account ac) {
acc = ac;
chk = false;
}

}

public acountwrapper() {
acclist = [select id,name from Account];
for(Account acc: acclist) {
wraplist.add(new accwrap(acc));
}
}
public void delaccount() {
list<Account> aclstdel = new list<Account>(); 
for(accwrap aw: wraplist){
if(aw.chk) {
aclstdel.add(aw.acc);
}
}
Database.delete(aclstdel,false);
acclist = [select id,name from Account];
wraplist = new List<accwrap>();
for(Account ac: acclist) {
wraplist.add(new accwrap(ac));
}
}
public void selectall() {
if(checkbox){
for(accwrap aw: wraplist) {
aw.chk = true;
}
}
else {
for(accwrap aw: wraplist) {
aw.chk = false;
}
}
}

}