public class dummy2{

public string qwerty{set;get;}

public dummy2(){

qwerty=apexpages.currentpage().getparameters().get('qw');

}

}