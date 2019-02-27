({
    doInit : function(cmp) {
        
        var action = cmp.get("c.goalsinfofromAccount");
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                console.log('Return Value',response.getReturnValue());
                cmp.set("v.Accountdata",response.getReturnValue());
                console.log('Queried');
            }
        });
        $A.enqueueAction(action);  
    }
})