({
    handleClick : function(component, event, helper) {

        var createEvent = $A.get('e.force:createRecord');
        createEvent.setParams({
            'entityApiName': 'Account',
                'defaultFieldValues': {
                    'Type' : 'Prospect',
                    'Industry' : 'Apparel',
                    'Rating' : 'Hot'}
        });
        createEvent.fire();
    }
})