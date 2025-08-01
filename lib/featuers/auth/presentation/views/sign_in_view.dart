import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/featuers/auth/presentation/widgets/custom_signin_form.dart';
import 'package:dalel/featuers/auth/presentation/widgets/have_an_account_widget.dart';
import 'package:dalel/featuers/auth/presentation/widgets/welcome_text_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/welcome_banner.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: WelcomeBanner()),
          SliverToBoxAdapter(child: SizedBox(height: 32)),
          SliverToBoxAdapter(
            child: WelcomeTextWidget(text: AppStrings.welcomeBack),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomSignInForm(),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 18)),

          SliverToBoxAdapter(
            child: HaveAnAccountWidget(
              text1: AppStrings.dontHaveAnAccount,
              text2: AppStrings.signUp,
              onTap: (){
                customReplacementNavigate(context, '/signUp');
              },
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 16)),

        ],
      ),
    );
  }
}
