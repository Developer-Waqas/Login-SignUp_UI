import '../../constants/app_linker/app_linker.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  double? height;
  double? width;
  String text;
  TextStyle? textStyle;
  Color? color;
  BorderRadiusGeometry? borderRadius;
  void Function()? onPressed;

  CustomButton({
    super.key,
    this.height,
    this.width,
    required this.text,
    this.textStyle,
    this.color,
    this.borderRadius,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(color: color, borderRadius: borderRadius),
        child: Center(
          child: Text(text, style: textStyle),
        ),
      ),
    );
  }
}
