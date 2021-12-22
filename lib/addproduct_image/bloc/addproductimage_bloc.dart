import 'dart:io' as io;
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

part 'addproductimage_event.dart';
part 'addproductimage_state.dart';

class AddproductimageBloc
    extends Bloc<AddproductimageEvent, AddproductimageState> {
  AddproductimageBloc() : super(AddproductimageInitial()) {
    on<AddproductimageEvent>((event, emit) async {
      if (event is ProductImageUploadEvent) {
        final selectedImage =
            await _imagePicker.pickImage(source: ImageSource.gallery);
        final imagename = selectedImage!.name;
        final mimeType = selectedImage.mimeType;

        // final bytes = await File(path).readAsBytes();
        final imagefile = io.File(selectedImage.path);
        emit(
          ProductImageAddedState(
            imagename: imagename,
            imagefile: imagefile,
            mimeType: mimeType,
          ),
        );
      }
    });
  }
  final ImagePicker _imagePicker = ImagePicker();
}
