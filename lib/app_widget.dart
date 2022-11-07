import 'package:flutter/material.dart';

class PlusMinusButton extends StatefulWidget {
  const PlusMinusButton({Key? key,}) : super(key: key);

  @override
  State<PlusMinusButton> createState() => _PlusMinusButtosState();
}

class _PlusMinusButtosState extends State<PlusMinusButton> {

  int qty=0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(onPressed: _minusQuantityByOne, icon: const Icon(Icons.remove)),
        Text(
          qty.toString(),
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(onPressed: _addQuantityByOne, icon: const Icon(Icons.add)),
      ],
    );
  }

  void _minusQuantityByOne(){
    qty--;
    setState(() {
    });
  }

  void _addQuantityByOne(){
    qty++;
    setState(() {
    });
  }

}