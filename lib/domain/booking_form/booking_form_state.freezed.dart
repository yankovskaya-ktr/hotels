// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Field {
  String get name => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FieldCopyWith<Field> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldCopyWith<$Res> {
  factory $FieldCopyWith(Field value, $Res Function(Field) then) =
      _$FieldCopyWithImpl<$Res, Field>;
  @useResult
  $Res call({String name, bool isValid});
}

/// @nodoc
class _$FieldCopyWithImpl<$Res, $Val extends Field>
    implements $FieldCopyWith<$Res> {
  _$FieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FieldCopyWith<$Res> implements $FieldCopyWith<$Res> {
  factory _$$_FieldCopyWith(_$_Field value, $Res Function(_$_Field) then) =
      __$$_FieldCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, bool isValid});
}

/// @nodoc
class __$$_FieldCopyWithImpl<$Res> extends _$FieldCopyWithImpl<$Res, _$_Field>
    implements _$$_FieldCopyWith<$Res> {
  __$$_FieldCopyWithImpl(_$_Field _value, $Res Function(_$_Field) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? isValid = null,
  }) {
    return _then(_$_Field(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Field with DiagnosticableTreeMixin implements _Field {
  const _$_Field({required this.name, required this.isValid});

  @override
  final String name;
  @override
  final bool isValid;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Field(name: $name, isValid: $isValid)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Field'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('isValid', isValid));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Field &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FieldCopyWith<_$_Field> get copyWith =>
      __$$_FieldCopyWithImpl<_$_Field>(this, _$identity);
}

abstract class _Field implements Field {
  const factory _Field(
      {required final String name, required final bool isValid}) = _$_Field;

  @override
  String get name;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$_FieldCopyWith<_$_Field> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CustomerDetailsFields {
  Field get phone => throw _privateConstructorUsedError;
  Field get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerDetailsFieldsCopyWith<CustomerDetailsFields> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerDetailsFieldsCopyWith<$Res> {
  factory $CustomerDetailsFieldsCopyWith(CustomerDetailsFields value,
          $Res Function(CustomerDetailsFields) then) =
      _$CustomerDetailsFieldsCopyWithImpl<$Res, CustomerDetailsFields>;
  @useResult
  $Res call({Field phone, Field email});

  $FieldCopyWith<$Res> get phone;
  $FieldCopyWith<$Res> get email;
}

/// @nodoc
class _$CustomerDetailsFieldsCopyWithImpl<$Res,
        $Val extends CustomerDetailsFields>
    implements $CustomerDetailsFieldsCopyWith<$Res> {
  _$CustomerDetailsFieldsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Field,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Field,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FieldCopyWith<$Res> get phone {
    return $FieldCopyWith<$Res>(_value.phone, (value) {
      return _then(_value.copyWith(phone: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FieldCopyWith<$Res> get email {
    return $FieldCopyWith<$Res>(_value.email, (value) {
      return _then(_value.copyWith(email: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CustomerDetailsFieldsCopyWith<$Res>
    implements $CustomerDetailsFieldsCopyWith<$Res> {
  factory _$$_CustomerDetailsFieldsCopyWith(_$_CustomerDetailsFields value,
          $Res Function(_$_CustomerDetailsFields) then) =
      __$$_CustomerDetailsFieldsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Field phone, Field email});

  @override
  $FieldCopyWith<$Res> get phone;
  @override
  $FieldCopyWith<$Res> get email;
}

/// @nodoc
class __$$_CustomerDetailsFieldsCopyWithImpl<$Res>
    extends _$CustomerDetailsFieldsCopyWithImpl<$Res, _$_CustomerDetailsFields>
    implements _$$_CustomerDetailsFieldsCopyWith<$Res> {
  __$$_CustomerDetailsFieldsCopyWithImpl(_$_CustomerDetailsFields _value,
      $Res Function(_$_CustomerDetailsFields) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? email = null,
  }) {
    return _then(_$_CustomerDetailsFields(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Field,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Field,
    ));
  }
}

/// @nodoc

class _$_CustomerDetailsFields
    with DiagnosticableTreeMixin
    implements _CustomerDetailsFields {
  const _$_CustomerDetailsFields({required this.phone, required this.email});

  @override
  final Field phone;
  @override
  final Field email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CustomerDetailsFields(phone: $phone, email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CustomerDetailsFields'))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerDetailsFields &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerDetailsFieldsCopyWith<_$_CustomerDetailsFields> get copyWith =>
      __$$_CustomerDetailsFieldsCopyWithImpl<_$_CustomerDetailsFields>(
          this, _$identity);
}

abstract class _CustomerDetailsFields implements CustomerDetailsFields {
  const factory _CustomerDetailsFields(
      {required final Field phone,
      required final Field email}) = _$_CustomerDetailsFields;

  @override
  Field get phone;
  @override
  Field get email;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerDetailsFieldsCopyWith<_$_CustomerDetailsFields> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TouristDetailsFields {
  Field get name => throw _privateConstructorUsedError;
  Field get surname => throw _privateConstructorUsedError;
  Field get dateOfBirth => throw _privateConstructorUsedError;
  Field get citizenship => throw _privateConstructorUsedError;
  Field get passportNumber => throw _privateConstructorUsedError;
  Field get passportValidity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TouristDetailsFieldsCopyWith<TouristDetailsFields> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TouristDetailsFieldsCopyWith<$Res> {
  factory $TouristDetailsFieldsCopyWith(TouristDetailsFields value,
          $Res Function(TouristDetailsFields) then) =
      _$TouristDetailsFieldsCopyWithImpl<$Res, TouristDetailsFields>;
  @useResult
  $Res call(
      {Field name,
      Field surname,
      Field dateOfBirth,
      Field citizenship,
      Field passportNumber,
      Field passportValidity});

  $FieldCopyWith<$Res> get name;
  $FieldCopyWith<$Res> get surname;
  $FieldCopyWith<$Res> get dateOfBirth;
  $FieldCopyWith<$Res> get citizenship;
  $FieldCopyWith<$Res> get passportNumber;
  $FieldCopyWith<$Res> get passportValidity;
}

/// @nodoc
class _$TouristDetailsFieldsCopyWithImpl<$Res,
        $Val extends TouristDetailsFields>
    implements $TouristDetailsFieldsCopyWith<$Res> {
  _$TouristDetailsFieldsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? surname = null,
    Object? dateOfBirth = null,
    Object? citizenship = null,
    Object? passportNumber = null,
    Object? passportValidity = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Field,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as Field,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as Field,
      citizenship: null == citizenship
          ? _value.citizenship
          : citizenship // ignore: cast_nullable_to_non_nullable
              as Field,
      passportNumber: null == passportNumber
          ? _value.passportNumber
          : passportNumber // ignore: cast_nullable_to_non_nullable
              as Field,
      passportValidity: null == passportValidity
          ? _value.passportValidity
          : passportValidity // ignore: cast_nullable_to_non_nullable
              as Field,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FieldCopyWith<$Res> get name {
    return $FieldCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FieldCopyWith<$Res> get surname {
    return $FieldCopyWith<$Res>(_value.surname, (value) {
      return _then(_value.copyWith(surname: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FieldCopyWith<$Res> get dateOfBirth {
    return $FieldCopyWith<$Res>(_value.dateOfBirth, (value) {
      return _then(_value.copyWith(dateOfBirth: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FieldCopyWith<$Res> get citizenship {
    return $FieldCopyWith<$Res>(_value.citizenship, (value) {
      return _then(_value.copyWith(citizenship: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FieldCopyWith<$Res> get passportNumber {
    return $FieldCopyWith<$Res>(_value.passportNumber, (value) {
      return _then(_value.copyWith(passportNumber: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FieldCopyWith<$Res> get passportValidity {
    return $FieldCopyWith<$Res>(_value.passportValidity, (value) {
      return _then(_value.copyWith(passportValidity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TouristDetailsFieldsCopyWith<$Res>
    implements $TouristDetailsFieldsCopyWith<$Res> {
  factory _$$_TouristDetailsFieldsCopyWith(_$_TouristDetailsFields value,
          $Res Function(_$_TouristDetailsFields) then) =
      __$$_TouristDetailsFieldsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Field name,
      Field surname,
      Field dateOfBirth,
      Field citizenship,
      Field passportNumber,
      Field passportValidity});

  @override
  $FieldCopyWith<$Res> get name;
  @override
  $FieldCopyWith<$Res> get surname;
  @override
  $FieldCopyWith<$Res> get dateOfBirth;
  @override
  $FieldCopyWith<$Res> get citizenship;
  @override
  $FieldCopyWith<$Res> get passportNumber;
  @override
  $FieldCopyWith<$Res> get passportValidity;
}

/// @nodoc
class __$$_TouristDetailsFieldsCopyWithImpl<$Res>
    extends _$TouristDetailsFieldsCopyWithImpl<$Res, _$_TouristDetailsFields>
    implements _$$_TouristDetailsFieldsCopyWith<$Res> {
  __$$_TouristDetailsFieldsCopyWithImpl(_$_TouristDetailsFields _value,
      $Res Function(_$_TouristDetailsFields) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? surname = null,
    Object? dateOfBirth = null,
    Object? citizenship = null,
    Object? passportNumber = null,
    Object? passportValidity = null,
  }) {
    return _then(_$_TouristDetailsFields(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Field,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as Field,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as Field,
      citizenship: null == citizenship
          ? _value.citizenship
          : citizenship // ignore: cast_nullable_to_non_nullable
              as Field,
      passportNumber: null == passportNumber
          ? _value.passportNumber
          : passportNumber // ignore: cast_nullable_to_non_nullable
              as Field,
      passportValidity: null == passportValidity
          ? _value.passportValidity
          : passportValidity // ignore: cast_nullable_to_non_nullable
              as Field,
    ));
  }
}

/// @nodoc

class _$_TouristDetailsFields
    with DiagnosticableTreeMixin
    implements _TouristDetailsFields {
  const _$_TouristDetailsFields(
      {required this.name,
      required this.surname,
      required this.dateOfBirth,
      required this.citizenship,
      required this.passportNumber,
      required this.passportValidity});

  @override
  final Field name;
  @override
  final Field surname;
  @override
  final Field dateOfBirth;
  @override
  final Field citizenship;
  @override
  final Field passportNumber;
  @override
  final Field passportValidity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TouristDetailsFields(name: $name, surname: $surname, dateOfBirth: $dateOfBirth, citizenship: $citizenship, passportNumber: $passportNumber, passportValidity: $passportValidity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TouristDetailsFields'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('surname', surname))
      ..add(DiagnosticsProperty('dateOfBirth', dateOfBirth))
      ..add(DiagnosticsProperty('citizenship', citizenship))
      ..add(DiagnosticsProperty('passportNumber', passportNumber))
      ..add(DiagnosticsProperty('passportValidity', passportValidity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TouristDetailsFields &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.citizenship, citizenship) ||
                other.citizenship == citizenship) &&
            (identical(other.passportNumber, passportNumber) ||
                other.passportNumber == passportNumber) &&
            (identical(other.passportValidity, passportValidity) ||
                other.passportValidity == passportValidity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, surname, dateOfBirth,
      citizenship, passportNumber, passportValidity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TouristDetailsFieldsCopyWith<_$_TouristDetailsFields> get copyWith =>
      __$$_TouristDetailsFieldsCopyWithImpl<_$_TouristDetailsFields>(
          this, _$identity);
}

abstract class _TouristDetailsFields implements TouristDetailsFields {
  const factory _TouristDetailsFields(
      {required final Field name,
      required final Field surname,
      required final Field dateOfBirth,
      required final Field citizenship,
      required final Field passportNumber,
      required final Field passportValidity}) = _$_TouristDetailsFields;

  @override
  Field get name;
  @override
  Field get surname;
  @override
  Field get dateOfBirth;
  @override
  Field get citizenship;
  @override
  Field get passportNumber;
  @override
  Field get passportValidity;
  @override
  @JsonKey(ignore: true)
  _$$_TouristDetailsFieldsCopyWith<_$_TouristDetailsFields> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookingFormState {
  CustomerDetailsFields get customerDetails =>
      throw _privateConstructorUsedError;
  List<TouristDetailsFields> get touristsDetails =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookingFormStateCopyWith<BookingFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingFormStateCopyWith<$Res> {
  factory $BookingFormStateCopyWith(
          BookingFormState value, $Res Function(BookingFormState) then) =
      _$BookingFormStateCopyWithImpl<$Res, BookingFormState>;
  @useResult
  $Res call(
      {CustomerDetailsFields customerDetails,
      List<TouristDetailsFields> touristsDetails});

  $CustomerDetailsFieldsCopyWith<$Res> get customerDetails;
}

/// @nodoc
class _$BookingFormStateCopyWithImpl<$Res, $Val extends BookingFormState>
    implements $BookingFormStateCopyWith<$Res> {
  _$BookingFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerDetails = null,
    Object? touristsDetails = null,
  }) {
    return _then(_value.copyWith(
      customerDetails: null == customerDetails
          ? _value.customerDetails
          : customerDetails // ignore: cast_nullable_to_non_nullable
              as CustomerDetailsFields,
      touristsDetails: null == touristsDetails
          ? _value.touristsDetails
          : touristsDetails // ignore: cast_nullable_to_non_nullable
              as List<TouristDetailsFields>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerDetailsFieldsCopyWith<$Res> get customerDetails {
    return $CustomerDetailsFieldsCopyWith<$Res>(_value.customerDetails,
        (value) {
      return _then(_value.copyWith(customerDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BookingFormStateCopyWith<$Res>
    implements $BookingFormStateCopyWith<$Res> {
  factory _$$_BookingFormStateCopyWith(
          _$_BookingFormState value, $Res Function(_$_BookingFormState) then) =
      __$$_BookingFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CustomerDetailsFields customerDetails,
      List<TouristDetailsFields> touristsDetails});

  @override
  $CustomerDetailsFieldsCopyWith<$Res> get customerDetails;
}

/// @nodoc
class __$$_BookingFormStateCopyWithImpl<$Res>
    extends _$BookingFormStateCopyWithImpl<$Res, _$_BookingFormState>
    implements _$$_BookingFormStateCopyWith<$Res> {
  __$$_BookingFormStateCopyWithImpl(
      _$_BookingFormState _value, $Res Function(_$_BookingFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerDetails = null,
    Object? touristsDetails = null,
  }) {
    return _then(_$_BookingFormState(
      customerDetails: null == customerDetails
          ? _value.customerDetails
          : customerDetails // ignore: cast_nullable_to_non_nullable
              as CustomerDetailsFields,
      touristsDetails: null == touristsDetails
          ? _value._touristsDetails
          : touristsDetails // ignore: cast_nullable_to_non_nullable
              as List<TouristDetailsFields>,
    ));
  }
}

/// @nodoc

class _$_BookingFormState
    with DiagnosticableTreeMixin
    implements _BookingFormState {
  const _$_BookingFormState(
      {required this.customerDetails,
      required final List<TouristDetailsFields> touristsDetails})
      : _touristsDetails = touristsDetails;

  @override
  final CustomerDetailsFields customerDetails;
  final List<TouristDetailsFields> _touristsDetails;
  @override
  List<TouristDetailsFields> get touristsDetails {
    if (_touristsDetails is EqualUnmodifiableListView) return _touristsDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_touristsDetails);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookingFormState(customerDetails: $customerDetails, touristsDetails: $touristsDetails)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookingFormState'))
      ..add(DiagnosticsProperty('customerDetails', customerDetails))
      ..add(DiagnosticsProperty('touristsDetails', touristsDetails));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookingFormState &&
            (identical(other.customerDetails, customerDetails) ||
                other.customerDetails == customerDetails) &&
            const DeepCollectionEquality()
                .equals(other._touristsDetails, _touristsDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerDetails,
      const DeepCollectionEquality().hash(_touristsDetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookingFormStateCopyWith<_$_BookingFormState> get copyWith =>
      __$$_BookingFormStateCopyWithImpl<_$_BookingFormState>(this, _$identity);
}

abstract class _BookingFormState implements BookingFormState {
  const factory _BookingFormState(
          {required final CustomerDetailsFields customerDetails,
          required final List<TouristDetailsFields> touristsDetails}) =
      _$_BookingFormState;

  @override
  CustomerDetailsFields get customerDetails;
  @override
  List<TouristDetailsFields> get touristsDetails;
  @override
  @JsonKey(ignore: true)
  _$$_BookingFormStateCopyWith<_$_BookingFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
