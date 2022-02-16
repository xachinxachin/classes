/*
    @autor - xachinnn
*/
public with sharing class AccountRepository {

    public list<Account> findByName (String Name){

        List<Account> accounts = [ SELECT Id, Name FROM Account WHERE Name =:name];

        return accounts;

    }
    
    public Account findById (String id){

        List<Account> accounts = [ SELECT Id, Name FROM Account WHERE Id =:id];

        return !accounts.isEmpty() ? accounts.get(0) : null;

    }
    
}