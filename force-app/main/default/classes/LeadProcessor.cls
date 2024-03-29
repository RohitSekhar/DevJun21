global class LeadProcessor implements
    Database.Batchable<sObject> {
    global Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator(
            'SELECT ID from Lead' 
        );
    }
    global void execute(Database.BatchableContext bc, List<Lead> scope){
        // process each batch of records
        List<Lead> leads=new List<Lead>();
        for (Lead lead : scope) {
            lead.LeadSource='DreamForce';
            leads.add(lead);
        }
        update leads;
    }
    global void finish(Database.BatchableContext bc){
      
    }
}