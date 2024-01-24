import 'package:quotes_app/model/model_quotes.dart';

List<Map> quotesList=[
  {
    "quotes":"“Be yourself; everyone else is already taken.”",
    "author":"Oscar Wilde",
    "category":"Inspirational"
  },
  {
    "quotes":"“Live as if you were to die tomorrow. Learn as if you were to live forever.”",
    "author":"Mahatma Gandhi",
    "category":"Inspirational"
  },
  {
    "quotes":"“A day without laughter is a day wasted.”",
    "author":" Nicolas Chamfort",
    "category":"Philosophy"
  },
  {
    "quotes":"“May you live every day of your life.”",
    "author":"Jonathan Swift",
    "category":"Philosophy"
  },
  {
    "quotes":"“Knowing yourself is the beginning of all wisdom.”",
    "author":"Aristotle",
    "category":"Wisdom"
  },
  {
    "quotes":"“The only true wisdom is in knowing you know nothing.”",
    "author":"Socrates",
    "category":"Wisdom"
  },
];
List<QuotesModel> quote=[];
void convertMapToModel()
{
  quote=quotesList.map((e) => QuotesModel.quotes(e)).toList();
  print(quote[0].quotes);
}

