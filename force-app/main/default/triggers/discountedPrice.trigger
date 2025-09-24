trigger discountedPrice on Opportunity (before insert) {
    List<Opportunity> oppList= new List<Opportunity>();
    Opportunity opp = new opportunity();
    for(Opportunity opp : trigger.new)
        {
        if(opp.Discount_Percent_Status__c=='Approved'){
                opp.Discount_Percentage__c =20;
            }
        }
        
}