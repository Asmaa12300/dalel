import 'package:dalel/core/functions/coustom_toast.dart';
import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart' show AppStrings;
import 'package:dalel/core/widgets/custom_bottom.dart';
import 'package:dalel/featuers/auth/data/auth_cubit/auth_cubit.dart';
import 'package:dalel/featuers/auth/data/auth_cubit/auth_state.dart';
import 'package:dalel/featuers/auth/presentation/widgets/terms_and-condition_widget.dart';
import 'package:flutter/material.dart';
import 'custom_text_field.dart' show CustomTextFormField;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if(state is SignupSuccessState){
         showToast('Successfully,Check your email to verify your account');
         customReplacementNavigate(context, '/signIn');

        }else if(state is SignupFailureState){
         showToast(state.errorMessage);
        }
        // TODO: implement listener
      },
      builder: (context, state) {
        AuthCubit authCubit=BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.signupFormKey,
          child: Column(
            children: [
              CustomTextFormField(
                labelText: AppStrings.fristName,
                onChanged: (fristName) {
                  authCubit.fristName = fristName;
                },
              ),
              CustomTextFormField(
                labelText: AppStrings.lastName,
                onChanged: (lastName) {
                 authCubit.lastName = lastName;
                },

              ),
              CustomTextFormField(
                labelText: AppStrings.emailAddress,
                onChanged: (email) {
                  authCubit.emailAddress = email;
                },
              ),
              CustomTextFormField(
                labelText: AppStrings.password,
                  suffixIcon:IconButton(onPressed: (){
                    authCubit.obscurePasswordText();
                  }, icon: Icon(authCubit.obscurePasswordTextValue==true?Icons.visibility_outlined:Icons.visibility_off_outlined)),
                obscureText:authCubit.obscurePasswordTextValue,
                onChanged: (password) {
                  authCubit.password = password;
                },
              ),
              TermsAndConditionWidget(),
              SizedBox(height: 188),
              state is SignupLoadingState?CircularProgressIndicator(color: AppColors.primarycolor,):
              CustomBottom(
                color: authCubit.termsAndConditionCheckBoxValue==false?AppColors.lightGray:null,
                onPressed: () async{
                  if (authCubit.termsAndConditionCheckBoxValue==true) {
                    if (authCubit.signupFormKey.currentState!.validate()) {
                      await authCubit
                          .signUpWithEmailAndPassword();
                    }
                  }
                },
                text: AppStrings.signUp,
              ),
            ],
          ),
        );
      },
    );
  }
}
