
"use strict";

let MotorPWM = require('./MotorPWM.js');
let Altimeter = require('./Altimeter.js');
let RawMagnetic = require('./RawMagnetic.js');
let ThrustCommand = require('./ThrustCommand.js');
let HeadingCommand = require('./HeadingCommand.js');
let ControllerState = require('./ControllerState.js');
let HeightCommand = require('./HeightCommand.js');
let MotorCommand = require('./MotorCommand.js');
let ServoCommand = require('./ServoCommand.js');
let MotorStatus = require('./MotorStatus.js');
let VelocityZCommand = require('./VelocityZCommand.js');
let YawrateCommand = require('./YawrateCommand.js');
let Compass = require('./Compass.js');
let AttitudeCommand = require('./AttitudeCommand.js');
let VelocityXYCommand = require('./VelocityXYCommand.js');
let RawRC = require('./RawRC.js');
let RC = require('./RC.js');
let Supply = require('./Supply.js');
let RuddersCommand = require('./RuddersCommand.js');
let PositionXYCommand = require('./PositionXYCommand.js');
let RawImu = require('./RawImu.js');
let LandingActionGoal = require('./LandingActionGoal.js');
let TakeoffResult = require('./TakeoffResult.js');
let PoseFeedback = require('./PoseFeedback.js');
let TakeoffAction = require('./TakeoffAction.js');
let LandingAction = require('./LandingAction.js');
let PoseActionFeedback = require('./PoseActionFeedback.js');
let LandingResult = require('./LandingResult.js');
let TakeoffActionGoal = require('./TakeoffActionGoal.js');
let PoseActionGoal = require('./PoseActionGoal.js');
let LandingFeedback = require('./LandingFeedback.js');
let PoseAction = require('./PoseAction.js');
let TakeoffGoal = require('./TakeoffGoal.js');
let PoseActionResult = require('./PoseActionResult.js');
let LandingActionResult = require('./LandingActionResult.js');
let TakeoffActionResult = require('./TakeoffActionResult.js');
let TakeoffActionFeedback = require('./TakeoffActionFeedback.js');
let LandingActionFeedback = require('./LandingActionFeedback.js');
let LandingGoal = require('./LandingGoal.js');
let PoseGoal = require('./PoseGoal.js');
let PoseResult = require('./PoseResult.js');
let TakeoffFeedback = require('./TakeoffFeedback.js');

module.exports = {
  MotorPWM: MotorPWM,
  Altimeter: Altimeter,
  RawMagnetic: RawMagnetic,
  ThrustCommand: ThrustCommand,
  HeadingCommand: HeadingCommand,
  ControllerState: ControllerState,
  HeightCommand: HeightCommand,
  MotorCommand: MotorCommand,
  ServoCommand: ServoCommand,
  MotorStatus: MotorStatus,
  VelocityZCommand: VelocityZCommand,
  YawrateCommand: YawrateCommand,
  Compass: Compass,
  AttitudeCommand: AttitudeCommand,
  VelocityXYCommand: VelocityXYCommand,
  RawRC: RawRC,
  RC: RC,
  Supply: Supply,
  RuddersCommand: RuddersCommand,
  PositionXYCommand: PositionXYCommand,
  RawImu: RawImu,
  LandingActionGoal: LandingActionGoal,
  TakeoffResult: TakeoffResult,
  PoseFeedback: PoseFeedback,
  TakeoffAction: TakeoffAction,
  LandingAction: LandingAction,
  PoseActionFeedback: PoseActionFeedback,
  LandingResult: LandingResult,
  TakeoffActionGoal: TakeoffActionGoal,
  PoseActionGoal: PoseActionGoal,
  LandingFeedback: LandingFeedback,
  PoseAction: PoseAction,
  TakeoffGoal: TakeoffGoal,
  PoseActionResult: PoseActionResult,
  LandingActionResult: LandingActionResult,
  TakeoffActionResult: TakeoffActionResult,
  TakeoffActionFeedback: TakeoffActionFeedback,
  LandingActionFeedback: LandingActionFeedback,
  LandingGoal: LandingGoal,
  PoseGoal: PoseGoal,
  PoseResult: PoseResult,
  TakeoffFeedback: TakeoffFeedback,
};
