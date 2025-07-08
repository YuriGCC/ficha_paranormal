import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/skills/current_affairs.dart';
import 'package:ficha_paranormal/models/skills/investigation.dart';

class Student extends Origin {
  Student() : super(
      name :'universitário',
      trainedExpertises: [Investigation(), CurrentAffairs()],
      powerName: 'Dedicação'
  );

  @override
  void usePower() {
  }

}