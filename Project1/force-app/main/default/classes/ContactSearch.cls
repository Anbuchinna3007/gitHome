public class ContactSearch {
    
    public static List<Contact> searchForContacts(String lastNam, String zipcod){
        
        List<contact> contactList = [select id, Name, LastName, MailingPostalCode from Contact where LastName Like :lastNam AND MailingPostalCode Like :zipcod];
        return contactList;
    }

}