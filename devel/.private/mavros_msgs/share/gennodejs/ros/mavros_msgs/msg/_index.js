
"use strict";

let VFR_HUD = require('./VFR_HUD.js');
let Param = require('./Param.js');
let TimesyncStatus = require('./TimesyncStatus.js');
let ESCInfo = require('./ESCInfo.js');
let CamIMUStamp = require('./CamIMUStamp.js');
let CommandCode = require('./CommandCode.js');
let ESCStatusItem = require('./ESCStatusItem.js');
let HilGPS = require('./HilGPS.js');
let HilControls = require('./HilControls.js');
let GPSRAW = require('./GPSRAW.js');
let GPSRTK = require('./GPSRTK.js');
let ManualControl = require('./ManualControl.js');
let DebugValue = require('./DebugValue.js');
let FileEntry = require('./FileEntry.js');
let OverrideRCIn = require('./OverrideRCIn.js');
let WheelOdomStamped = require('./WheelOdomStamped.js');
let GlobalPositionTarget = require('./GlobalPositionTarget.js');
let Vibration = require('./Vibration.js');
let MountControl = require('./MountControl.js');
let CompanionProcessStatus = require('./CompanionProcessStatus.js');
let RadioStatus = require('./RadioStatus.js');
let State = require('./State.js');
let Thrust = require('./Thrust.js');
let OnboardComputerStatus = require('./OnboardComputerStatus.js');
let LogData = require('./LogData.js');
let Mavlink = require('./Mavlink.js');
let Trajectory = require('./Trajectory.js');
let Altitude = require('./Altitude.js');
let VehicleInfo = require('./VehicleInfo.js');
let PositionTarget = require('./PositionTarget.js');
let AttitudeTarget = require('./AttitudeTarget.js');
let WaypointReached = require('./WaypointReached.js');
let HilActuatorControls = require('./HilActuatorControls.js');
let HomePosition = require('./HomePosition.js');
let StatusText = require('./StatusText.js');
let ExtendedState = require('./ExtendedState.js');
let RTKBaseline = require('./RTKBaseline.js');
let RCIn = require('./RCIn.js');
let HilSensor = require('./HilSensor.js');
let LandingTarget = require('./LandingTarget.js');
let ParamValue = require('./ParamValue.js');
let ESCInfoItem = require('./ESCInfoItem.js');
let ESCStatus = require('./ESCStatus.js');
let EstimatorStatus = require('./EstimatorStatus.js');
let BatteryStatus = require('./BatteryStatus.js');
let ADSBVehicle = require('./ADSBVehicle.js');
let PlayTuneV2 = require('./PlayTuneV2.js');
let RCOut = require('./RCOut.js');
let ActuatorControl = require('./ActuatorControl.js');
let RTCM = require('./RTCM.js');
let WaypointList = require('./WaypointList.js');
let HilStateQuaternion = require('./HilStateQuaternion.js');
let Waypoint = require('./Waypoint.js');
let LogEntry = require('./LogEntry.js');
let OpticalFlowRad = require('./OpticalFlowRad.js');

module.exports = {
  VFR_HUD: VFR_HUD,
  Param: Param,
  TimesyncStatus: TimesyncStatus,
  ESCInfo: ESCInfo,
  CamIMUStamp: CamIMUStamp,
  CommandCode: CommandCode,
  ESCStatusItem: ESCStatusItem,
  HilGPS: HilGPS,
  HilControls: HilControls,
  GPSRAW: GPSRAW,
  GPSRTK: GPSRTK,
  ManualControl: ManualControl,
  DebugValue: DebugValue,
  FileEntry: FileEntry,
  OverrideRCIn: OverrideRCIn,
  WheelOdomStamped: WheelOdomStamped,
  GlobalPositionTarget: GlobalPositionTarget,
  Vibration: Vibration,
  MountControl: MountControl,
  CompanionProcessStatus: CompanionProcessStatus,
  RadioStatus: RadioStatus,
  State: State,
  Thrust: Thrust,
  OnboardComputerStatus: OnboardComputerStatus,
  LogData: LogData,
  Mavlink: Mavlink,
  Trajectory: Trajectory,
  Altitude: Altitude,
  VehicleInfo: VehicleInfo,
  PositionTarget: PositionTarget,
  AttitudeTarget: AttitudeTarget,
  WaypointReached: WaypointReached,
  HilActuatorControls: HilActuatorControls,
  HomePosition: HomePosition,
  StatusText: StatusText,
  ExtendedState: ExtendedState,
  RTKBaseline: RTKBaseline,
  RCIn: RCIn,
  HilSensor: HilSensor,
  LandingTarget: LandingTarget,
  ParamValue: ParamValue,
  ESCInfoItem: ESCInfoItem,
  ESCStatus: ESCStatus,
  EstimatorStatus: EstimatorStatus,
  BatteryStatus: BatteryStatus,
  ADSBVehicle: ADSBVehicle,
  PlayTuneV2: PlayTuneV2,
  RCOut: RCOut,
  ActuatorControl: ActuatorControl,
  RTCM: RTCM,
  WaypointList: WaypointList,
  HilStateQuaternion: HilStateQuaternion,
  Waypoint: Waypoint,
  LogEntry: LogEntry,
  OpticalFlowRad: OpticalFlowRad,
};
