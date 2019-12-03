public class todayhomework{

public string accname{set;get;}

public string phone{set;get;}

public string conname{set;get;}

public string conphone{set;get;}

public todayhomework(){

}

public void saveresult(){

Account gr = new Account();

gr.name=accname;

gr.phone=phone;

Insert gr;

Contact mg = new Contact();

mg.lastname = conname;

mg.phone = conphone;

mg.accountId = gr.Id;

Insert mg;

}


}