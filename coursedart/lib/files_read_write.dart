import 'dart:convert';
import 'dart:io';

const String filePath = 'F:/DartCourse/coursedart/info_dart.txt';
void main(List<String> args) async {
  File file = File(filePath);
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

  // file.writeAsString("This is info about dart");
  // information = await file.readAsLines();
  // for (String info in information) print(info);
}
