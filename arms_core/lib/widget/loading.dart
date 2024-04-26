import 'package:flutter/material.dart';

class DefLoading extends StatelessWidget {
  final String message;

  const DefLoading({super.key, String? message})
      : message = message ?? 'loading...';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.black.withOpacity(0.6),
        ),
        Align(
          alignment: AlignmentDirectional.center,
          child: _Indicator(
            indicator: CircularProgressIndicator(
              color: Colors.black54,
            ),
            message: message,
          ),
        )
      ],
    );
  }
}

class _Indicator extends StatelessWidget {
  final Widget indicator;
  final String message;

  const _Indicator({super.key, required this.indicator, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: indicator,
            margin: EdgeInsets.only(bottom: 20),
          ),
          Text(
            message,
            style: const TextStyle(fontSize: 16,color: Colors.black87,decoration: TextDecoration.none),
          )
        ],
      ),
    );
  }
}
