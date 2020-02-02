public class RandomContactFactory {
    
    public static List<Contact> generateRandomContacts(Integer i, String str){
         List<Contact> cons = new List<Contact>();
        for(Integer j=0 ; j<i; j++){
             contact con = new contact (FirstName= 'Test' + j, LastName = str);
             cons.add(con);
        }
       
        return cons;
    }

}