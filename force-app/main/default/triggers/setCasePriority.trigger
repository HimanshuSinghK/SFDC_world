trigger setCasePriority on Case (before insert, before update) {
List<Case> caseList = new List<Case>();
for(Case c:Trigger.new){
    if(c.Status=='Working'){
        c.Priority='Low';
        }
    }
}