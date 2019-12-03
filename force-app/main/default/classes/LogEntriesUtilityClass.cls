public class LogEntriesUtilityClass {
    
    
    public static void LogentryCallout(Exception e){
        
        map<string,string> mp=new map<string,string>();
        
        mp.put('Exception type caught:',e.getTypeName());
        mp.put('Message:', e.getMessage());
       // mp.put('Cause:',string e.getCause());
        mp.put('Line number:',string.valueof(e.getLineNumber()));
        mp.put('Stack trace:',e.getStackTraceString());
        
        
        string Bdy=JSON.serialize(mp);        
        
        map<string,LogSettings__c> Cusmp=LogSettings__c.getAll();
        
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://webhook.logentries.com/noformat/logs/'+Cusmp.get('DMLlog').Key__c);
        
        req.setMethod('POST');
        
        req.setbody(Bdy);
        req.setHeader('x-api-key',Cusmp.get('Read/WriteKey').Key__c);
        req.setHeader('Content-Type', 'application/json');
        Http http = new Http();
        HTTPResponse res = http.send(req);
        System.debug(res.getBody());
        
        
    }    
    
}