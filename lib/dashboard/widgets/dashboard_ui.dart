import 'package:cs_ecomm/dashboard/widgets/custome_cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/src/rendering/box.dart';

class DashbordUI extends StatelessWidget {
  const DashbordUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text(
            'Todays sale',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.green),
          ),
          subtitle: Text(
            '\$200',
            style: TextStyle(fontSize: 0.05.sw),
            textAlign: TextAlign.center,
          ),
        ),
        // start block
        GridView.count(
          crossAxisCount: 2,
          controller: new ScrollController(keepScrollOffset: false),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            CustomeCards(
              number: 555,
              title: 'productDetails',
              ontap: () {},
              color: Colors.amber,
            ),
          ],
        )
        //    end block
        // GridView(
        //   gridDelegate:
        //       SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        //   children: [
        //     CustomeCards(
        //       number: 555,
        //       title: 'test',
        //       onClick: () {},
        //       color: Colors.amber,
        //     ),
        //   ],
        // ),
      ],
    );
  }
}
