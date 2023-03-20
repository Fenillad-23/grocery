import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../controller/cartcontroller.dart';
import '../widgets/appBar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(
      init: CartController(),
      builder: (_) {
        return Scaffold(
          appBar: Appbar('cart'),
          body: Column(
            children: [Center(child: Text('heloo'))],
          ),
        );
      },
    );
  }
}
