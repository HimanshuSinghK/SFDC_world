trigger updateBillingAddress on Account (before insert) {
    for(Account a : Trigger.new){
         if(a.BillingCity!=null)
             a.ShippingCity=a.BillingCity;
        if(a.BillingStreet!=null)
             a.ShippingStreet=a.BillingStreet;
        if(a.BillingState!=null)
             a.ShippingState=a.BillingState;
        if(a.BillingCountry!=null)
             a.ShippingCountry=a.BillingCountry;
        if(a.BillingPostalCode!=null)
             a.ShippingPostalCode=a.BillingPostalCode;
    }
}