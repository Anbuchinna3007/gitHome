public class AccountHandler {

    public static Account insertNewAccount(String Acc){
        try{
            Account newAccount = new Account (Name = Acc,Phone='(415)555-1212');
            insert newAccount;
                return newAccount;
            
        }  catch (Exception e){
            System.debug('A DML exception has occurred: ' +
                e.getMessage());
            return null;
        }
    }
}