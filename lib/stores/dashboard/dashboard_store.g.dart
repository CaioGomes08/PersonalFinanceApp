// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DashboardStore on DashboardStoreBase, Store {
  late final _$busyDashboardAtom =
      Atom(name: 'DashboardStoreBase.busyDashboard', context: context);

  @override
  bool get busyDashboard {
    _$busyDashboardAtom.reportRead();
    return super.busyDashboard;
  }

  @override
  set busyDashboard(bool value) {
    _$busyDashboardAtom.reportWrite(value, super.busyDashboard, () {
      super.busyDashboard = value;
    });
  }

  late final _$dashboardSummaryAtom =
      Atom(name: 'DashboardStoreBase.dashboardSummary', context: context);

  @override
  DashboardDto get dashboardSummary {
    _$dashboardSummaryAtom.reportRead();
    return super.dashboardSummary;
  }

  @override
  set dashboardSummary(DashboardDto value) {
    _$dashboardSummaryAtom.reportWrite(value, super.dashboardSummary, () {
      super.dashboardSummary = value;
    });
  }

  late final _$dashboardErrorMessageAtom =
      Atom(name: 'DashboardStoreBase.dashboardErrorMessage', context: context);

  @override
  String? get dashboardErrorMessage {
    _$dashboardErrorMessageAtom.reportRead();
    return super.dashboardErrorMessage;
  }

  @override
  set dashboardErrorMessage(String? value) {
    _$dashboardErrorMessageAtom.reportWrite(value, super.dashboardErrorMessage,
        () {
      super.dashboardErrorMessage = value;
    });
  }

  late final _$DashboardStoreBaseActionController =
      ActionController(name: 'DashboardStoreBase', context: context);

  @override
  void setBusyDashboard(bool value) {
    final _$actionInfo = _$DashboardStoreBaseActionController.startAction(
        name: 'DashboardStoreBase.setBusyDashboard');
    try {
      return super.setBusyDashboard(value);
    } finally {
      _$DashboardStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDashboardSummary(DashboardDto dashboard) {
    final _$actionInfo = _$DashboardStoreBaseActionController.startAction(
        name: 'DashboardStoreBase.setDashboardSummary');
    try {
      return super.setDashboardSummary(dashboard);
    } finally {
      _$DashboardStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearDashboardSummary() {
    final _$actionInfo = _$DashboardStoreBaseActionController.startAction(
        name: 'DashboardStoreBase.clearDashboardSummary');
    try {
      return super.clearDashboardSummary();
    } finally {
      _$DashboardStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDashboardErrorMessage(String error) {
    final _$actionInfo = _$DashboardStoreBaseActionController.startAction(
        name: 'DashboardStoreBase.setDashboardErrorMessage');
    try {
      return super.setDashboardErrorMessage(error);
    } finally {
      _$DashboardStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearDashboardErrorMessage() {
    final _$actionInfo = _$DashboardStoreBaseActionController.startAction(
        name: 'DashboardStoreBase.clearDashboardErrorMessage');
    try {
      return super.clearDashboardErrorMessage();
    } finally {
      _$DashboardStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
busyDashboard: ${busyDashboard},
dashboardSummary: ${dashboardSummary},
dashboardErrorMessage: ${dashboardErrorMessage}
    ''';
  }
}
