import 'package:flutter/material.dart';
import 'package:cart_sample/store_name.dart';
import 'package:cart_sample/menu.dart';
import 'package:cart_sample/add_more.dart';
import 'package:cart_sample/billing.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 246, 246, 1.0),
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        title: const Text(
          '장바구니',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          StoreName(name: '치킨 잠실점'),
          SizedBox(
            height: 1,
          ),
          Menu(
            name: '후라이드 치킨',
            imagePath: 'images/chicken.png',
            price: 18000,
          ),
          SizedBox(
            height: 1,
          ),
          AddMore(),
          Billing(),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: SafeArea(
          child: Container(
            height: 65,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '1',
                        style: TextStyle(
                          color: Color.fromRGBO(44, 191, 188, 1.0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    '21,000원 배달 주문하기',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Color.fromRGBO(44, 191, 188, 1.0),
                ),
              ),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
