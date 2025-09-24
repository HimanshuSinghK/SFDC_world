trigger ClosedOpportunityTrigger on Opportunity(after insert, after update){
for(Opportunity opp : trigger.new){
    if(opp.StageName=='Closed Won'){
        Task t = new task();
        t.Subject='Follow Up Test Task';
        t.WhatId=opp.id;
    }
}
}