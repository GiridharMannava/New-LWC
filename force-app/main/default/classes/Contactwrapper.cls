public class Contactwrapper {

public list<Contact> conlst{set;get;}


public boolean mschk{set;get;}


public Contactwrapper(){

conlst=[select id,LastName from Contact];


}
}