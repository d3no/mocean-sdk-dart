import 'package:moceansdk/src/modules/command/mc/tg_send_photo.dart';
import 'package:moceansdk/src/modules/command/mc/tg_send_text.dart';
import 'package:moceansdk/src/modules/command/mc/tg_send_audio.dart';
import 'package:moceansdk/src/modules/command/mc/tg_send_animation.dart';
import 'package:moceansdk/src/modules/command/mc/tg_send_document.dart';
import 'package:moceansdk/src/modules/command/mc/tg_send_video.dart';
import 'package:moceansdk/src/modules/command/mc/tg_request_contact.dart';
import 'package:moceansdk/src/modules/command/mc/send_sms.dart';
import 'package:moceansdk/src/modules/command/mc/wa_send_audio.dart';
import 'package:moceansdk/src/modules/command/mc/wa_send_contact.dart';
import 'package:moceansdk/src/modules/command/mc/wa_send_document.dart';
import 'package:moceansdk/src/modules/command/mc/wa_send_location.dart';
import 'package:moceansdk/src/modules/command/mc/wa_send_photo.dart';
import 'package:moceansdk/src/modules/command/mc/wa_send_sticker.dart';
import 'package:moceansdk/src/modules/command/mc/wa_send_video.dart';
import 'package:moceansdk/src/modules/command/mc/wa_send_with_template.dart';
import 'mc/wa_send_text.dart';

class CommandMc {
  static TgSendText get tgSendText => TgSendText();

  static TgSendAudio get tgSendAudio => TgSendAudio();

  static TgSendAnimation get tgSendAnimation => TgSendAnimation();

  static TgSendDocument get tgSendDocument => TgSendDocument();

  static TgSendVideo get tgSendVideo => TgSendVideo();

  static TgSendPhoto get tgSendPhoto => TgSendPhoto();

  static TgRequestContact get tgRequestContact => TgRequestContact();

  static SendSMS get sendSMS => SendSMS();

  static WaSendText get waSendText => WaSendText();

  static WaSendContact get waSendContact => WaSendContact();

  static WaSendLocation get waSendLocation => WaSendLocation();

  static WaSendAudio get waSendAudio => WaSendAudio();

  static WaSendPhoto get waSendPhoto => WaSendPhoto();

  static WaSendDocument get waSendDocument => WaSendDocument();

  static WaSendVideo get waSendVideo => WaSendVideo();

  static WaSendSticker get waSendSticker => WaSendSticker();

  static WaSendWithTemplate get waSendWithTemplate => WaSendWithTemplate();
}
