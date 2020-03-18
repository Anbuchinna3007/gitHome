public with sharing class AccountListController {
    
    @AuraEnabled
    public static List<Account> getAccounts(Integer records) {

        return [Select id, name from Account Limit 10];

    }
}
