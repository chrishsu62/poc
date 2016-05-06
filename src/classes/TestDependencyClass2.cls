public with sharing class TestDependencyClass2 {

    public void execute() {
        Account a = [SELECT Id, name from Account where name='Created in Copy']; 
        System.debug('changed account name ' + a.name);
    }

}