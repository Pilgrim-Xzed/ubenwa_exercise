
import 'package:code_test/common/common.dart';
import 'package:flutter/material.dart';


class WhiteCustomPainter extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(size.width*0.9909366,size.height*0.08192771);
    path_0.cubicTo(size.width*0.9909366,size.height*0.03934193,size.width*0.9476526,size.height*0.004819277,size.width*0.8942598,size.height*0.004819277);
    path_0.lineTo(size.width*0.1057402,size.height*0.004819277);
    path_0.cubicTo(size.width*0.05234713,size.height*0.004819277,size.width*0.009063444,size.height*0.03934193,size.width*0.009063444,size.height*0.08192771);
    path_0.lineTo(size.width*0.009063444,size.height*0.9132530);
    path_0.cubicTo(size.width*0.009063444,size.height*0.9558386,size.width*0.05234713,size.height*0.9903614,size.width*0.1057402,size.height*0.9903614);
    path_0.lineTo(size.width*0.4745166,size.height*0.9903614);
    path_0.cubicTo(size.width*0.5036888,size.height*0.9903614,size.width*0.5300211,size.height*0.9764169,size.width*0.5413414,size.height*0.9549711);
    path_0.lineTo(size.width*0.5944260,size.height*0.8544145);
    path_0.cubicTo(size.width*0.6095196,size.height*0.8258217,size.width*0.6446284,size.height*0.8072289,size.width*0.6835257,size.height*0.8072289);
    path_0.lineTo(size.width*0.8942598,size.height*0.8072289);
    path_0.cubicTo(size.width*0.9476526,size.height*0.8072289,size.width*0.9909366,size.height*0.7727060,size.width*0.9909366,size.height*0.7301205);
    path_0.lineTo(size.width*0.9909366,size.height*0.08192771);
    path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = Colors.white;
canvas.drawPath(path_0,paint_0_fill);

Path path_1 = Path();
    path_1.moveTo(size.width*0.9879154,size.height*0.08192771);
    path_1.cubicTo(size.width*0.9879154,size.height*0.04067277,size.width*0.9459849,size.height*0.007228916,size.width*0.8942598,size.height*0.007228916);
    path_1.lineTo(size.width*0.1057402,size.height*0.007228916);
    path_1.cubicTo(size.width*0.05401571,size.height*0.007228916,size.width*0.01208459,size.height*0.04067277,size.width*0.01208459,size.height*0.08192771);
    path_1.lineTo(size.width*0.01208459,size.height*0.9132530);
    path_1.cubicTo(size.width*0.01208459,size.height*0.9545084,size.width*0.05401571,size.height*0.9879518,size.width*0.1057402,size.height*0.9879518);
    path_1.lineTo(size.width*0.4745166,size.height*0.9879518);
    path_1.cubicTo(size.width*0.5024713,size.height*0.9879518,size.width*0.5277069,size.height*0.9745880,size.width*0.5385559,size.height*0.9540361);
    path_1.lineTo(size.width*0.5916405,size.height*0.8534795);
    path_1.cubicTo(size.width*0.6072085,size.height*0.8239928,size.width*0.6434139,size.height*0.8048193,size.width*0.6835257,size.height*0.8048193);
    path_1.lineTo(size.width*0.8942598,size.height*0.8048193);
    path_1.cubicTo(size.width*0.9459849,size.height*0.8048193,size.width*0.9879154,size.height*0.7713759,size.width*0.9879154,size.height*0.7301205);
    path_1.lineTo(size.width*0.9879154,size.height*0.08192771);
    path_1.close();

Paint paint_1_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.006042296;
paint_1_stroke.color=Colors.white;
canvas.drawPath(path_1,paint_1_stroke);

Paint paint_1_fill = Paint()..style=PaintingStyle.fill;
paint_1_fill.color = Colors.white;
canvas.drawPath(path_1,paint_1_fill);

}



@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}



class BrownCustomPainter extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(size.width*0.009063444,size.height*0.08192771);
    path_0.cubicTo(size.width*0.009063444,size.height*0.03934193,size.width*0.05234713,size.height*0.004819277,size.width*0.1057402,size.height*0.004819277);
    path_0.lineTo(size.width*0.8942598,size.height*0.004819277);
    path_0.cubicTo(size.width*0.9476526,size.height*0.004819277,size.width*0.9909366,size.height*0.03934193,size.width*0.9909366,size.height*0.08192771);
    path_0.lineTo(size.width*0.9909366,size.height*0.9132530);
    path_0.cubicTo(size.width*0.9909366,size.height*0.9558386,size.width*0.9476526,size.height*0.9903614,size.width*0.8942598,size.height*0.9903614);
    path_0.lineTo(size.width*0.5254834,size.height*0.9903614);
    path_0.cubicTo(size.width*0.4963112,size.height*0.9903614,size.width*0.4699789,size.height*0.9764169,size.width*0.4586586,size.height*0.9549711);
    path_0.lineTo(size.width*0.4055740,size.height*0.8544145);
    path_0.cubicTo(size.width*0.3904804,size.height*0.8258217,size.width*0.3553716,size.height*0.8072289,size.width*0.3164743,size.height*0.8072289);
    path_0.lineTo(size.width*0.1057402,size.height*0.8072289);
    path_0.cubicTo(size.width*0.05234713,size.height*0.8072289,size.width*0.009063444,size.height*0.7727060,size.width*0.009063444,size.height*0.7301205);
    path_0.lineTo(size.width*0.009063444,size.height*0.08192771);
    path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = Pallet.beachSand;
canvas.drawPath(path_0,paint_0_fill);

Path path_1 = Path();
    path_1.moveTo(size.width*0.01208459,size.height*0.08192771);
    path_1.cubicTo(size.width*0.01208459,size.height*0.04067277,size.width*0.05401571,size.height*0.007228916,size.width*0.1057402,size.height*0.007228916);
    path_1.lineTo(size.width*0.8942598,size.height*0.007228916);
    path_1.cubicTo(size.width*0.9459849,size.height*0.007228916,size.width*0.9879154,size.height*0.04067277,size.width*0.9879154,size.height*0.08192771);
    path_1.lineTo(size.width*0.9879154,size.height*0.9132530);
    path_1.cubicTo(size.width*0.9879154,size.height*0.9545084,size.width*0.9459849,size.height*0.9879518,size.width*0.8942598,size.height*0.9879518);
    path_1.lineTo(size.width*0.5254834,size.height*0.9879518);
    path_1.cubicTo(size.width*0.4975287,size.height*0.9879518,size.width*0.4722931,size.height*0.9745880,size.width*0.4614441,size.height*0.9540361);
    path_1.lineTo(size.width*0.4083595,size.height*0.8534795);
    path_1.cubicTo(size.width*0.3927915,size.height*0.8239928,size.width*0.3565861,size.height*0.8048193,size.width*0.3164743,size.height*0.8048193);
    path_1.lineTo(size.width*0.1057402,size.height*0.8048193);
    path_1.cubicTo(size.width*0.05401571,size.height*0.8048193,size.width*0.01208459,size.height*0.7713759,size.width*0.01208459,size.height*0.7301205);
    path_1.lineTo(size.width*0.01208459,size.height*0.08192771);
    path_1.close();

Paint paint_1_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.006042296;
paint_1_stroke.color=Pallet.beachSand;
canvas.drawPath(path_1,paint_1_stroke);

Paint paint_1_fill = Paint()..style=PaintingStyle.fill;
paint_1_fill.color = Pallet.beachSand;
canvas.drawPath(path_1,paint_1_fill);




}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}