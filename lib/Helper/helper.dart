import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:intl/intl.dart';
import 'package:mrmsios/Helper/color.dart';
import 'package:mrmsios/constant/assets.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';

enum ImageRatio { profile, banner }

class Helper {

  static String formatCurrencyIdr(String value) {
    try {
      final formatter = new NumberFormat("#,###");
      return "IDR ${formatter.format(int.parse(value))}";
    } catch (e) {
      return 'IDR 0';
    }
  }

  Future<File> testCompressAndGetFile(File file, String targetPath) async {
    var result = await FlutterImageCompress.compressAndGetFile(
      file.absolute.path, targetPath,
      quality: 88,
      rotate: 180,
    );

    print(file.lengthSync());
    print(result.lengthSync());

    return result;
  }

  static String getMimeType(String path) {
    String extension = path.substring(path.lastIndexOf("/") + 1);
    return extension.toLowerCase();
  }

  static Future<File> compressAndGetFile(File file, String targetPath, {int quality = 10}) async {
    var result = await FlutterImageCompress.compressAndGetFile(
      file.absolute.path,
      targetPath,
      quality: quality,
    );

    //print(file.lengthSync());
    //print(result.lengthSync());

    return result;
  }


  static Future<File> cropImage(File file, {ImageRatio ratioImage, bool lockRatio = true, bool isCompress = false}) async {
    //debugPrint('check cropper');
    CropAspectRatio cropAspectRatio;
    if (ratioImage == null) {
      cropAspectRatio = new CropAspectRatio(ratioX: 1, ratioY: 1);
    } else {
      if (ratioImage == ImageRatio.banner) {
        cropAspectRatio = new CropAspectRatio(ratioX: 1920, ratioY: 600);
      } else {
        cropAspectRatio = new CropAspectRatio(ratioX: 1, ratioY: 1);
      }
    }
    File croppedFile;
    if (lockRatio) {
      croppedFile = await ImageCropper.cropImage(
        sourcePath: file.path,
        aspectRatio: cropAspectRatio,
        maxHeight: 2048,
        maxWidth: 2048,
        compressQuality: isCompress ? 10 : 100,
        iosUiSettings: IOSUiSettings(
          doneButtonTitle: "Done",
          hidesNavigationBar: true,
          cancelButtonTitle: "Cancel",
          aspectRatioLockEnabled: true,
          rotateClockwiseButtonHidden: true,
          aspectRatioLockDimensionSwapEnabled: true,
          aspectRatioPickerButtonHidden: true,
          rotateButtonsHidden: true,
          resetButtonHidden: true,
          minimumAspectRatio: 1.0,
          resetAspectRatioEnabled: true,
        ),
        androidUiSettings: AndroidUiSettings(toolbarTitle: 'Edit', toolbarColor: ColorsState.colorPrimaryBlue, toolbarWidgetColor: Colors.white, lockAspectRatio: true, hideBottomControls: true),
      );
    } else {
      int crop = await file.length();
      croppedFile = await ImageCropper.cropImage(
        sourcePath: file.path,
        compressQuality: isCompress ? crop > 1000000 ? 85 : 100 : 100,
        maxHeight: 2048,
        maxWidth: 2048,
        iosUiSettings: IOSUiSettings(
          doneButtonTitle: "Done",
          hidesNavigationBar: true,
          cancelButtonTitle: "Cancel",
          aspectRatioLockEnabled: false,
          rotateClockwiseButtonHidden: false,
          aspectRatioLockDimensionSwapEnabled: false,
          aspectRatioPickerButtonHidden: true,
          rotateButtonsHidden: true,
          resetButtonHidden: true,
          resetAspectRatioEnabled: true,
        ),
        androidUiSettings: AndroidUiSettings(toolbarTitle: 'Edit', toolbarColor: Colors.deepOrange, toolbarWidgetColor: Colors.white, lockAspectRatio: false, hideBottomControls: true),
      );
    }
    if (croppedFile != null) {
      if (isCompress) {
        int lengthCrop = await croppedFile.length();
        // Log('lengthCrop => $lengthCrop');
        if (lengthCrop > 1000000) {
          String item = '$lengthCrop';
          int bagi = int.parse(item.substring(0, 1));
          int divided;
          // Log('lengthCrop bagi=> $bagi');
          if (bagi == 1) {
            divided = lengthCrop ~/ 0.5;
          } else {
            divided = lengthCrop ~/ (bagi ~/ 0.5);
          }
          int percent = 100 - (divided * 100) ~/ lengthCrop;
          final dir = await getApplicationDocumentsDirectory();
          String name = Helper.getMimeType(croppedFile.path);
          String path = '${dir.path}/$name';
          File compress = await compressAndGetFile(croppedFile, path, quality: percent);
          int lengthCompress = await compress.length();
          // Log('compress => $lengthCompress');
          return compress;
        } else {
          return croppedFile;
        }
      } else {
        return croppedFile;
      }
    }

    return null;
  }


  static String formatDate(String date,
      {String format = 'yyyy-MM-dd : hh:mm:ss'}) {
    String result = '';

    var now = DateTime.parse(date);
    var formatter = new DateFormat(format);
    result = formatter.format(now);

    return result;
  }

  static DateTime formatToDateTime(String date){
    var now = DateTime.parse(date);
    return now;
  }

  static String formatToDateTimetoString(DateTime date){
    var formater = DateFormat('dd MMMM yyyy');
    var now = formater.format(date);
    return now;
  }

  static bool toKnowWeekendsDays(DateTime date){
    var day = DateFormat('d');

    if (date.weekday == 6 || date.weekday == 7){
      return true;
    }else{
      return false;
    }
  }

  static String toKnowisOnGoing(String dateStart,String dateEnd,String isFullDay){
    var dateStarttime = DateTime.parse(dateStart);
    var dateTotime = DateTime.parse(dateEnd);

    var now = DateTime.now();

    if (isFullDay == 'day'){
      return Assets.jadwal_fullday;
    }else{
      if (now.isBefore(dateStarttime)){
        return Assets.jadwal_selanjutnya;
      }else{
        if(now.isBefore(dateTotime)){
          return Assets.jadwal_sekarang;
        }else{
          return Assets.jadwal_hariini;
        }
      }
    }
  }

  static bool toKnowIsWorkTime(int time,bool isFrom){
    if (isFrom) {
      if (time > 8 && time < 16){
        return true;
      }else{
        return false;
      }
    }else{
      if (time > 9 && time < 17){
        return true;
      }else{
        return false;
      }
    }
  }

  static String formatToDateTimeString(DateTime date,{String format = 'yyyy-MM-dd'}){
    var formater = DateFormat(format);
    var now = formater.format(date);
    return now;
  }

  static int formatToDateTimetoDateTime(DateTime date){
    var formater = DateFormat(DateFormat.HOUR24).format(date);
    var dateint = int.parse(formater);
    return dateint;
  }

  static String formatTimeHr(DateTime date){
    var formater = DateFormat(DateFormat.HOUR24).format(date);
    return formater;
  }

}