import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart' show AppStrings;
import 'package:dalel/core/widgets/custom_bottom.dart';
import 'package:dalel/featuers/auth/data/auth_cubit/auth_cubit.dart';
import 'package:dalel/featuers/auth/data/auth_cubit/auth_state.dart';
import 'package:flutter/material.dart';
import '../../../../core/functions/coustom_toast.dart' show showToast;
import 'custom_text_field.dart' show CustomTextFormField;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'forgot_password_text_widget.dart';

class CustomSignInForm extends StatelessWidget {
  const CustomSignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SigninSuccessState) {
          //showToast('Welcome Back!');
          FirebaseAuth.instance.currentUser!.emailVerified
              ? customReplacementNavigate(context, '/homeNavBar')
              : showToast('Please Verify YourAccount');
        } else if (state is SigninFailureState) {
          showToast(state.errorMessage);
        }

        // TODO: implement listener
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.signinFormKey,
          child: Column(
            children: [
              CustomTextFormField(
                labelText: AppStrings.emailAddress,
                onChanged: (email) {
                  authCubit.emailAddress = email;
                },
              ),
              CustomTextFormField(
                labelText: AppStrings.password,
                suffixIcon: IconButton(
                  onPressed: () {
                    authCubit.obscurePasswordText();
                  },
                  icon: Icon(
                    authCubit.obscurePasswordTextValue == true
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                  ),
                ),
                obscureText: authCubit.obscurePasswordTextValue,
                onChanged: (password) {
                  authCubit.password = password;
                },
              ),
              SizedBox(height: 16),

              ForgotPasswordTextWidget(),
              SizedBox(height: 188),
              state is SigninLoadingState
                  ? CircularProgressIndicator(color: AppColors.primarycolor)
                  : CustomBottom(
                      onPressed: () async{
                        if (authCubit.signinFormKey.currentState!.validate()) {
                          await authCubit.signInWithEmailAndPassword();
                        }
                      },
                      text: AppStrings.signIn,
                    ),
            ],
          ),
        );
      },
    );
  }
}
