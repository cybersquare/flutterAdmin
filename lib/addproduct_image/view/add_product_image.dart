import 'dart:io' as io;

import 'package:cs_ecomm/addproduct_image/add_product_image.dart';
import 'package:cs_ecomm/addproduct_image/view/widget/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:image_picker/image_picker.dart';

class AddProductImage extends StatelessWidget {
  AddProductImage({Key? key, required this.imageController}) : super(key: key);
  final io.File imageController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              width: 1.sw,
              height: .5.sw,
              child: OutlinedButton(
                child: ImagePickerDisplay(
                  imageController: imageController,
                ),
                onPressed: () {
                  BlocProvider.of<AddproductimageBloc>(context)
                      .add(ProductImageUploadEvent());
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
