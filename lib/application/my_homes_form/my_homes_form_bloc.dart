import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_homes_form_event.dart';
part 'my_homes_form_state.dart';
part 'my_homes_form_bloc.freezed.dart';

class MyHomesFormBloc extends Bloc<MyHomesFormEvent, MyHomesFormState> {
  MyHomesFormBloc() : super(_Initial()) {
    on<MyHomesFormEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
