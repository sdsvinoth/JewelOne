import 'package:flutter/material.dart';
import 'package:jewelone/utilits/Common_Colors.dart';

class Bottombar1 extends StatelessWidget {
  const Bottombar1({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(0),
            child: Container(
              height: 80,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [gradient1, gradient2],// Gold to Orange
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child:const Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Benefits',
                      style: TextStyle(
                        fontFamily: 'JosefinSans',
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 4), // optional spacing between texts
                    Text(
                      'Digi Gold Scheme',
                      style: TextStyle(
                        fontFamily: 'JosefinSans',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

            ),
          ),
          const SizedBox(height: 16),
          const Row(
            children: [
              Icon(Icons.check_circle, color: Colors.green),
              SizedBox(width: 10),
              Expanded(child: Text('Save gold in small quantities.')),
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              Icon(Icons.check_circle, color: Colors.green),
              SizedBox(width: 10),
              Expanded(child: Text('Pay anytime, anywhere.')),
            ],
          ),
        ],
      ),
    );
  }
}