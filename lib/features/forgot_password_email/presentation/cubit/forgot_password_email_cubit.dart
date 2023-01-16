import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'forgot_password_email_state.dart';

class ForgotPasswordEmailCubit extends Cubit<ForgotPasswordEmailState> {
  ForgotPasswordEmailCubit() : super(ForgotPasswordEmailInitial());
}
