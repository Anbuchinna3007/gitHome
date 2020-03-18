({
    init : function(component, event, helper) {

        var action = component.get('c.getAccounts');
        action.setParams({
            'records': '10'
        });

    action.setCallback(this, function(response){

        var state=response.getState();
        if(state==='SUCCESS'|| state==='DRAFT'){
            //component.set('v.accounts', response.getReturnValue());
            var eve = $A.get('e.force:showToast');
            eve.setParams({
             'title':'Success!',
             'message':'Something went wrong, please try again'
            });
          eve.fire();
        }else{
            
        }
});
    $A.enqueueAction(action);
    
    }
})
