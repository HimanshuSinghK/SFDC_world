global class BookPlanner {
    webservice static Book__c createBook(String Name){
        Book__c book = new Book__c();
        book.Name=Name;
        return book;
    }

}