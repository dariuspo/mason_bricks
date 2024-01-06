import 'dart:async';
import 'package:{{{fullPath}}}/app/helpers/utils/error_utils.dart';
import 'package:{{{fullPath}}}/app/helpers/bloc_helper.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';{{#use_equatable}}
import 'package:equatable/equatable.dart';{{/use_equatable}}
part '{{feature_name.snakeCase()}}_cubit.g.dart';

part '{{feature_name.snakeCase()}}_state.dart';

class {{feature_name.pascalCase()}}Cubit extends Cubit<{{feature_name.pascalCase()}}State> {
  {{feature_name.pascalCase()}}Cubit() : super(const {{feature_name.pascalCase()}}State());

  /// A description for yourCustomFunction 
  Future<void> method() async {
    emit(state.copyWith(blocState: BlocState.loading));
    try {
        // final response = await _userRepository.login(
        //   CommonRequest.generalRequest(
        //     functionId: ApiEndPoint.login,
        //     inputCommonServDtls:
        //     LoginRequest(userId: userName, password: password),
        //   ),
        //   userName,
        //   password,
        // );
      if (!isClosed) {
          emit(
            state.copyWith(
             blocState: BlocState.finished,
            ),
          );
        }
      } catch (e, st) {
        final message = ErrorUtils.getErrorMessage(e, st);
        emit(state.copyWith(blocState: BlocState.failed, message: message));
    }
  }
}
