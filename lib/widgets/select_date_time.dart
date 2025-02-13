import 'package:flutter/material.dart';
import 'package:todolist/utils/utils.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'common_text_field.dart';

class SelectDateTime extends StatelessWidget {
  const SelectDateTime({super.key});

  @override
  Widget build(BuildContext context) {


    return Row(
      children: [
        Expanded(
          child: CommonTextField(
            title: 'Date',
            hintText: 'Helpers.dateFormatter(date)',
            readOnly: true,
            suffixIcon: IconButton(
              onPressed: null,
              icon: const FaIcon(FontAwesomeIcons.calendar),
            ),
          ),
        ),
        const Gap(10),
        Expanded(
          child: CommonTextField(
            title: 'Time',
            hintText: 'Helpers.timeToString(time)',
            readOnly: true,
            suffixIcon: IconButton(
              onPressed: null,
              icon: const FaIcon(FontAwesomeIcons.clock),
            ),
          ),
        ),
      ],
    );
  }
}