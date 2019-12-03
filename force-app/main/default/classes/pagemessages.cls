public class pagemessages{

public string accname{set;get;}
public string accphone{set;get;}
public boolean chk{set;get;}



public void savacc(){
    if(String.isBlank(accname)){
    ApexPages.addmessage(new ApexPages.message(ApexPages.severity.Error, 'Name is mandatory'));
    chk=true;
    }
    if(String.isBlank(accname)){
    ApexPages.addmessage(new ApexPages.message(ApexPages.severity.Error, 'Name is mandatory'));

    }


}








}