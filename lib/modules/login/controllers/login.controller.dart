import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_base/generated/locales.g.dart';
import 'package:getx_pattern_base/modules/base/data/repositories/auth.repository.dart';

class LoginController extends GetxController {
  final AuthRepository authRepository;

  LoginController({required this.authRepository});

  final TextEditingController usernameTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();

  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  final RxString errorText = ''.obs;
  final RxBool isLoading = false.obs;
  final RxBool showPassword = false.obs;

  String? validateUsername(String? value) {
    if (value == '') {
      return LocaleKeys.validate_username.tr;
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == '') {
      return LocaleKeys.validate_password.tr;
    }
    return null;
  }

  void changeShowPassword() {
    showPassword.toggle();
  }

  Future<void> onTapLoginButton() async {
    errorText.value = '';

    if (isLoading.value) {
      return;
    }
    if (!loginFormKey.currentState!.validate()) {
      return;
    }

    isLoading.value = true;
    final Map<String, dynamic> formBody = {
      'username': usernameTextController.text,
      'password': passwordTextController.text
    };

    try {
      final Map<String, dynamic> rawData = await authRepository.login(formBody);
    } on DioError catch (dioError) {
      log('Error in onTapLoginButton: ${dioError.response.toString()}');
      if (dioError.response?.statusCode == 401) {
        errorText.value = 'Sai tên đăng nhập hoặc mật khẩu';
      }
    } catch (e) {
      log('Error in onTapLoginButton: ${e.toString()}');
    }
    isLoading.value = false;
  }
}
