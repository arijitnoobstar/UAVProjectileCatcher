
"use strict";

let MountConfigure = require('./MountConfigure.js')
let FileRemove = require('./FileRemove.js')
let ParamGet = require('./ParamGet.js')
let LogRequestData = require('./LogRequestData.js')
let FileOpen = require('./FileOpen.js')
let FileWrite = require('./FileWrite.js')
let FileList = require('./FileList.js')
let FileRename = require('./FileRename.js')
let WaypointPull = require('./WaypointPull.js')
let CommandInt = require('./CommandInt.js')
let CommandBool = require('./CommandBool.js')
let FileChecksum = require('./FileChecksum.js')
let LogRequestList = require('./LogRequestList.js')
let MessageInterval = require('./MessageInterval.js')
let CommandTriggerControl = require('./CommandTriggerControl.js')
let FileClose = require('./FileClose.js')
let ParamPush = require('./ParamPush.js')
let FileRemoveDir = require('./FileRemoveDir.js')
let SetMode = require('./SetMode.js')
let StreamRate = require('./StreamRate.js')
let WaypointClear = require('./WaypointClear.js')
let FileMakeDir = require('./FileMakeDir.js')
let FileTruncate = require('./FileTruncate.js')
let LogRequestEnd = require('./LogRequestEnd.js')
let WaypointPush = require('./WaypointPush.js')
let SetMavFrame = require('./SetMavFrame.js')
let WaypointSetCurrent = require('./WaypointSetCurrent.js')
let VehicleInfoGet = require('./VehicleInfoGet.js')
let CommandTOL = require('./CommandTOL.js')
let ParamPull = require('./ParamPull.js')
let ParamSet = require('./ParamSet.js')
let CommandTriggerInterval = require('./CommandTriggerInterval.js')
let CommandHome = require('./CommandHome.js')
let CommandLong = require('./CommandLong.js')
let FileRead = require('./FileRead.js')
let CommandVtolTransition = require('./CommandVtolTransition.js')

module.exports = {
  MountConfigure: MountConfigure,
  FileRemove: FileRemove,
  ParamGet: ParamGet,
  LogRequestData: LogRequestData,
  FileOpen: FileOpen,
  FileWrite: FileWrite,
  FileList: FileList,
  FileRename: FileRename,
  WaypointPull: WaypointPull,
  CommandInt: CommandInt,
  CommandBool: CommandBool,
  FileChecksum: FileChecksum,
  LogRequestList: LogRequestList,
  MessageInterval: MessageInterval,
  CommandTriggerControl: CommandTriggerControl,
  FileClose: FileClose,
  ParamPush: ParamPush,
  FileRemoveDir: FileRemoveDir,
  SetMode: SetMode,
  StreamRate: StreamRate,
  WaypointClear: WaypointClear,
  FileMakeDir: FileMakeDir,
  FileTruncate: FileTruncate,
  LogRequestEnd: LogRequestEnd,
  WaypointPush: WaypointPush,
  SetMavFrame: SetMavFrame,
  WaypointSetCurrent: WaypointSetCurrent,
  VehicleInfoGet: VehicleInfoGet,
  CommandTOL: CommandTOL,
  ParamPull: ParamPull,
  ParamSet: ParamSet,
  CommandTriggerInterval: CommandTriggerInterval,
  CommandHome: CommandHome,
  CommandLong: CommandLong,
  FileRead: FileRead,
  CommandVtolTransition: CommandVtolTransition,
};
