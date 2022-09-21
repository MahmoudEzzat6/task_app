import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 36, 139, 236)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width,0);
    path0.lineTo(size.width*0.6569999,0);
    path0.quadraticBezierTo(size.width*0.9999999,size.height*0.1999999,size.width*0.6599250,size.height*0.0011185);
    path0.cubicTo(size.width*0.7144500,size.height*0.1528611,size.width*0.8105500,size.height*0.1399111,size.width*0.8828500,size.height*0.1390000);
    path0.quadraticBezierTo(size.width*1.0009000,size.height*0.1250417,size.width,size.height*0.1887083);

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}class SecCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 36, 139, 236)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;


    Path path0 = Path();
    path0.moveTo(0,size.height*0.4288857);
    path0.lineTo(0,size.height);
    path0.lineTo(size.width,size.height);
    path0.lineTo(size.width,size.height*0.5495429);
    path0.quadraticBezierTo(size.width*0.9252800,size.height*0.4886571,size.width*0.6655800,size.height*0.5015000);
    path0.cubicTo(size.width*0.6619200,size.height*0.5038429,size.width*0.3079200,size.height*0.5034429,size.width*0.2064800,size.height*0.5024429);
    path0.quadraticBezierTo(size.width*0.0066000,size.height*0.4918857,0,size.height*0.4570429);
    path0.lineTo(0,size.height*0.4288857);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
