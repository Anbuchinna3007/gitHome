public class ContactAndLeadSearch {
    
    public static List<List< SObject>> searchContactsAndLeads(String searchText){
        
        List<List< SObject>> searchList  = [FIND :searchText IN ALL FIELDS RETURNING Contact(FirstName,LastName), Lead(FirstName,LastName)];
        
        return searchList;
    }

}