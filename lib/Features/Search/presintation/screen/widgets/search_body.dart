import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/input_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'search_list_veiw_result.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: InputTextForm(
              colorBorder: Colors.white,
              styleInput: const TextStyle(color: Colors.white),
              textHint: 'Start Search For Your Book',
              textHintStyle: const TextStyle(color: Colors.white),
              colorBorderFocused: Colors.amberAccent,
              suffix: FontAwesomeIcons.magnifyingGlass,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Search Result',
            style: Styles.text18w600,
          ),
          const SizedBox(
            height: 16,
          ),
          // const Expanded(child: ListViewResult()),
        ],
      ),
    );
  }
}
