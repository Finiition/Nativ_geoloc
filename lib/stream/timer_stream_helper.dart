import 'dart:async';

class TimerStreamHelper {
  static TimerStreamHelper _timerStreamHelper;

  StreamController _streamController;
  StreamController get streamController => _streamController;

  static TimerStreamHelper getSingelton() {
    if (_timerStreamHelper == null) {
      _timerStreamHelper = new TimerStreamHelper();
      _timerStreamHelper._openStreamController();
    }
    return _timerStreamHelper;
  }

  _openStreamController() {
    _streamController = StreamController.broadcast();
  }

  closeStreamController() {
    _streamController?.close();
    _timerStreamHelper = null;
  }
}
