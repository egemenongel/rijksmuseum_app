import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:rijksmuseum_app/core/extensions/extensions.dart';

class MaterialFeature extends StatelessWidget {
  const MaterialFeature({
    super.key,
    required this.iconPath,
    required this.prop,
  });

  final IconData iconPath;
  final String prop;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(iconPath),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text(
            prop,
            style: context.textTheme.headlineSmall,
          ),
        ),
      ],
    );
  }
}
