public class AggregateResult_Example {
    public AggregateResult result {set;get;}
    public Decimal total {set;get;}
    public Decimal minval {set;get;}
    public Decimal maxval {set;get;}
    public AggregateResult_Example(){
        result = [select SUM(Amount)total,MIN(Amount)minval,MAX(Amount)maxval from Opportunity where stageName = 'Closed Won'];
        total = (Decimal)result.get('total');
        minval = (Decimal)result.get('minval');
        maxval = (Decimal)result.get('maxval');
    }
}