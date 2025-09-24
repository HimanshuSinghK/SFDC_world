({
    doinit : function(component,event,helper){
        var createBoatRecord = $A.get("e.force:createRecord");
        if(createBoatRecord){
            component.set("v.showNew",true);
        }
        else{
            component.set("v.showNew",false);
        }
        helper.getBoatType(component,event,helper);
       //component.set("v.boatTypes",['Party Boat','Sail Boat','Speed Boat']);
    },
    onSearchClick : function(component,event,helper){
        alert('Submit button was clicked');
        //helper.handleOnSearchClick(component,event,helper);
        var searchFormSubmit = component.getEvent("searchFormSubmit");
        searchFormSubmit.setParams({
            "boatTypeId" : component.find("boatTypeList").get("v.value")
        });
        searchFormSubmit.fire();
    },
    /*newValueSelected : function(component,event,helper){
        var boatTypeId=component.find("boatTypeList").get("v.value");
        alert(boatTypeId+' Option Selected');
    },*/
    createRecord : function(component,event,helper){
        var createBoatRecord = $A.get("e.force:createRecord");
        createBoatRecord.setParams({
            "entityApiName" : "BoatType__c"
        });
        createBoatRecord.fire();
    }
})