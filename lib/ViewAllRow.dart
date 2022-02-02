import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;
import 'RecipePage.dart';

class CardItem {
  final String title;
  final String urlImage;
  final String subtitle;
  final String recipe;

  const CardItem(
      {required this.title,
      required this.urlImage,
      required this.subtitle,
      required this.recipe});
}

class ViewAllRow extends StatelessWidget {
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
    return Container(
      height: 250,
      child: ListView.separated(
        padding: EdgeInsets.all(16),
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        separatorBuilder: (context, _) => SizedBox(width: 20),
        itemBuilder: (context, index) => buildCard(items[index], context),
      ),
    );
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
