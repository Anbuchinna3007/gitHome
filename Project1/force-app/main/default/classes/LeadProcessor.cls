global class LeadProcessor implements Database.Batchable<sObject>{

    global Database.QueryLocator Start(Database.BatchableContext bc){
        return Database.getQueryLocator('Select id,LastName,Company,LeadSource  from Lead');
    }
        
        global void execute(Database.BatchableContext bc, List<Lead> scope){
        
             List<Lead> leads = new List<Lead>();
            for(Lead led : scope){
                led.LeadSource = 'Dreamforce';
                leads.add(led);
            }
            update leads;
        }
    
        global void finish(Database.BatchableContext bc){
        System.debug('Batch Job is Processed');
        AsyncApexJob job = [SELECT Id, Status, NumberOfErrors, 
            JobItemsProcessed,
            TotalJobItems, CreatedBy.Email
            FROM AsyncApexJob
            WHERE Id = :bc.getJobId()];
            
            
    }

}