import 'package:equatable/equatable.dart';
abstract class ImagePickerEvent extends Equatable {
   ImagePickerEvent();

   List<Object>get props=>[];

}

class CamerPicker extends ImagePickerEvent{

}

class GalleryPicker extends ImagePickerEvent{}