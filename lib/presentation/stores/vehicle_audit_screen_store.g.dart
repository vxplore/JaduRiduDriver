// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_audit_screen_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$VehicleAuditStore on _VehicleAuditScreenStore, Store {
  late final _$requiredStepsAtom =
      Atom(name: '_VehicleAuditScreenStore.requiredSteps', context: context);

  @override
  List<VehicleAuditStep> get requiredSteps {
    _$requiredStepsAtom.reportRead();
    return super.requiredSteps;
  }

  @override
  set requiredSteps(List<VehicleAuditStep> value) {
    _$requiredStepsAtom.reportWrite(value, super.requiredSteps, () {
      super.requiredSteps = value;
    });
  }

  late final _$gettingDataLoaderAtom = Atom(
      name: '_VehicleAuditScreenStore.gettingDataLoader', context: context);

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

  late final _$selectedStepAtom =
      Atom(name: '_VehicleAuditScreenStore.selectedStep', context: context);

  @override
  VehicleAuditStep? get selectedStep {
    _$selectedStepAtom.reportRead();
    return super.selectedStep;
  }

  @override
  set selectedStep(VehicleAuditStep? value) {
    _$selectedStepAtom.reportWrite(value, super.selectedStep, () {
      super.selectedStep = value;
    });
  }

  late final _$getRequiredStepsAsyncAction = AsyncAction(
      '_VehicleAuditScreenStore.getRequiredSteps',
      context: context);

  @override
  Future getRequiredSteps() {
    return _$getRequiredStepsAsyncAction.run(() => super.getRequiredSteps());
  }

  late final _$_VehicleAuditScreenStoreActionController =
      ActionController(name: '_VehicleAuditScreenStore', context: context);

  @override
  dynamic onStepClicked(VehicleAuditStep step) {
    final _$actionInfo = _$_VehicleAuditScreenStoreActionController.startAction(
        name: '_VehicleAuditScreenStore.onStepClicked');
    try {
      return super.onStepClicked(step);
    } finally {
      _$_VehicleAuditScreenStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
requiredSteps: ${requiredSteps},
gettingDataLoader: ${gettingDataLoader},
selectedStep: ${selectedStep}
    ''';
  }
}
