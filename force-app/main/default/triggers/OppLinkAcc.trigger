trigger OppLinkAcc on Account (after insert, after update) {
	List<Account> toProcess = null;
    List<Opportunity> updateOpp = new List<Opportunity>();
    
    switch on Trigger.operationType{
        when AFTER_INSERT{
            toProcess = Trigger.new;
        }
        when AFTER_UPDATE{
            toProcess = [Select Id,Name from Account
                        where Id IN : Trigger.new
                        AND Id Not In (Select AccountId from Opportunity where AccountId =: Trigger.new)];
        }
    }
        for(Account a : toProcess){
            updateOpp.add(new Opportunity(Name=a.Name + ' Opportunity',
                                    StageName='Prospecting',
                                    CloseDate=System.today().addMonths(1),
                                    AccountId=a.Id));
        }
        if(updateOpp.size()>0){
            insert updateOpp;
        }
}