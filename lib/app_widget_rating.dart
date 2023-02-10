import 'package:flutter/material.dart';

class RatingWidget extends StatefulWidget {

const RatingWidget({Key? key,}) : super(key: key);

@override
State<RatingWidget> createState() => _RatingWidgetState();
}

class _RatingWidgetState extends State<RatingWidget> {
  bool _isFavorited_1 = false;
  bool _isFavorited_2 = false;
  bool _isFavorited_3 = false;

  @override
  Widget build(BuildContext context) {
    return Row(


      mainAxisSize: MainAxisSize.min,
      children: [

        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.center,
            icon: (_isFavorited_1
                ? const Icon(Icons.star)
                : const Icon(Icons.star_border)),
            color: Colors.orange,
            onPressed: (){_toggleFavorite(1);},
          ),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.center,
            icon: (_isFavorited_2
                ? const Icon(Icons.star)
                : const Icon(Icons.star_border)),
            color: Colors.orange,
            onPressed: (){_toggleFavorite(2);},
          ),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.center,
            icon: (_isFavorited_3
                ? const Icon(Icons.star)
                : const Icon(Icons.star_border)),
            color: Colors.orange,
            onPressed: (){_toggleFavorite(3);},
          ),
        ),
      ],
    );
  }

  void _toggleFavorite(num) {

    setState(() {
      switch(num){
        case 1:{
          //if (!_isFavorited_1) {
            _isFavorited_1 = true;
            _isFavorited_2 = true;
            _isFavorited_3 = true;
          // }else{
          //   _isFavorited_1 = false;
          //   _isFavorited_2 = false;
          //   _isFavorited_3 = false;
          // }
        }
        break;
        case 2:{
          //if (!_isFavorited_2) {
            _isFavorited_1 = false;
            _isFavorited_2 = true;
            _isFavorited_3 = true;
          // }else{
          //   _isFavorited_1 = false;
          //   _isFavorited_2 = false;
          //   _isFavorited_3 = false;
          // }
        }
        break;
        case 3:{
          if (!_isFavorited_3 || _isFavorited_2) {
            _isFavorited_1 = false;
            _isFavorited_2 = false;
            _isFavorited_3 = true;
          }else{
            _isFavorited_1 = false;
            _isFavorited_2 = false;
            _isFavorited_3 = false;
          }
        }
        break;
      }
    });
  }

}

