@isTest
public class TestVerifyDate {
    
    Static testMethod void test1(){
        Date date1 = Date.newInstance(2018, 7, 31);
        Date date2 = Date.newInstance(2018, 8, 22);
        Test.startTest();
        VerifyDate.CheckDates(date1, date2);
        Test.stopTest();
        
    }
    
    Static testMethod void test2(){
        Date date1 = Date.newInstance(2018, 7, 31);
        Date date2 = Date.newInstance(2018, 6, 30);
        Test.startTest();
        VerifyDate.CheckDates(date1, date2);
        Test.stopTest();
    }
    
    Static testMethod void test3(){
        Date date1 = Date.newInstance(2018, 7, 31);
        Date date2 = Date.newInstance(2018, 9, 9);
        Test.startTest();
        VerifyDate.CheckDates(date1, date2);
        Test.stopTest();
    }

}