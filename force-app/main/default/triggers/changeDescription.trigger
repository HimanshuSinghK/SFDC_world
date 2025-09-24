trigger changeDescription on Contact (before insert) {
    List<String> con= new List<String>();
    for(Contact conTest:Trigger.new)
    conTest.Description = 'This has to be new description';
}