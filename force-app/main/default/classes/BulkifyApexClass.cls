public class BulkifyApexClass {

    public void  listCollector(){
        list<integer> LvarCollec = new list<integer>();
        LvarCollec.add(10);
        LvarCollec.add(20);
        LvarCollec.add(30);
        LvarCollec.add(40);
        LvarCollec.add(50);
        system.debug('output '+LvarCollec);
        system.debug('output '+LvarCollec.size());
    }
    
     public void  SetCollector(){
        set<integer> SvarCollec = new set<integer>();
        SvarCollec.add(10);
        SvarCollec.add(10);
        SvarCollec.add(10);
        SvarCollec.add(40);
        SvarCollec.add(50);
        system.debug('output '+SvarCollec);
        system.debug('output '+SvarCollec.size());
    }
    
     public void  listConCollector(){
       list<Contact> LvarConCollec = new list<Contact>();
         for(integer i= 0; i < 160; i++){    
             Contact LiCon =new Contact ();
             LiCon.LastName = 'Bulk_Test'+i;
             LiCon.Phone = '7659938591';
             LvarConCollec.add(LiCon);             
         }
         insert LvarConCollec;
       
        system.debug('output '+LvarConCollec);
        system.debug('output '+LvarConCollec.size());
    }
    
    public void contactsDeletefromDB(){
         list<Contact> LvarConDelete = [SELECT Id, AccountId, Phone  FROM Contact where Name like 'Bulk_Test%' limit 165];
        	if(!LvarConDelete.isEmpty())
                //delete LvarConDelete;
        system.debug('Deleted is '+LvarConDelete);
         
    }
    
    public void listAccountColl(){
        list<Account> AccoCollect = new list<Account>();
        for( integer i=0 ;i< 152; i++){
            Account listAcco = new Account();
            listAcco.Name = 'Bill_test'+i;
            listAcco.Customer_Status__c = 'Retail';
            AccoCollect.add(listAcco);
        }
    		insert AccoCollect;
        system.debug('Account Created '+AccoCollect);
        system.debug('List size '+AccoCollect.size());
    }
    
    public void DeleteAccountsLi(){
        list<Account> DelAccovar = [SELECT Id, Customer_Status__c FROM Account where Name like 'Bill_test%' limit 165];
        if(!DelAccovar.isEmpty()){
            Datetime='system.Today()';
            delete DelAccovar;
        }
        system.debug('successfully Deleted');
    }
    
     public void listLeadColl(){
        list<Lead> LeadCollect = new list<Lead>();
        for( integer i=0 ;i< 152; i++){
            Lead listleadcoll = new Lead();
            listleadcoll.LastName = 'Lead_test'+i;
            listleadcoll.Company = 'SKALA CONSULTANCY PVT LTD';
            LeadCollect.add(listleadcoll);
        }
    		insert LeadCollect;
        system.debug('Lead Created '+LeadCollect);
        system.debug('List size '+LeadCollect.size());
    }
    
     public void DelLeadCollDB(){
        list<Lead> DelLeadvar = [SELECT Id, LastName, Company FROM Lead where LastName like 'Lead_test%' limit 155];
        if(!DelLeadvar.isEmpty()){
            delete DelLeadvar;
        }
        system.debug('successfully Deleted '+DelLeadvar);
         system.debug('Deleted Lead '+DelLeadvar);
     }
}