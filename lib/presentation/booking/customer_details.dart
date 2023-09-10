import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotels/presentation/booking/form_controller.dart';
import 'package:hotels/presentation/constants/constants.dart';
import 'package:hotels/presentation/styles/styles_text.dart';

import '../components/decorated_container_custom.dart';
import '../components/text_form_field_custom.dart';

class CustomerDetails extends ConsumerStatefulWidget {
  const CustomerDetails({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CustomerDetailsState();
}

class _CustomerDetailsState extends ConsumerState<CustomerDetails> {
  late int _lastPhoneLength;
  late TextEditingController _phoneController;
  late GlobalKey<FormFieldState> _emailFieldKey;

  @override
  void initState() {
    super.initState();
    _phoneController = TextEditingController();
    _lastPhoneLength = Constants.phoneNumberMask.length;
    _emailFieldKey = GlobalKey<FormFieldState>();
  }

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedContainerCustom(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Информация о покупателе', style: StylesText.title),
        const SizedBox(height: 20),
        // Поле phone
        TextFormFieldCustom(
            labelText: ref.watch(formControllerProvider
                .select((form) => form.customerDetails.phone.name)),
            controller: _phoneController,
            onChanged: _onNumberFieldChanged,
            onTap: _onNumberFieldTap,
            validator: (value) {
              bool isValid = ref
                  .read(formControllerProvider.notifier)
                  .validatePhone(value);
              return isValid ? null : '';
            },
            keyboardType: TextInputType.number,
            isValid: ref.watch(formControllerProvider
                .select((form) => form.customerDetails.phone.isValid))),
        const SizedBox(height: 8),
        // Поле email
        TextFormFieldCustom(
          fieldKey: _emailFieldKey,
          labelText: ref.watch(formControllerProvider
              .select((form) => form.customerDetails.email.name)),
          validator: (value) {
            bool isValid =
                ref.read(formControllerProvider.notifier).validateEmail(value);
            return isValid ? null : '';
          },
          onFieldSubmitted: (value) =>
              ref.read(formControllerProvider.notifier).validateEmail(value),
          isValid: ref.watch(formControllerProvider
              .select((form) => form.customerDetails.email.isValid)),
        ),
        const SizedBox(height: 8),
        const Text(
          'Эти данные никому не передаются. После оплаты мы вышлем чек на указанный вами номер и почту',
          style: TextStyle(
            color: Color(0xFF828796),
            fontSize: 14,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w400,
            height: 1.20,
          ),
        )
      ],
    ));
  }

  void _onNumberFieldTap() {
    // если еще не вводили номер, заполняем поле маской
    if (_phoneController.text == '') {
      _setNumberFieldInitState();
    }
  }

  void _setNumberFieldInitState() {
    _phoneController.value = _phoneController.value.copyWith(
        text: Constants.phoneNumberMask,
        selection: TextSelection.fromPosition(const TextPosition(offset: 4)));
  }

  void _onNumberFieldChanged(String value) {
    // Если стерли все символы, снова заполняем дефотлной маской
    if (_phoneController.text == '') {
      _setNumberFieldInitState();
      return;
    }
    int cursorPosition = _phoneController.selection.start;
    // Если стерли символ
    if (_phoneController.text.length < _lastPhoneLength) {
      _lastPhoneLength = _phoneController.text.length;
      return;
    }
    // Запрещаем воод после маски
    if (cursorPosition > Constants.phoneNumberMask.length) {
      _phoneController.value = _phoneController.value.copyWith(
          text: _phoneController.text
              .substring(0, Constants.phoneNumberMask.length),
          selection: TextSelection.fromPosition(
              const TextPosition(offset: Constants.phoneNumberMask.length)));
      return;
    }
    // если следующий символ *, удаляем его
    if (_phoneController.text.length > cursorPosition) {
      if (_phoneController.text[cursorPosition] == '*') {
        _phoneController.value = _phoneController.value.replaced(
            TextRange(start: cursorPosition, end: cursorPosition + 1), '');
      } else {
        // если следующий символ - часть маски, ищем следующую * и заменяем ее на только что введенный символ
        int nextToRemove = _phoneController.text.indexOf('*', cursorPosition);
        // если звезд правее нет, обрезаем правый край по длине маски
        if (nextToRemove == -1) {
          _phoneController.text = _phoneController.text
              .substring(0, Constants.phoneNumberMask.length);
          return;
        }
        _phoneController.value = _phoneController.value.copyWith(
            text: _phoneController.text
                .replaceRange(nextToRemove, nextToRemove + 1,
                    _phoneController.text[cursorPosition - 1])
                .replaceRange(cursorPosition - 1, cursorPosition, ''),
            selection:
                TextSelection.fromPosition(TextPosition(offset: nextToRemove)));
      }
    }

    _lastPhoneLength = _phoneController.text.length;
  }

  // void _onNumberFieldTapOutside(PointerDownEvent event) {
  //   setState(() {
  //     // _phoneFocusNode.unfocus();

  //     _phoneController.text = '';
  //   });
  // }

  // void _onNumberFieldSubmitted(String value) {
  //   setState(() {
  //     // _phoneController.text = '';
  //   });
  // }

  // void _onNumberFieldEditingComplete() {
  //   setState(() {
  //     // _phoneController.text = '';
  //   });
  // }
}
