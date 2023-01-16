import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'forgot_password_sms_dart_state.dart';

class ForgotPasswordSmsDartCubit extends Cubit<ForgotPasswordSmsDartState> {
  ForgotPasswordSmsDartCubit() : super(ForgotPasswordSmsDartInitial());
}
