({
    /*handleOnSearchClick : function(component,event,helper){
        alert('Search Button was clicked');
    },*/
    getBoatType : function(component,event,helper){
        var action=component.get("c.getBoatTypes");
        action.setCallback(this,function(data){
                           var state=data.getState();
        if(state==="SUCCESS"){
            component.set("v.boatTypes",data.getReturnValue());
        }
        else if(state==="ERROR"){
            alert("Unknown Error");
        }
                           });
        $A.enqueueAction(action);
    }
    /*helper.callServer(component,"c.getBoatTypes",
                        function(response){
                            component.set("v.boatTypes",response);
					});*/
    
})