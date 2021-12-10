import 'package:flutter/material.dart';
import 'package:cs_ecomm/dashboard/widgets/custome_cards.dart';
import 'package:cs_ecomm/drawer/drawer.dart';
import 'package:cs_ecomm/router/route_constants.dart';

class ManageUI extends StatelessWidget {
  ManageUI({Key? key}) : super(key: key);
  List<Cards> cards = <Cards>[
    Cards(title: 'Total Users', number: '400'),
    Cards(title: 'Total Products', number: '100'),
    Cards(title: 'Total Orders', number: '300'),
    Cards(title: 'Total Revenue', number: '\u{20B9}30000'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 4,
        controller: new ScrollController(keepScrollOffset: false),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: List.generate(cards.length, (index) {
          // return new Container(
          return GestureDetector(
            onTap: () {
              switch (cards[index].title) {
                case "Total Users":
                  {
                    Navigator.pushNamed(context, RouteConstants.totalUserRoute);
                  }
                  break;
                case "Total Products":
                  {
                    Navigator.pushNamed(
                        context, RouteConstants.totalProductRoute);
                  }
                  break;
                case "Total Orders":
                  {
                    Navigator.pushNamed(
                        context, RouteConstants.totalorderRoute);
                  }
                  break;
              }
            },
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: Card(
                  color: Colors.lightBlue[100],
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //  mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          cards[index].title,
                          style: const TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          cards[index].number,
                          style: const TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class Cards {
  const Cards({required this.title, required this.number});
  final String title;
  final String number;
}
