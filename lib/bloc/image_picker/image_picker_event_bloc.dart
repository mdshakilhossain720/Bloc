

import 'package:blockpattern/bloc/image_picker/image_picker_event_event.dart';
import 'package:blockpattern/bloc/image_picker/image_picker_event_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImagePickerBloc extends  Bloc<ImagePickerEvent,ImagePickerState>{
  ImagePickerBloc():super(ImagePickerState()){
    on<CamerPicker>(camerPickers);
  }
  void camerPickers(CamerPicker event, Emitter<ImagePickerState>state){

  }

}