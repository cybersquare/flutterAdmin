import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          child: Container(
            margin: const EdgeInsets.only(top: 10),
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.width / 2,
            decoration: BoxDecoration(
              backgroundBlendMode: BlendMode.color,
              color: Colors.blue,
              shape: BoxShape.circle,
              image: const DecorationImage(
                image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDCpn-rJQ04hL6MM1NGyC0Qk_X1b53FSZ-5pavhxT0F6ypJBSatxDZIgQU7yJ8hl38EF4&usqp=CAU',
                ),
                fit: BoxFit.fill,
              ),
              border: Border.all(
                width: 5,
                color: Colors.blue.shade800,
              ),
            ),
          ),
          onTap: () async {
            final picked = await FilePicker.platform.pickFiles();
            // if (picked != null) {
            //   print(picked.files.first.name);
            // }
          },
        ),
        const Center(
          child: Text('Upload Image'),
        )
      ],
    );
  }
}
