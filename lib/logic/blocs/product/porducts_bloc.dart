import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'porducts_event.dart';
part 'porducts_state.dart';

class PorductsBloc extends Bloc<PorductsEvent, PorductsState> {
  PorductsBloc() : super(PorductsInitial()) {
    on<PorductsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
