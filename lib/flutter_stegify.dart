import 'package:flutter/services.dart';

/// Stegify is the top-level object that can be used to interact
/// with the stegify native API (written in Go).
class Stegify {
  static const MethodChannel _channel = const MethodChannel('flutter_stegify');

  /// encode performs steganography encoding of data file in carrier file and saves the steganography encoded product in new file.
  static Future<void> encode(String carrier, String data, String result) async {
    return _channel.invokeMethod("encode", [carrier, data, result]);
  }

  /// decode performs steganography decoding of data previously encoded by the Encode function.
  /// The data is decoded from file carrier and it is saved in separate new file
  static Future<void> decode(String carrier, String result) async {
    return _channel.invokeMethod("decode", [carrier, result]);
  }
}
