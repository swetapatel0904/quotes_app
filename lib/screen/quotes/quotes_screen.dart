import 'package:flutter/material.dart';
import 'package:quotes_app/model/model_quotes.dart';

class QuotesScreen extends StatefulWidget {
  const QuotesScreen({super.key});

  @override
  State<QuotesScreen> createState() => _QuotesScreenState();
}

class _QuotesScreenState extends State<QuotesScreen> {
 QuotesModel? data;
  @override
  Widget build(BuildContext context) {
  data = ModalRoute.of(context)!.settings.arguments as QuotesModel;
    return Scaffold(
      appBar: AppBar(
        title: Text("Quotes"),
      ),
      body: Container(
        height: 200,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${data?.quotes}",style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
                textAlign: TextAlign.center,
            ),
            SizedBox(height: 15,),
            Align(
                alignment: Alignment.topRight,
                child: Text("${data?.author}",style: TextStyle(fontSize: 18,color: Colors.white),))
          ],
        ),
      ),
    );
  }
}
