// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_all_details_screen_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AddAllDetailsStore on _AddAllDetailsScreenStore, Store {
  late final _$clearingLoaderAtom =
      Atom(name: '_AddAllDetailsScreenStore.clearingLoader', context: context);

  @override
  bool get clearingLoader {
    _$clearingLoaderAtom.reportRead();
    return super.clearingLoader;
  }

  @override
  set clearingLoader(bool value) {
    _$clearingLoaderAtom.reportWrite(value, super.clearingLoader, () {
      super.clearingLoader = value;
    });
  }

  late final _$gettingDataLoaderAtom = Atom(
      name: '_AddAllDetailsScreenStore.gettingDataLoader', context: context);

  @override
  bool get gettingDataLoader {
    _$gettingDataLoaderAtom.reportRead();
    return super.gettingDataLoader;
  }

  @override
  set gettingDataLoader(bool value) {
    _$gettingDataLoaderAtom.reportWrite(value, super.gettingDataLoader, () {
      super.gettingDataLoader = value;
    });
  }

  late final _$requiredStepsAtom =
      Atom(name: '_AddAllDetailsScreenStore.requiredSteps', context: context);

  @override
  List<DetailStep> get requiredSteps {
    _$requiredStepsAtom.reportRead();
    return super.requiredSteps;
  }

  @override
  set requiredSteps(List<DetailStep> value) {
    _$requiredStepsAtom.reportWrite(value, super.requiredSteps, () {
      super.requiredSteps = value;
    });
  }

  late final _$optionalStepsAtom =
      Atom(name: '_AddAllDetailsScreenStore.optionalSteps', context: context);

  @override
  List<DetailStep> get optionalSteps {
    _$optionalStepsAtom.reportRead();
    return super.optionalSteps;
  }

  @override
  set optionalSteps(List<DetailStep> value) {
    _$optionalStepsAtom.reportWrite(value, super.optionalSteps, () {
      super.optionalSteps = value;
    });
  }

  late final _$informMessageAtom =
      Atom(name: '_AddAllDetailsScreenStore.informMessage', context: context);

  @override
  String get informMessage {
    _$informMessageAtom.reportRead();
    return super.informMessage;
  }

  @override
  set informMessage(String value) {
    _$informMessageAtom.reportWrite(value, super.informMessage, () {
      super.informMessage = value;
    });
  }

  late final _$continueBtnAtom =
      Atom(name: '_AddAllDetailsScreenStore.continueBtn', context: context);

  @override
  bool get continueBtn {
    _$continueBtnAtom.reportRead();
    return super.continueBtn;
  }

  @override
  set continueBtn(bool value) {
    _$continueBtnAtom.reportWrite(value, super.continueBtn, () {
      super.continueBtn = value;
    });
  }

  late final _$getInitialDataAsyncAction =
      AsyncAction('_AddAllDetailsScreenStore.getInitialData', context: context);

  @override
  Future getInitialData() {
    return _$getInitialDataAsyncAction.run(() => super.getInitialData());
  }

  late final _$onCancelResetAsyncAction =
      AsyncAction('_AddAllDetailsScreenStore.onCancelReset', context: context);

  @override
  Future onCancelReset() {
    return _$onCancelResetAsyncAction.run(() => super.onCancelReset());
  }

  @override
  String toString() {
    return '''
clearingLoader: ${clearingLoader},
gettingDataLoader: ${gettingDataLoader},
requiredSteps: ${requiredSteps},
optionalSteps: ${optionalSteps},
informMessage: ${informMessage},
continueBtn: ${continueBtn}
    ''';
  }
}
