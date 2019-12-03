Trigger practicing on Account (Before Insert,Before update,After Insert,After update,Before Delete,After Delete) {


if(Trigger.Isinsert && Trigger.IsBefore) {

    //Static methods..contain keyword static in method
    accounthandler.beforeinsert( trigger.new , trigger.newmap);
    
    
    //Instance methods
    accounthandler nt=new accounthandler();
    
    nt.beforeinsert1(trigger.new);

}

if(Trigger.Isinsert && Trigger.IsAfter) {



}

if(Trigger.Isupdate && Trigger.IsBefore) {



}

if(Trigger.Isupdate && Trigger.IsAfter) {



}

}