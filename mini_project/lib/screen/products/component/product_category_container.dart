import 'package:flutter/material.dart';
import 'package:mini_project/model/category_model.dart';
import '../../../component/custom_category_container.dart';
import '../../../model/product_category_model.dart';

class RowCategoryContainer extends StatefulWidget {
  const RowCategoryContainer({super.key});

  @override
  State<RowCategoryContainer> createState() => _RowCategoryContainerState();
}

class _RowCategoryContainerState extends State<RowCategoryContainer> {
  int selectedCategoryIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        productDemoList.length,
        (index) => CategoryContainer(
          text: productDemoList[index]["text"]!,
          isSelected: index == selectedCategoryIndex,
          press: () {
            setState(() {
              selectedCategoryIndex = index;
            });
          },
        ),
      ),
    );
  }
}
