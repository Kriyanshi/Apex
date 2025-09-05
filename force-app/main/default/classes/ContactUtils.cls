public class ContactUtils {
    public static void showContactsByAccount() {
        // Query first 5 Accounts with their Contacts
        List<Account> accList = [
            SELECT Id, Name, (SELECT Id, Name, Email FROM Contacts)
            FROM Account
            LIMIT 5
        ];

        // Map to hold AccountId → List of Contacts
        Map<Id, List<Contact>> accContactsMap = new Map<Id, List<Contact>>();

        for (Account acc : accList) {
            accContactsMap.put(acc.Id, acc.Contacts);
        }

        // Debug output
        for (Id accId : accContactsMap.keySet()) {
            System.debug('Account Id: ' + accId + ' has Contacts: ' + accContactsMap.get(accId));
        }
    }
}
