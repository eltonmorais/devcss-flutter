// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GameController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GameController on _GameControllerBase, Store {
  Computed<bool> _$isStartedComputed;

  @override
  bool get isStarted =>
      (_$isStartedComputed ??= Computed<bool>(() => super.isStarted)).value;
  Computed<bool> _$isAnimatedComputed;

  @override
  bool get isAnimated =>
      (_$isAnimatedComputed ??= Computed<bool>(() => super.isAnimated)).value;
  Computed<bool> _$sucessoComputed;

  @override
  bool get sucesso =>
      (_$sucessoComputed ??= Computed<bool>(() => super.sucesso)).value;
  Computed<bool> _$asErrorComputed;

  @override
  bool get asError =>
      (_$asErrorComputed ??= Computed<bool>(() => super.asError)).value;
  Computed<int> _$animationPositionComputed;

  @override
  int get animationPosition => (_$animationPositionComputed ??=
          Computed<int>(() => super.animationPosition))
      .value;

  final _$_currentValueAtom = Atom(name: '_GameControllerBase._currentValue');

  @override
  int get _currentValue {
    _$_currentValueAtom.context.enforceReadPolicy(_$_currentValueAtom);
    _$_currentValueAtom.reportObserved();
    return super._currentValue;
  }

  @override
  set _currentValue(int value) {
    _$_currentValueAtom.context.conditionallyRunInAction(() {
      super._currentValue = value;
      _$_currentValueAtom.reportChanged();
    }, _$_currentValueAtom, name: '${_$_currentValueAtom.name}_set');
  }

  final _$_isStartedAtom = Atom(name: '_GameControllerBase._isStarted');

  @override
  bool get _isStarted {
    _$_isStartedAtom.context.enforceReadPolicy(_$_isStartedAtom);
    _$_isStartedAtom.reportObserved();
    return super._isStarted;
  }

  @override
  set _isStarted(bool value) {
    _$_isStartedAtom.context.conditionallyRunInAction(() {
      super._isStarted = value;
      _$_isStartedAtom.reportChanged();
    }, _$_isStartedAtom, name: '${_$_isStartedAtom.name}_set');
  }

  final _$_isAnimatedAtom = Atom(name: '_GameControllerBase._isAnimated');

  @override
  bool get _isAnimated {
    _$_isAnimatedAtom.context.enforceReadPolicy(_$_isAnimatedAtom);
    _$_isAnimatedAtom.reportObserved();
    return super._isAnimated;
  }

  @override
  set _isAnimated(bool value) {
    _$_isAnimatedAtom.context.conditionallyRunInAction(() {
      super._isAnimated = value;
      _$_isAnimatedAtom.reportChanged();
    }, _$_isAnimatedAtom, name: '${_$_isAnimatedAtom.name}_set');
  }

  final _$_sucessoAtom = Atom(name: '_GameControllerBase._sucesso');

  @override
  bool get _sucesso {
    _$_sucessoAtom.context.enforceReadPolicy(_$_sucessoAtom);
    _$_sucessoAtom.reportObserved();
    return super._sucesso;
  }

  @override
  set _sucesso(bool value) {
    _$_sucessoAtom.context.conditionallyRunInAction(() {
      super._sucesso = value;
      _$_sucessoAtom.reportChanged();
    }, _$_sucessoAtom, name: '${_$_sucessoAtom.name}_set');
  }

  final _$_asErrorAtom = Atom(name: '_GameControllerBase._asError');

  @override
  bool get _asError {
    _$_asErrorAtom.context.enforceReadPolicy(_$_asErrorAtom);
    _$_asErrorAtom.reportObserved();
    return super._asError;
  }

  @override
  set _asError(bool value) {
    _$_asErrorAtom.context.conditionallyRunInAction(() {
      super._asError = value;
      _$_asErrorAtom.reportChanged();
    }, _$_asErrorAtom, name: '${_$_asErrorAtom.name}_set');
  }

  final _$_positionAtom = Atom(name: '_GameControllerBase._position');

  @override
  int get _position {
    _$_positionAtom.context.enforceReadPolicy(_$_positionAtom);
    _$_positionAtom.reportObserved();
    return super._position;
  }

  @override
  set _position(int value) {
    _$_positionAtom.context.conditionallyRunInAction(() {
      super._position = value;
      _$_positionAtom.reportChanged();
    }, _$_positionAtom, name: '${_$_positionAtom.name}_set');
  }

  final _$_animationPositionAtom =
      Atom(name: '_GameControllerBase._animationPosition');

  @override
  int get _animationPosition {
    _$_animationPositionAtom.context
        .enforceReadPolicy(_$_animationPositionAtom);
    _$_animationPositionAtom.reportObserved();
    return super._animationPosition;
  }

  @override
  set _animationPosition(int value) {
    _$_animationPositionAtom.context.conditionallyRunInAction(() {
      super._animationPosition = value;
      _$_animationPositionAtom.reportChanged();
    }, _$_animationPositionAtom, name: '${_$_animationPositionAtom.name}_set');
  }

  final _$geniusAtom = Atom(name: '_GameControllerBase.genius');

  @override
  GeniusController get genius {
    _$geniusAtom.context.enforceReadPolicy(_$geniusAtom);
    _$geniusAtom.reportObserved();
    return super.genius;
  }

  @override
  set genius(GeniusController value) {
    _$geniusAtom.context.conditionallyRunInAction(() {
      super.genius = value;
      _$geniusAtom.reportChanged();
    }, _$geniusAtom, name: '${_$geniusAtom.name}_set');
  }

  final _$currentValuesAtom = Atom(name: '_GameControllerBase.currentValues');

  @override
  ObservableList<dynamic> get currentValues {
    _$currentValuesAtom.context.enforceReadPolicy(_$currentValuesAtom);
    _$currentValuesAtom.reportObserved();
    return super.currentValues;
  }

  @override
  set currentValues(ObservableList<dynamic> value) {
    _$currentValuesAtom.context.conditionallyRunInAction(() {
      super.currentValues = value;
      _$currentValuesAtom.reportChanged();
    }, _$currentValuesAtom, name: '${_$currentValuesAtom.name}_set');
  }

  final _$_GameControllerBaseActionController =
      ActionController(name: '_GameControllerBase');

  @override
  dynamic gameStart(int value) {
    final _$actionInfo = _$_GameControllerBaseActionController.startAction();
    try {
      return super.gameStart(value);
    } finally {
      _$_GameControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic startAnimation() {
    final _$actionInfo = _$_GameControllerBaseActionController.startAction();
    try {
      return super.startAnimation();
    } finally {
      _$_GameControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic animationNext() {
    final _$actionInfo = _$_GameControllerBaseActionController.startAction();
    try {
      return super.animationNext();
    } finally {
      _$_GameControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic incrementaLista() {
    final _$actionInfo = _$_GameControllerBaseActionController.startAction();
    try {
      return super.incrementaLista();
    } finally {
      _$_GameControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic gameStop() {
    final _$actionInfo = _$_GameControllerBaseActionController.startAction();
    try {
      return super.gameStop();
    } finally {
      _$_GameControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic click(int value) {
    final _$actionInfo = _$_GameControllerBaseActionController.startAction();
    try {
      return super.click(value);
    } finally {
      _$_GameControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic gameContinue() {
    final _$actionInfo = _$_GameControllerBaseActionController.startAction();
    try {
      return super.gameContinue();
    } finally {
      _$_GameControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic gameAction() {
    final _$actionInfo = _$_GameControllerBaseActionController.startAction();
    try {
      return super.gameAction();
    } finally {
      _$_GameControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}
