@RestResource(urlMapping='/v1/BookManagement/')
global class BookManagement {
    @httpGet
    global static Book__c doGetBook(){
        Book__c book= new Book__c();
        Map<String,String> paramsMap = RestContext.request.params;
        String bookid=paramsMap.get('id');
        book= [Select Author__c,Publishing_House__c from Book__c where id=:bookid];
        return book;
    }
    @httpDelete
    global static String doDeleteBook(){
        Book__c book= new Book__c();
        Map<String,String> paramsMap = RestContext.request.params;
        String bookid=paramsMap.get('id');
        book= [Select Author__c,Publishing_House__c from Book__c where id=:bookid];
        delete book;
        return 'Book deleted';
    }
    @httpPost
    global static Book__c doPostBook(BookInfo bookinfo){
        Book__c book= bookinfo.book;
        insert book;
        return book;
    }



global class BookInfo{
    Book__c book {get;set;}
}
}