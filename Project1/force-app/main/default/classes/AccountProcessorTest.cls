@isTest
public class AccountProcessorTest {

    static testMethod void testNoOfContact(){
     List<Id> accIds = new List<Id>();  
     Account myAcc = new Account(Name = 'Test1');
     insert myAcc; 
     Contact myCon = new Contact(LastName = 'Test1', Account = myAcc);
     insert myCon;
     accIds.add(myAcc.Id);
        
     Account myAcc2 = new Account(Name = 'Test2');
     insert myAcc2; 
     Contact myCon2 = new Contact(LastName = 'Test1', Account = myAcc2);
     insert myCon2;
     accIds.add(myAcc2.Id); 
        
     Test.startTest();
     AccountProcessor.countContacts(accIds);
     Test.stopTest();
    }
}