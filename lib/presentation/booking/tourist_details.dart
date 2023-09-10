import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotels/presentation/components/square_icon.dart';
import 'package:hotels/presentation/constants/constants.dart';
import 'package:hotels/presentation/styles/styles_text.dart';

import '../../domain/booking_form/booking_form_state.dart';
import '../components/text_form_field_custom.dart';
import 'form_controller.dart';

class TouristDetails extends ConsumerStatefulWidget {
  final int index;
  const TouristDetails({super.key, required this.index});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TouristDetailsState();
}

class _TouristDetailsState extends ConsumerState<TouristDetails> {
  int get index => widget.index;
  late bool _isExpanded;

  @override
  void initState() {
    super.initState();
    _isExpanded = index == 0;
  }

  @override
  Widget build(BuildContext context) {
    TouristDetailsFields fields = ref.watch(
        formControllerProvider.select((form) => form.touristsDetails[index]));

    return Column(children: [
      const SizedBox(height: 8),
      ExpansionTile(
        maintainState: true,
        title: Text('${index < 10 ? Constants.ordinals[index] : index} турист',
            style: StylesText.title),
        trailing: SquareIcon(
            imageAsset: _isExpanded
                ? 'assets/icons/arrow-up.png'
                : 'assets/icons/arrow-down.png',
            backgroundColor: const Color(0x190D72FF)),
        onExpansionChanged: (bool expanded) {
          setState(() {
            _isExpanded = expanded;
          });
        },
        initiallyExpanded: index == 0,
        children: [
          TextFormFieldCustom(
            labelText: fields.name.name,
            isValid: fields.name.isValid,
            validator: (value) {
              bool isValid = ref
                  .read(formControllerProvider.notifier)
                  .validateName(value, index);
              return isValid ? null : '';
            },
          ),
          const SizedBox(height: 8),
          TextFormFieldCustom(
            labelText: fields.surname.name,
            isValid: fields.surname.isValid,
            validator: (value) {
              bool isValid = ref
                  .read(formControllerProvider.notifier)
                  .validateSurname(value, index);
              return isValid ? null : '';
            },
          ),
          const SizedBox(height: 8),
          TextFormFieldCustom(
            labelText: fields.dateOfBirth.name,
            isValid: fields.dateOfBirth.isValid,
            validator: (value) {
              bool isValid = ref
                  .read(formControllerProvider.notifier)
                  .validateDateOfBirth(value, index);
              return isValid ? null : '';
            },
          ),
          const SizedBox(height: 8),
          TextFormFieldCustom(
            labelText: fields.citizenship.name,
            isValid: fields.citizenship.isValid,
            validator: (value) {
              bool isValid = ref
                  .read(formControllerProvider.notifier)
                  .validateCitizenship(value, index);
              return isValid ? null : '';
            },
          ),
          const SizedBox(height: 8),
          TextFormFieldCustom(
            labelText: fields.passportNumber.name,
            isValid: fields.passportNumber.isValid,
            validator: (value) {
              bool isValid = ref
                  .read(formControllerProvider.notifier)
                  .validatePpassportNumber(value, index);
              return isValid ? null : '';
            },
          ),
          const SizedBox(height: 8),
          TextFormFieldCustom(
            labelText: fields.passportValidity.name,
            isValid: fields.passportValidity.isValid,
            validator: (value) {
              bool isValid = ref
                  .read(formControllerProvider.notifier)
                  .validatePassportValidity(value, index);
              return isValid ? null : '';
            },
          ),
        ],
      )
    ]);
  }
}
