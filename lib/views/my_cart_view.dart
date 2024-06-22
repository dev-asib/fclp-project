import 'package:fclp_app/Controllers/product_controller.dart';
import 'package:fclp_app/widgets/global_widgets/cart_message.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fclp_app/utils/color_palette.dart';
import 'package:fclp_app/views/delivery_address_form_view.dart';
import 'package:fclp_app/widgets/global_widgets/custom_app_bar.dart';
import 'package:fclp_app/widgets/global_widgets/empty_widget.dart';

class MyCartView extends StatefulWidget {
  const MyCartView({Key? key}) : super(key: key);

  @override
  State<MyCartView> createState() => _MyCartViewState();
}

class _MyCartViewState extends State<MyCartView> {
  @override
  Widget build(BuildContext context) {
    final productController = Provider.of<ProductController>(context);

    return Scaffold(
      appBar: CustomAppBar(),
      body: Consumer<ProductController>(
        builder: (context, productController, child) {
          return Visibility(
            visible: productController.productShoppingCartList.isNotEmpty,
            replacement: buildEmptyWidget(
              context: context,
              message: "Your cart is empty.",
            ),
            child: ListView.builder(
              itemCount: productController.productShoppingCartList.length,
              itemBuilder: (context, index) {
                var product = productController.productShoppingCartList[index];
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  product.img,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Center(
                                      child: Icon(Icons.error),
                                    );
                                  },
                                ),
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product.title,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    children: [
                                      Text(
                                    "৳${productController.calculateDiscountedPrice(product).toStringAsFixed(2)}",
                                        style: TextStyle(
                                          color: AppColors.green,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        "(৳${product.originalPrice.toString()})",
                                        style: TextStyle(
                                          color: AppColors.grey,
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          productController
                                              .incrementCartProduct(product);
                                        },
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: AppColors.green,
                                              width: 1.5,
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.add,
                                            color: AppColors.green,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        product.count.toString(),
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      InkWell(
                                        onTap: () {
                                          productController
                                              .decrementCartProduct(product);
                                        },
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: AppColors.green,
                                              width: 1.5,
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.remove,
                                            color: AppColors.green,
                                            size: 20,
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          child: IconButton(
                            onPressed: () {
                              productController
                                  .removeShoppingCartListProduct(index);
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: SnackBarMessage(
                                    context: context,
                                    message:
                                        "Removed from cart: ${product.title}",
                                  ),
                                  duration: Duration(seconds: 2),
                                  action: SnackBarAction(
                                    label: 'UNDO',
                                    onPressed: () {
                                      productController.addToCart(
                                          index, product);
                                    },
                                  ),
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.delete_outline,
                              color: AppColors.red,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
      bottomNavigationBar: Consumer<ProductController>(
        builder: (context, productController, child) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DeliveryAddressFormView()));
            },
            child: Container(
              height: 50,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.center,
              color: AppColors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Total Amount: ",
                        style: TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "৳${productController.getTotalAmountForCartView().toStringAsFixed(2)}",
                        style: TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Next",
                        style: TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.arrow_circle_right_outlined,
                        color: AppColors.white,
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
