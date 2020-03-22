@RestResource(urlMapping='/api/Account/*')
global with sharing class MyFirstRestApiClass {
    
    @HttpGet
    global static Account accountRecord() {
     
     RestRequest request=RestContext.request;

     Id accNum = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
     
    return [select id, Name, AccountNumber, phone from Account where AccountNumber =: accNum limit 1];
    }

    @HttpPost
    global static Id postMethod(string name, string phone, string AccountNumber){

        Account acc = new Account();
        acc.name=name;
        acc.phone=phone;
        acc.AccountNumber=AccountNumber;
        insert acc;
        return acc.Id;
    }

    @HttpDelete
    global static void deleteMethod(){
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;

        string accNum = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Account acc = [select id, Name, AccountNumber, phone from Account where AccountNumber =: accNum limit 1];
        delete acc;
    }

    
}
