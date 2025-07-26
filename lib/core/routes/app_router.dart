import 'package:dalel/core/sevices/service_locator.dart';
import 'package:dalel/featuers/auth/data/auth_cubit/auth_cubit.dart';
import 'package:dalel/featuers/auth/presentation/views/forgot_password_view.dart';
import 'package:dalel/featuers/auth/presentation/views/sign_in_view.dart';
import 'package:dalel/featuers/auth/presentation/views/sign_up_view.dart';
import 'package:dalel/featuers/home/presentation/views/home_view.dart';
import 'package:dalel/featuers/home/presentation/widgets/home_nav_bar_widget.dart';
import 'package:dalel/featuers/on_boarding/presentaion/views/widgets/on_boarding_view.dart';
import 'package:go_router/go_router.dart';
import '../../featuers/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => SplashView(),
  ),
  GoRoute(
    path: '/onBoarding',
    builder: (context, state) => OnBoardingView(controller: PageController(),),
  ),
  GoRoute(
    path: '/signUp',
    builder: (context, state) =>
        BlocProvider(
          create: (context) => AuthCubit(),
          child: SignUpView(),
        ),
  ),
  GoRoute(
    path: '/signIn',
    builder: (context, state) =>
        BlocProvider(
          create: (context) => AuthCubit(),
          child: SignInView(),
        ),
  ),
  GoRoute(
    path: '/forgotPassword',
    builder: (context, state) =>
        BlocProvider(
          create: (context) => AuthCubit(),
          child: ForgotPasswordView(),
        ),
  ),

  GoRoute(
    path: '/homeNavBar',
    builder: (context, state) => HomeNavBarWidget(),
  ),

  GoRoute(
    path: '/home',
    builder: (context, state) => HomeView(),
  ),


]);
