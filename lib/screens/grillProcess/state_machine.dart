import 'package:flutter/material.dart';
import 'package:helpmeat/screens/grillProcess/state/finish_state.dart';
import 'package:helpmeat/screens/grillProcess/state/screen_info.dart';
import 'package:helpmeat/screens/grillProcess/state/start_state.dart';
import 'package:helpmeat/screens/grillProcess/state/timer_state.dart';
import 'package:helpmeat/screens/grillProcess/state/turn_over_state.dart';

class StateMachine {
  late BuildContext _context;
  late GrillType _type;
  GrillState _currentState = GrillState.NONE;
  late ScreenInfo _screenInfo;
  late void Function() _onFinished;
  late void Function() _onTerminated;

  bool hasGrillState() {
    if (_currentState != GrillState.NONE) {
      return true;
    }
    return false;
  }

  void init(BuildContext context, GrillType type, void Function() onFinished, void Function() onTerminated) {
    _context = context;
    _type = type;
    _onFinished = onFinished;
    _onTerminated = onTerminated;
    _currentState = GrillState.START;
    _screenInfo = StartState(context: _context, onFinished: _onFinished);
  }

  ScreenInfo getScreenInfo() {
    return _screenInfo;
  }

  void next() {
    switch (_type) {
      case GrillType.THIN:
        _nextForThin();
        break;
      case GrillType.THICK:
        _nextForThick();
        break;
    }
  }

  void _nextForThin() {
    switch (_currentState) {
      case GrillState.START:
        _currentState = GrillState.TIMER_FRONT;
        _screenInfo = TimerState(context: _context, onFinished: _onFinished);
        break;
      case GrillState.TIMER_FRONT:
        _currentState = GrillState.TURN_OVER_FRONT;
        _screenInfo = TurnOverState(context: _context, onFinished: _onFinished);
        break;
      case GrillState.TURN_OVER_FRONT:
        _currentState = GrillState.TIMER_BACK;
        _screenInfo = TimerState(context: _context, onFinished: _onFinished);
        break;
      case GrillState.TIMER_BACK:
        _currentState = GrillState.FINISH;
        _screenInfo = FinishState(context: _context, onFinished: _onFinished, onTerminated: _onTerminated);
        break;
      case GrillState.FINISH:
        _currentState = GrillState.START;
        _screenInfo = StartState(context: _context, onFinished: _onFinished);
        break;
      default:
        break;
    }
  }

  void _nextForThick() {
    // Nothing to do
  }
}

enum GrillType {
  THIN,
  THICK,
}

enum GrillState {
  NONE,
  START,
  TIMER_FRONT,
  TURN_OVER_FRONT,
  TIMER_BACK,
  FINISH
}
