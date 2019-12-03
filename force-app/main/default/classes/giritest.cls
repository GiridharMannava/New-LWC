public class giritest{ 

public string acname{set;get;}

public string acphone{set;get;}

public boolean mgr{set;get;}

public void savegr() { 

if(String.isBlank(acname)) {
 
    ApexPages.addmessage(new ApexPages.message(ApexPages.severity.Error, 'YOU HAVE TO ENTER ACCOUNT NAME'));
    mgr=true;
}



}


}