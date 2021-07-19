import 'package:moceansdk/moceansdk.dart';
import 'package:moceansdk/src/modules/command/command_mc.dart';
import 'package:moceansdk/src/modules/command/mc/send_sms.dart';
import 'package:moceansdk/src/modules/command/mc/tg_request_contact.dart';
import 'package:moceansdk/src/modules/command/mc/tg_send_animation.dart';
import 'package:moceansdk/src/modules/command/mc/tg_send_audio.dart';
import 'package:moceansdk/src/modules/command/mc/tg_send_document.dart';
import 'package:moceansdk/src/modules/command/mc/tg_send_photo.dart';
import 'package:moceansdk/src/modules/command/mc/tg_send_text.dart';
import 'package:moceansdk/src/modules/command/mc/tg_send_video.dart';
import 'package:moceansdk/src/modules/command/mc/wa_send_audio.dart';
import 'package:moceansdk/src/modules/command/mc/wa_send_contact.dart';
import 'package:moceansdk/src/modules/command/mc/wa_send_document.dart';
import 'package:moceansdk/src/modules/command/mc/wa_send_location.dart';
import 'package:moceansdk/src/modules/command/mc/wa_send_photo.dart';
import 'package:moceansdk/src/modules/command/mc/wa_send_sticker.dart';
import 'package:moceansdk/src/modules/command/mc/wa_send_text.dart';
import 'package:moceansdk/src/modules/command/mc/wa_send_video.dart';
import 'package:moceansdk/src/modules/command/mc/wa_send_with_template.dart';
import 'package:test/test.dart';

main(){
  
  group('Test command mc', () {
    
    test('test TgSendText', () {

      expect(CommandMc.tgSendText is TgSendText, equals(true));
    });

    test('test TgSendAudio', () {
      expect(CommandMc.tgSendAudio is TgSendAudio, equals(true));
    });

    test('test TgSendAnimation', () {
      expect(CommandMc.tgSendAnimation is TgSendAnimation, equals(true));
    });

    test('test TgSendDocument', () {
      expect(CommandMc.tgSendDocument is TgSendDocument, equals(true));
    });

    test('test TgSendPhoto', () {
      expect(CommandMc.tgSendPhoto is TgSendPhoto, equals(true));
    });

    test('test TgSendVideo', () {
      expect(CommandMc.tgSendVideo is TgSendVideo, equals(true));
    });

    test('test sendSMS', () {
      expect(CommandMc.sendSMS is SendSMS, equals(true));
    });

    test('test TgRequestContact', () {
      expect(CommandMc.tgRequestContact is TgRequestContact, equals(true));
    });

    test('test WaSendText', () {
      expect(CommandMc.waSendText is WaSendText, equals(true));
    });

    test('test WaSendContact', () {
      expect(CommandMc.waSendContact is WaSendContact, equals(true));
    });

    test('test WaSendLocation', () {
      expect(CommandMc.waSendLocation is WaSendLocation, equals(true));
    });

    test('test WaSendAudio', () {
      expect(CommandMc.waSendAudio is WaSendAudio, equals(true));
    });

    test('test WaSendDocument', () {
      expect(CommandMc.waSendDocument is WaSendDocument, equals(true));
    });

    test('test WaSendPhoto', () {
      expect(CommandMc.waSendPhoto is WaSendPhoto, equals(true));
    });

    test('test WaSendVideo', () {
      expect(CommandMc.waSendVideo is WaSendVideo, equals(true));
    });

    test('test WaSendSticker', () {
      expect(CommandMc.waSendSticker is WaSendSticker, equals(true));
    });

    test('test WaSendWithTemplate', () {
      expect(CommandMc.waSendWithTemplate is WaSendWithTemplate, equals(true));
    });
  });
  
}