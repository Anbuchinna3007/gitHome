public class AccountProcessor {
    
    @future
    public static void countContacts(List<Id> accoundIds){
    List<Account> listAccToUpdate = new List<Account>();
    List<Account> accList = [Select id, Number_of_Contacts__c, (Select id, Name from Contacts) from Account where Id =: accoundIds];  
        for(Account acc: accList){
        List<Contact> contactList = acc.Contacts;
        acc.Number_of_Contacts__c = contactList.size();
        listAccToUpdate.add(acc);
        }
        if(listAccToUpdate.size()>0)
        update listAccToUpdate;
    }

}