import 'device.dart';
import 'key_codes.dart';

main() async {
  // final SamsungSmartTV tv = SamsungSmartTV(host: "192.168.1.11", mac: "68:27:37:41:05:C4");

  final tv = await SamsungSmartTV.discover();

  // final devInfo = await tv.getDeviceInfo();
  // const macaddress = devInfo.device.wifiMac;

  try {
    await tv.connect();
  } catch (e) {
    print(e);
  }
  print("this is the token to save somewere ${tv.token}");

  await tv.sendKey(KEY_CODES.KEY_VOLUP);
  await tv.sendKey(KEY_CODES.KEY_VOLUP);
  await tv.sendKey(KEY_CODES.KEY_VOLUP);
  await tv.sendKey(KEY_CODES.KEY_VOLDOWN);
  await tv.sendKey(KEY_CODES.KEY_VOLDOWN);
  await tv.sendKey(KEY_CODES.KEY_VOLDOWN);

  // await TV.sendKey("KEY_POWER");
  // return tv.disconnect();
}

// main().catch(console.log);
