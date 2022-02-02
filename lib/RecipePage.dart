import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:otto_wilde_test_app/ViewAllRow.dart';
import 'package:path/path.dart' as p;

class RecipePage extends StatelessWidget {
  final CardItem item;

  const RecipePage({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(item.title),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(children: [
        AspectRatio(
            aspectRatio: 4 / 3,
            child: Image.asset(
              item.urlImage,
              fit: BoxFit.cover,
              height: 100,
            )),
        const SizedBox(height: 8),
        Text(item.title,
            style: TextStyle(
              fontSize: 32,
            )),
        ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.red),
          child: Text(
            "see recipe",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
              showDialog(context: context, builder: (context){
                return AlertDialog(
                  title: Text("Zutaten"),
                  content: Text(item.recipe)
                );
              }
            );
          },
        )
      ]));
}

