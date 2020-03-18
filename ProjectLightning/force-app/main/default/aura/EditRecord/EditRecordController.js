({
    init : function(component, event, helper) {

        var editEvent = $A.get('e.force:navigateToURL');

        editEvent.setParams({
            'url':'www.google.com',
            'isredirect':'true'

        });

        editEvent.fire();
    }
})
