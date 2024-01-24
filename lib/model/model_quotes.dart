class QuotesModel
{
    String? quotes,author,category;
    QuotesModel({this.quotes,this.author,this.category});

    QuotesModel.maptoModel();
    factory QuotesModel.quotes(Map m1)
    {
      return QuotesModel(quotes: m1['quotes'],author: m1['author'],category: m1['category']);
    }
}