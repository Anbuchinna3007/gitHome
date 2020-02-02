@isTest
public class TestRestrictContactByName {
    
    Static testMethod void test(){
        
        Test.startTest();
        contact con = new contact (LastName = 'INVALIDNAME');
        Database.SaveResult result = Database.insert(con, false);
        Test.stopTest();
        
        system.assert(!result.isSuccess());
        
      
    }

}