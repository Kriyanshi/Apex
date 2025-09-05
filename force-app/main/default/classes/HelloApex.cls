public class HelloApex {
    public static void runBasics() {
        // Primitive Data Types
        String name = 'Kiya';
        Integer count = 5;
        Decimal price = 99.99;
        Boolean isActive = true;
        Date today = Date.today();

        // List Example
        List<String> fruits = new List<String>{'Apple', 'Banana', 'Mango'};
        System.debug('Fruits: ' + fruits);

        // Map Example
        Map<Id, String> accountMap = new Map<Id, String>();
        for (Account acc : [SELECT Id, Name FROM Account LIMIT 5]) {
            accountMap.put(acc.Id, acc.Name);
        }
        System.debug('Accounts Map: ' + accountMap);

        // Set Example
        Set<String> uniqueFruits = new Set<String>{'Apple','Apple','Mango'};
        System.debug('Unique Fruits: ' + uniqueFruits);

        // Simple Logic
        if(isActive && fruits.size() > 0) {
            System.debug(name + ' has ' + fruits.size() + ' favorite fruits.');
        }
    }
}
