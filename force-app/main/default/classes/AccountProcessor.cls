public class AccountProcessor {
    @future
  public static void countContacts(List<Id> accountIds) {
      List<Account> accountsToUpdate=new List<Account>();
      List<Account> accounts = [Select Id, Name, (Select Id from Contacts) from Account Where Id IN :accountIds];
    // process account records to do awesome stuff
      For(Account acc:accounts){
          List<Contact> contactList=acc.Contacts;
          acc.Number_of_Contacts__c=contactList.size();
          accountsToUpdate.add(acc);
      }
      update accountsToUpdate;
  }
}