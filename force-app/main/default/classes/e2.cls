public with sharing class e2 {

    public e2(ApexPages.StandardController controller) {

    }
    List<Campaign> camps = [SELECT Name,StartDate,EndDate,BudgetedCost FROM Campaign];
    
    public List<Campaign> getCamps(){
    return camps;
    }

}