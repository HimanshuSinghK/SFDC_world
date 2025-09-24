({
                createItem : function(component,item) {
                                                var updateItem = component.getEvent("addItem");
            updateItem.setParams({ "item": item });
            updateItem.fire();
        component.set("v.newItem", { 'sobjectType': 'Camping_Item__c',
                        'Name': '',
                        'Price__c': 0,
                        'Quantity__c': 0,
                        'Packed__c': false })
                }
})