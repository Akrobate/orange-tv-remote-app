class DeviceHttpParams {

  static const ON_OFF = 116;
  static const CHANNEL_0 = 512;
  static const CHANNEL_1 = 513;
  static const CHANNEL_2 = 514;
  static const CHANNEL_3 = 515;
  static const CHANNEL_4 = 516;
  static const CHANNEL_5 = 517;
  static const CHANNEL_6 = 518;
  static const CHANNEL_7 = 519;
  static const CHANNEL_8 = 520;
  static const CHANNEL_9 = 521;
  static const CHANNEL_NEXT = 402;
  static const CHANNEL_PREVIOUS = 403;
  static const VOLUME_UP = 115;
  static const VOLUME_DOWN = 114;
  static const VOLUME_MUTE = 113;
  static const UP = 103;
  static const DOWN = 108;
  static const LEFT = 105;
  static const RIGHT = 116;
  static const OK = 352;
  static const BACK = 158;
  static const MENU = 139;
  static const PLAY_PAUSE = 164;
  static const FAST_FORWARD = 159;
  static const FAST_BACKWARD = 168;
  static const RECORD = 167;
  static const VOD = 393;

  static const MODE_SIMPLE = 0;
  static const MODE_BUTTON_PRESS = 1;
  static const MODE_BUTTON_RELEASE = 2;
}


// Documentation found on
// http://blubsy-news.blogspot.com/2017/10/domotique-commander-la-livebox-avec-la.html?m=1
//
// use full extract
//
// http://ip_livebox_tv:8080/remoteControl/cmd?operation=01&key=code_touche&mode=numéro_mode
//
// numero mode :
// 0 : envoi unique de touche
// 1 : appui prolongé de touche
// 2 : relacher la touche après un appui prolongé
//
// code_touche :
// 116 : ON/OFF
// 512 : 0
// 513 : 1
// 514 : 2
// 515 : 3
// 516 : 4
// 517 : 5
// 518 : 6
// 519 : 7
// 520 : 8
// 521 : 9
// 402 : CH+
// 403 : CH-
// 115 : VOL+
// 114 : VOL-
// 113 : MUTE
// 103 : UP
// 108 : DOWN
// 105 : LEFT
// 116 : RIGHT
// 352 : OK
// 158 : BACK
// 139 : MENU
// 164 : PLAY/PAUSE
// 168 : FBWD
// 159 : FFWD
// 167 : REC
// 393 : VOD
