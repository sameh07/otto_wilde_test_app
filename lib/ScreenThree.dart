import 'dart:js';

import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;
import 'RecipePage.dart';
import 'ViewAllRow.dart';

class ScreenThree extends StatelessWidget {
  List<CardItem> items = [
    CardItem(
        title: 'KARAMELLISIERTE HONIG-KAROTTEN',
        urlImage: 'assets/recipe_4.png',
        subtitle: '00:27',
        recipe:
            '800g Fingermöhren/ 1/2 TL Salz/ 2 EL Honig/ 150g Butter/ Karottengrün/ 2 Knoblauchzehen/ 1 EL Whiskey'),
    CardItem(
        title: 'FEIGE MIT CHÈVRE UND CHILI-SCHOKOLADE',
        urlImage: 'assets/recipe_5.png',
        subtitle: '00:50',
        recipe:
            '800g Fingermöhren/ 1/2 TL Salz/ 2 EL Honig/ 150g Butter/ Karottengrün/ 2 Knoblauchzehen/ 1 EL Whiskey'),
    CardItem(
        title: 'WASSERMELONEN FETA SALAT',
        urlImage: 'assets/recipe_6.png',
        subtitle: '00:13',
        recipe:
            '800g Fingermöhren/ 1/2 TL Salz/ 2 EL Honig/ 150g Butter/ Karottengrün/ 2 Knoblauchzehen/ 1 EL Whiskey'),
    CardItem(
        title: 'KARAMELLISIERTE HONIG-KAROTTEN',
        urlImage: 'assets/recipe_4.png',
        subtitle: '00:24',
        recipe:
            '800g Fingermöhren/ 1/2 TL Salz/ 2 EL Honig/ 150g Butter/ Karottengrün/ 2 Knoblauchzehen/ 1 EL Whiskey'),
    CardItem(
        title: 'FEIGE MIT CHÈVRE UND CHILI-SCHOKOLADE',
        urlImage: 'assets/recipe_5.png',
        subtitle: '00:45',
        recipe:
            '800g Fingermöhren/ 1/2 TL Salz/ 2 EL Honig/ 150g Butter/ Karottengrün/ 2 Knoblauchzehen/ 1 EL Whiskey'),
    CardItem(
        title: 'WASSERMELONEN FETA SALAT',
        urlImage: 'assets/recipe_6.png',
        subtitle: '00:30',
        recipe:
            '800g Fingermöhren/ 1/2 TL Salz/ 2 EL Honig/ 150g Butter/ Karottengrün/ 2 Knoblauchzehen/ 1 EL Whiskey'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(backgroundColor: Colors.red,
        title: Text('RECIPE'),),
        body: Container(
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: buildDoubleList(items, context),
              )),
        ));
  }

  Widget buildDouble(CardItem item_1, CardItem item_2, BuildContext context) {
    Widget firstCardWidget = buildCard(item_1, context);
    if (item_2 == null) {
      return Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              firstCardWidget,
              AspectRatio(
                aspectRatio: 4 / 3,
              )
            ],
          ));
    }
    Widget secondCardWidget = buildCard(item_2, context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [firstCardWidget, SizedBox(width: 12), secondCardWidget],
      ),
    );
  }

  List<Widget> buildDoubleList(List<CardItem> items, BuildContext context) {
    List<Widget> list = [];
    int length = items.length % 2 == 0 ? items.length : items.length - 1;
    for (int i = 0; i < length; i += 2) {
      list.add(buildDouble(items[i], items[i + 1], context));
    }
    if (items.length % 2 != 0) {
      list.add(buildCard(items[items.length - 1], context));
    }
    return list;
  }
}

Widget buildCard(CardItem item, BuildContext context) => Container(
      width: 200,
      child: Column(children: [
        Container(
          child: AspectRatio(
              aspectRatio: 4 / 3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Material(
                    child: Ink.image(
                  image: AssetImage(item.urlImage),
                  fit: BoxFit.cover,
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RecipePage(
                          item: item,
                        ),
                      ),
                    ),
                  ),
                )),
              )),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(item.title,
            style: TextStyle(
                fontSize: 10,
                fontStyle: FontStyle.italic,
                color: Colors.white)),
        Text(item.subtitle,
            style: TextStyle(
                fontSize: 18, fontStyle: FontStyle.italic, color: Colors.white))
      ]),
    );
