import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gosports/shared/theme.dart';

class LabeledCheckbox extends StatelessWidget {
  const LabeledCheckbox({
    Key? key,
    required this.label,
    required this.padding,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final String label;
  final EdgeInsets padding;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                label,
                style: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: semibold, color: kBlackColor),
              ),
            ),
            Checkbox(
              activeColor: kOrangeColor,
              value: value,
              onChanged: (bool? newValue) {
                onChanged(newValue!);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class IngatSaya extends StatefulWidget {
  const IngatSaya({Key? key}) : super(key: key);

  @override
  State<IngatSaya> createState() => _IngatSaya();
}

class _IngatSaya extends State<IngatSaya> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 100),
      child: Theme(
        data: ThemeData(
          unselectedWidgetColor: const Color(0xFF95A1AC),
        ),
        child: LabeledCheckbox(
          label: 'Ingat Saya',
          padding: const EdgeInsets.only(left: 20),
          value: _isSelected,
          onChanged: (bool newValue) {
            setState(
              () {
                _isSelected = newValue;
              },
            );
          },
        ),
      ),
    );
  }
}
