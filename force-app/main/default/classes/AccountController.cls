public with sharing class AccountController {
 @AuraEnabled
 public static List<Account> findAll() {
 return [SELECT Id, Name, Localisation__Latitude__s, Localisation__Longitude__s
   FROM Account
   WHERE Localisation__Latitude__s != NULL AND Localisation__Longitude__s !=
          NULL
   LIMIT 50];
  }
}