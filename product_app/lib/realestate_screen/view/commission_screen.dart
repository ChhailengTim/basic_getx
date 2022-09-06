import 'package:flutter/material.dart';

class CommissionScreen extends StatelessWidget {
  const CommissionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F5F2),
      appBar: AppBar(
        title: const Text('All Commission'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const TextCard(
                title: 'ជើងសារសរុប',
                price: '120\$',
              ),
              const SizedBox(
                height: 15,
              ),
              const TextCard(
                title: 'ដករួច',
                price: '40\$',
              ),
              const SizedBox(
                height: 15,
              ),
              const TextCard(
                title: 'អាចដក',
                price: '30\$',
              ),
              const SizedBox(
                height: 15,
              ),
              const TextCard(
                title: 'នៅសល់',
                price: '89\$',
              ),
              const SizedBox(
                height: 15,
              ),
              CustomButton(
                onTap: () {},
                text: 'All Sale',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextCard extends StatelessWidget {
  const TextCard({
    Key? key,
    this.title,
    this.price,
  }) : super(key: key);
  final String? title;
  final String? price;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 40,
          bottom: 40,
          left: 20,
          right: 20,
        ),
        child: Row(
          children: [
            Text(
              title ?? 'non-title',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.black,
                    fontSize: 20,
                  ),
            ),
            const Spacer(),
            Text(
              price ?? 'non-price',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final BorderRadius? borderRadius;
  final String? text;
  final Widget? child;
  final bool isfill;
  final bool isEnable;
  final Color? fillColor;
  final Color? borderColor;
  final TextStyle? textStyle;
  final GestureTapCallback? onTap;
  const CustomButton({
    Key? key,
    this.onTap,
    this.borderRadius,
    this.text,
    this.child,
    this.isfill = true,
    this.textStyle,
    this.fillColor,
    this.borderColor,
    this.isEnable = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(10),
      child: Material(
        child: InkWell(
          onTap: isEnable ? onTap ?? () {} : null,
          highlightColor: isfill
              ? Colors.white.withOpacity(0.2)
              : Colors.grey.withOpacity(0.2),
          splashColor: isfill
              ? Colors.white.withOpacity(0.2)
              : Colors.grey.withOpacity(0.2),
          child: Ink(
            height: 50,
            decoration: BoxDecoration(
              
              color: isEnable
                  ? (isfill
                      ? fillColor ?? Colors.yellow[700]
                      : Colors.transparent)
                  : Colors.black12,
              borderRadius: borderRadius ?? BorderRadius.circular(10),
              border: isfill
                  ? const Border.symmetric()
                  : Border.all(color: borderColor ?? Colors.yellow),
            ),
            child: Container(
              alignment: Alignment.center,
              child: child ??
                  Text(
                    text ?? 'Text',
                    style: textStyle ??
                        TextStyle(
                          color: isfill ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
