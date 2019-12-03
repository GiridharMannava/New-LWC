public class LogEntriesQueueableApex implements Queueable, Database.AllowsCallouts{
    
    public Exception ex;
    
    public LogEntriesQueueableApex(Exception e){
        
        Ex=e;  
    }
    
    public void execute(QueueableContext context) {
        
        
        map<string,string> mp=new map<string,string>();
        
        mp.put('Exception type caught:',ex.getTypeName());
        mp.put('Message:', ex.getMessage());
        mp.put('Line number:',string.valueof(ex.getLineNumber()));
        mp.put('Stack trace:',ex.getStackTraceString());
        
        system.debug(ex.getTypeName());
        
        string Bdy=JSON.serialize(mp);        
        
        map<string,LogSettings__c> Cusmp=LogSettings__c.getAll();
        
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://webhook.logentries.com/noformat/logs/'+Cusmp.get('DMLlog').Key__c);
        
        req.setMethod('POST');
        
        req.setbody(Bdy);
        req.setHeader('x-api-key',Cusmp.get('Read/WriteKey').Key__c);
        req.setHeader('Content-Type','application/json');
        Http http = new Http();
        HTTPResponse res = http.send(req);
        System.debug(res.getBody());
        
    }
    
}