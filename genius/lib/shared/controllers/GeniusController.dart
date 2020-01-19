import 'package:mobx/mobx.dart';
part 'GeniusController.g.dart';

class GeniusController = _GeniusControllerBase with _$GeniusController;

abstract class _GeniusControllerBase with Store {

  @observable
  int _contador=0;

  @observable
  int _timer=0;

  @computed
  int get contador => this._contador;
  @computed
  int get timer => this._timer;

  _GeniusControllerBase(){
    reset();
  }

  @action
  incrementaContador(){
    reinicarTempo(10);
    this._contador++;
  }

  @action
  reduzirTimer(){
    this._timer--;
  }

  @action
  start(int value){
    this._timer=value;
  }

  @action
  reinicarTempo(int segundos){
    this._timer=segundos;
  }

  @action
  reset(){
    this._contador=0;
    reinicarTempo(0);
  }

}