import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/featuers/auth/presentation/widgets/custom_forgot_pass_form.dart';
import 'package:dalel/featuers/auth/presentation/widgets/welcome_text_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/forgot_pass_subtitle.dart';
import '../widgets/forgot_password_image.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 108)),
          SliverToBoxAdapter(
            child: WelcomeTextWidget(text: AppStrings.forgotPassword),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 40)),
          SliverToBoxAdapter(child: ForgotPasswordImage()),
          SliverToBoxAdapter(child: SizedBox(height: 24)),

          SliverToBoxAdapter(child: ForgotPassSubTitle(),),
          SliverToBoxAdapter(child: CustomForgetPasswordForm(),)
        ],
      ),
    );
  }
}

