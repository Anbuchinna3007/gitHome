@isTest
public class DailyLeadProcessorTest {

    static testMethod void Test1(){
    
        List<Lead> leadLists = new List<Lead>();
        
        for(Integer i=0; i<200; i++){
            Lead ld = new Lead(Lastname = 'Test'+i, Company = 'Salesforce');
            leadLists.add(ld);
            }
        insert leadLists;
        
        test.startTest();
        string jobid = system.schedule('Daily lead processor job', '0 0 8 * * ?', new DailyLeadProcessor());
        test.stopTest();
    }
}