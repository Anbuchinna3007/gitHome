@isTest
public class AddPrimaryContactTest {
    
    @testSetup 
    static void setup() {
        
        List<Account> accList = new List<Account>();
        
        for(Integer i=0 ; i<100; i++)
        {
            
            String state;
            if(i<50){
                state = 'NY' ;
            }else
                state = 'CA' ;
            Account a = new Account(Name = 'Test'+i, BillingState = state);
            accList.add(a);
        }
        insert accList;
        
        
    }
        
        static testMethod void Test1(){
            
        Contact c = new Contact( LastName = 'Test Account') ;
        insert c;
            
        String billingState = 'CA';
        AddPrimaryContact addContact = new AddPrimaryContact(c, billingState);
            
        Test.startTest();
        System.enqueueJob(addContact);
        Test.stopTest();
    }

}