import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quotes_app/model/model_quotes.dart';

import '../../utils/global.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isGrid = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 1),
      () => model(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (didPop) {
        dialog();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Quotes"),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    isGrid = !isGrid;
                  });
                },
                icon: Icon(isGrid ? Icons.list : Icons.grid_4x4_outlined))
          ],
        ),
        body: Center(
          child: isGrid
              ? GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: quotesList.length,
                  itemBuilder: (context, index) => Container(
                    height: 120,
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("${quote[index].quotes}",
                        style: const TextStyle(fontSize: 20)),
                  ),
                )
              : ListView.builder(
                  itemCount: quotesList.length,
                  itemBuilder: (context, index) => InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, 'quote',
                          arguments: quote[index]);
                    },
                    child: Container(
                      height: 120,
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text("${quote[index].quotes}",
                          style: const TextStyle(fontSize: 20)),
                    ),
                  ),
                ),
        ),
      ),
    );
  }
  void dialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Are you sure to exit"),
          actions: [
            ElevatedButton(
                onPressed: () {
                  exit(0);
                },
                child: const Text("YES")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("NO"))
          ],
        );
      },
    );
  }
  void model() {
    Random r1 = Random();
    int i = r1.nextInt(quotesList.length);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Today's Quote",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 5,
            ),
            Text("${quote[i].quotes}"),
          ],
        ),
      ),
    );
  }
}
