import 'dart:io';
import 'dart:math';

import 'package:genius/shared/controllers/GeniusController.dart';
import 'package:mobx/mobx.dart';

part 'GameController.g.dart';

class GameController = _GameControllerBase with _$GameController;

abstract class _GameControllerBase with Store {

  @observable
  int _currentValue=0;

  @observable
  bool _isStarted=false;
  @observable
  bool _isAnimated=false;
  @observable
  bool _sucesso=false;
  @observable
  bool _asError=false;
  @observable
  int _position=-1;
  @observable
  int _animationPosition=0;

  @observable
  GeniusController genius = GeniusController();

  @observable
  ObservableList currentValues=[].asObservable();

  @computed
  bool get isStarted => this._isStarted;  
  @computed
  bool get isAnimated => this._isAnimated;
  @computed
  bool get sucesso => this._sucesso;
  @computed
  bool get asError => this._asError;
  @computed
  int get animationPosition => this._animationPosition;

  Stream<int> _actionStream = Stream.periodic(
      const Duration(seconds: 1,), 
      (int count) {
        return count;
      }
    ).asBroadcastStream();  

  _GameControllerBase(){
    this._isStarted=false;
    this._isAnimated=false;
    gameAction();
  }

  @action
  gameStart(int value){

    this._asError=false;
    this._isStarted=true;
    this._sucesso=false;
    this._position=0;
    this.currentValues.clear();

    genius.start(value);
    incrementaLista();

  }

  @action
  startAnimation(){
    this._isAnimated=true;
    this._animationPosition=0;
  }

  @action
  animationNext(){
    if(this.animationPosition<currentValues.length-1){
      this._animationPosition++;
    } else {
      this._isAnimated=false;
    }
  }

  @action
  incrementaLista(){
    var _random = new Random();
    currentValues.add(_random.nextInt(3)+1);
    print("Lista Atual: ${currentValues}");
  }

  @action
  gameStop(){

    this._isStarted=false;
    this._isAnimated=false;
    this._position=0;

    genius.reset();

  }

  @action
  click(int value){
    
    if(this._isStarted){
      if(currentValues[_position]==value){
        _position++;
        genius.reinicarTempo(10);
      } else {
        this._asError=true;
        gameStop();
      }
    }

    if(currentValues.length==this._position){
      incrementaLista();
      this._position=0;
      this._sucesso=true;
      genius.incrementaContador();
    }

  }

  @action
  gameContinue(){
    this._sucesso=false;
  }

  @action
  gameAction() {

    this._actionStream.listen((int newAmount) {

      if(isStarted && genius.timer>1){
        genius.reduzirTimer();
      } else {
        gameStop();
      }

      if(this.sucesso){
        gameContinue();       
      }

    });

  }  

}