import 'package:dalel/core/functions/coustom_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart' show AppStrings;
import 'package:dalel/core/widgets/custom_bottom.dart';
import 'package:dalel/featuers/auth/data/auth_cubit/auth_cubit.dart';
import 'package:dalel/featuers/auth/data/auth_cubit/auth_state.dart';
import 'custom_text_field.dart' show CustomTextFormField;
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomForgetPasswordForm extends StatelessWidget {
  const CustomForgetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if(state is ResetPasswordSuccessState){
          showToast('Check Your Email To Reset Your Password');
          customReplacementNavigate(context, '/signIn');
        }else if(state is ResetPasswordFailureState){
          showToast(state.errorMessage);
        }

        // TODO: implement listener
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Form(
            key: authCubit.forgotpasswordFormKey,
            child: Column(
              children: [
                CustomTextFormField(
                  labelText: AppStrings.emailAddress,
                  onChanged: (email) {
                    authCubit.emailAddress = email;
                  },
                ),

                SizedBox(height: 189),
                state is ResetPasswordLoadingState
                    ? CircularProgressIndicator(color: AppColors.primarycolor)
                    : CustomBottom(
                  onPressed: () async{
                    if (authCubit.forgotpasswordFormKey.currentState!.validate()) {
                      await authCubit.resetPassWithLink();
                    }
                  },
                  text: AppStrings.sendResetPasswordLink,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
