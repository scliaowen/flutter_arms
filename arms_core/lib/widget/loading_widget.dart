import 'package:flutter/material.dart';


class LoadingWidget extends StatelessWidget {
  final CircularProgressIndicator indicator;
  final double bgWidth;
  final double bgHeight;
  final Color? bgColor;
  final String message;


  const LoadingWidget({super.key, required this.indicator, required this.bgWidth,required this.bgHeight, required this.bgColor, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: bgWidth,
      height: bgHeight,
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 30),
            child: indicator,
          ),
          Text(
            message,
            style: const TextStyle(fontSize: 12,color: Colors.black54,decoration: TextDecoration.none),
          )
        ],
      ),
    );
  }
}
