import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/featuers/on_boarding/presentaion/views/functions/on_boarding.dart';
import 'package:flutter/material.dart';
import 'custom_nav_bar.dart';
import 'get_buttons.dart';
import 'on_boarding_widget_body.dart';

class OnBoardingView extends StatefulWidget {
  OnBoardingView({super.key, required this.controller});
  final PageController controller;
  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              SizedBox(height: 40),
              CustomNavBar(
                onTap: () {
                  onBoardingVisited();
                  customReplacementNavigate(context, '/signUp');
                },
              ),
              OnBoardingWidgetBody(
                onPageChange: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                controller: _controller,
              ),
              SizedBox(height: 188),
              GetButtons(currentIndex: currentIndex, controller: _controller),
              SizedBox(height: 17),
            ],
          ),
        ),
      ),
    );
  }
}