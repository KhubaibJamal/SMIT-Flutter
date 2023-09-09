import 'package:flutter/material.dart';

import '../colors.dart';
import '../size_config.dart';

class CategoryContainer extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback press;
  const CategoryContainer({
    super.key,
    required this.text,
    required this.isSelected,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(10.0),
      ),
      child: GestureDetector(
        onTap: press,
        child: Container(
          padding: EdgeInsets.all(getProportionateScreenWidth(10.0)),
          decoration: BoxDecoration(
            color: isSelected ? AppColor.kSecondaryColor : Colors.white,
            border: Border.all(
              color: isSelected ? Colors.white : AppColor.kTextLightColor,
              width: isSelected ? 0 : 1.5,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: getProportionateScreenWidth(18),
                fontWeight: FontWeight.w600,
                color:
                    isSelected ? AppColor.kTextColor : AppColor.kTextLightColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
