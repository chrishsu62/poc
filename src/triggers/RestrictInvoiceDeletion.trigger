trigger RestrictInvoiceDeletion on Invoice_Statement__c (before delete) {
// With each of the invoice statements targeted by the trigger
// and that have line items, add an error to prevent them
// from being deleted.
   for ( Invoice_Statement__c isc : [SELECT Id from Invoice_Statement__c
                                     where Id in (SELECT Invoice_Statement__c from Line_Item__c) 
                                     and Id in :Trigger.old]){
                Trigger.oldMap.get(isc.Id).addError('Cannot delete invoice statement with line items');
    }
}