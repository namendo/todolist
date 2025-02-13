import 'package:flutter/material.dart';
import 'package:todolist/utils/utils.dart';
import 'package:todolist/widgets/widgets.dart';
import 'package:gap/gap.dart';

class CategoriesSelection extends StatelessWidget {
  const CategoriesSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<TaskCategory> categories = TaskCategory.values.toList();

    return SizedBox(
      height: 60,
      child: Row(
        children: [
          Text(
            'Category',
            style: context.textTheme.titleLarge,
          ),
          const Gap(10),
          Expanded(
            child: ListView.separated(
              itemCount: categories.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: const AlwaysScrollableScrollPhysics(),
              itemBuilder: (ctx, index) {
                final category = categories[index];

                return InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(30),
                  child: CircleContainer(
                    color: category.color.withOpacity(0.3),
                    borderColor: category.color,
                    child: Icon(
                      category.icon,
                      /*color: selectedCategory == category
                          ? context.colorScheme.primary
                          : category.color.withOpacity(0.5),*/
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const Gap(8),
            ),
          ),
        ],
      ),
    );
  }
}