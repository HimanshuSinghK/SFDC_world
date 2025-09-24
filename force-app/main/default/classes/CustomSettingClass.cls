public class CustomSettingClass {
    public List<Cricket_Team__c> myTeam{get;set;}
    public String BatsmanName{get;set;}
    public String BowlerName{get;set;}
    public Id Idd{get;set;}
    public String paramVal{get;set;}
    public CustomSettingClass(){
        myTeam = new List<Cricket_Team__c>();
        myTeam=[select Id,Name,Batsman__c,Bowler__c from Cricket_Team__c];
    }
    
    
    public PageReference loadpage(){
    
      PageReference pr = Page.Cricket_Team;
      pr.setRedirect(true);
      return pr;
    
    }
    
    public PageReference UpdateValue(){
        
        Cricket_Team__c newTeam= new Cricket_Team__c();
        newTeam=[select Id,Name,Batsman__c,Bowler__c from Cricket_Team__c where Id=:Idd];
        
        newTeam.Batsman__c=BatsmanName;
        newTeam.Bowler__c=BowlerName;
        update newTeam;
        System.debug('batsman name is '+BatsmanName);
        System.debug('Bowler name is '+BowlerName);
        System.debug('IDD is '+Idd);
        System.debug('team name is '+newTeam.Id);
        /* PageReference pr = new PageReference('/'+newTeam.Id);
        pr.setRedirect(true);
        return pr; */
        
       return loadpage();
        

    }
}