import 'package:flutter/material.dart';
import 'package:getfit/common/widgets/custom_shapes/container/home_header_container.dart';
import 'package:getfit/features/shop/screens/home/widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeaderContainer(
              child: Column(
                children: [
                  HomeAppBar(),
                  SizedBox(height: 40),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
