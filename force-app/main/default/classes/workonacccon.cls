public class workonacccon {

public string accname{set;get;}
public string accphone{set;get;}
public string accWebsite{set;get;}
public string accDescription{set;get;}
public string conname{set;get;}
public string connum{set;get;}
public workonacccon() {

}

public void savresult() {

Account ac=new Account();

ac.Name=accname;
ac.Phone=accphone;
ac.Website=accWebsite;
ac.Description=accDescription;

Insert ac;


Contact cn=new Contact();

cn.Lastname=conname;
cn.Phone=connum;
cn.AccountId=ac.Id;

Insert cn;

}

}