public class ChatterExample {

public PageReference shout() {

//.....................................1 FeelItem

FeedItem fi=new FeedItem();

fi.body=body;

fi.parentId=UserInfo.getUserId();

insert fi;

//.....................................2 Feed Comment

FeedComment fc = new FeedComment();

fc.CommentBody=cbody;

fc.feeditemId=fi.id;

//fc.ParentId=UserInfo.getUserId();

insert fc;

//.....................................3 Entity Subscription

Account a= new Account();

a.name='King';

insert a;

EntitySubscription follow= new EntitySubscription (parentId=a.id,Subscriberid=UserInfo.getUserId()); //your User Id

insert follow;

system.debug('-----------------------'+follow);

system.debug('-----------------------'+fi);

return null;

}

public String body{get;set;}

public String cbody{get;set;}

}