public with sharing class TestDependencyClass {

    public void execute() {
        Account a = [SELECT Id, name from Account where name='Created in Copy']; 
        System.debug('changed account name ' + a.newField0);
    }

}