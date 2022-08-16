import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/controller/home_controller.dart';
import 'package:product_app/controller/product_controller.dart';
import 'package:product_app/utils/constaint.dart';
import 'package:product_app/view/components/card_details_view.dart';
import 'package:product_app/view/components/cart_short_view.dart';
import 'package:product_app/view/components/detail_screen.dart';
import 'package:product_app/view/components/header.dart';
import 'package:product_app/view/components/product_card.dart';

class HomeScreen extends StatelessWidget {
  final controller = HomeController();
  HomeScreen({Key? key}) : super(key: key);

  void _onVerticalGesture(DragUpdateDetails details) {
    if (details.primaryDelta! < -0.7) {
      controller.changeHomeState(HomeState.cart);
    } else if (details.primaryDelta! > 12) {
      controller.changeHomeState(HomeState.normal);
    }
  }

  @override
  Widget build(BuildContext context) {
    final ProductController productController = Get.put(ProductController());
    final scrollController = ScrollController();
    final controller = HomeController();
    void scrollListener() {
      if (scrollController.offset >=
              scrollController.position.maxScrollExtent / 2 &&
          !scrollController.position.outOfRange) {
        if (productController.hasNext) {
          productController.getProducts();
        }
      }
    }

    scrollController.addListener(scrollListener);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Container(
          color: const Color(0xFFEAEAEA),
          child: AnimatedBuilder(
              animation: controller,
              builder: (context, snapshot) {
                return LayoutBuilder(
                    builder: (context, BoxConstraints constraints) {
                  return Stack(
                    children: [
                      AnimatedPositioned(
                        duration: panelTransition,
                        top: controller.homeState == HomeState.normal
                            ? headerHeight
                            : -(constraints.maxHeight -
                                cartBarHeight * 2 -
                                headerHeight),
                        left: 0,
                        right: 0,
                        height: constraints.maxHeight -
                            headerHeight -
                            cartBarHeight,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: defaultPadding),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(defaultPadding * 1.5),
                              bottomRight:
                                  Radius.circular(defaultPadding * 1.5),
                            ),
                          ),
                          child: GridView.builder(
                            controller: scrollController,
                            itemCount: productController.data.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 0.75,
                              mainAxisSpacing: defaultPadding,
                              crossAxisSpacing: defaultPadding,
                            ),
                            itemBuilder: (context, index) => ProductCard(
                              product: productController.data[index],
                              press: () {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    transitionDuration:
                                        const Duration(milliseconds: 500),
                                    reverseTransitionDuration:
                                        const Duration(milliseconds: 500),
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        FadeTransition(
                                      opacity: animation,
                                      child: DetailsScreen(
                                        product: productController.data[index],
                                        onProductAdd: () {
                                          controller.addProductToCart(
                                              productController.data[index]);
                                        },
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      AnimatedPositioned(
                        duration: panelTransition,
                        bottom: 0,
                        left: 0,
                        right: 0,
                        height: controller.homeState == HomeState.normal
                            ? cartBarHeight
                            : (constraints.maxHeight -
                                cartBarHeight * 2 -
                                headerHeight),
                        child: GestureDetector(
                          onVerticalDragUpdate: _onVerticalGesture,
                          child: Container(
                            padding: const EdgeInsets.all(defaultPadding),
                            color: const Color(0xFFEAEAEA),
                            child: controller.homeState == HomeState.normal
                                ? CardShortView(controller: controller)
                                : CartDetailsView(controller: controller),
                          ),
                        ),
                      ),
                      AnimatedPositioned(
                        duration: panelTransition,
                        top: controller.homeState == HomeState.normal
                            ? 0
                            : -headerHeight,
                        right: 0,
                        left: 0,
                        height: headerHeight,
                        child: const Header(),
                      ),
                    ],
                  );
                });
              }),
        ),
      ),
    );
  }
}
