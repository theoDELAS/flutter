import 'package:flutter/material.dart';
import 'package:tp/widget/appBar.dart';

class total extends StatefulWidget {
  final double prixTotal;

  const total(this.prixTotal);

  @override
  _totalState createState() => _totalState();
}

class _totalState extends State<total> {
  static int color = 12;
  @override
  Widget build(BuildContext context) {
    if (widget.prixTotal > 25) {
      const couleur = Colors.green;
    }
    return Scaffold(
      bottomNavigationBar: appBar(),
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(100),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red,
                    width: 5,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(999999),
                  ),
                ),
                child: Text(
                  '50€',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25),
                child: Text(
                  "de produits à acheter",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
