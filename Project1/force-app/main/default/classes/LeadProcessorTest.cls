@isTest
public class LeadProcessorTest {
    
    static testMethod void Test1(){
    
    List<Lead> leadLists = new List<Lead>();
    
    for(Integer i=0; i<200; i++){
        Lead ld = new Lead(Lastname = 'Test'+i, Company = 'Salesforce');
        leadLists.add(ld);
    }
    insert leadLists;
        
    Test.startTest();
        LeadProcessor job = new LeadProcessor();
        Id batchId = database.executeBatch(job);
    Test.stopTest();
        
    }
}