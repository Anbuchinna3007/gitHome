@Istest(SeeAllData=true)
public class AccountManagerTest {
    

    
    @IsTest
    public static void testaccountmanager() {
        RestRequest request = new RestRequest();
        request.requestUri = 'https://curious-moose-299437-dev-ed.my.salesforce.com/services/apexrest/Accounts/0014100000IkAzy/contacts';
        request.httpMethod = 'GET';
        RestContext.request = request;
        
        system.debug('test account result = '+ AccountManager.getAccount());


        
    }
    

}