import 'dart:convert';
import 'dart:io';

const String filePath = 'F:/DartCourse/coursedart/info_dart.txt';
void main(List<String> args) async {
  File file = File(filePath);

  print("The absolute ${file.isAbsolute}");
  List<String> lines = await file
      .openRead()
      .transform(utf8.decoder)
      .transform(LineSplitter())
      .toList();

  try {
    for (String line in lines) print('$line: ${line.length} characters');
    print('read file succssfully');
  } catch (e) {
    print('Error : $e');
  }

  List<String> information = await file.readAsLines();
  for (String info in information) print(info);

  /************write into file************************** */
  IOSink fileToWrite = File(filePath).openWrite(mode: FileMode.append);
  fileToWrite.write('Hi This is new line in the file');
  fileToWrite.close();

  information = await file.readAsLines();
  for (String info in information) print(info);
  //or*****************************************

  RandomAccessFile WriteSync =
      File(filePath).openSync(mode: FileMode.writeOnlyAppend);
  WriteSync.writeStringSync("hi,This New Sync ");
  WriteSync.closeSync();
  information = await file.readAsLines();
  for (String info in information) print(info);

  File('NewCreateFile.txt').create();
  File('NewCreateFile.txt').delete();
}
