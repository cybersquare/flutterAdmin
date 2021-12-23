import 'dart:io' as io;

import 'package:cs_ecomm/addproduct_image/add_product_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImagePickerDisplay extends StatelessWidget {
  ImagePickerDisplay({Key? key, required this.imageController})
      : super(key: key);
  io.File imageController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddproductimageBloc, AddproductimageState>(
      builder: (context, state) {
        if (state is ProductImageAddedState) {
          imageController = state.imagefile;
          print("image uploadedd $imageController");
          return Image.file(state.imagefile);
        }
        return const Icon(Icons.add);
      },
    );
  }
}
