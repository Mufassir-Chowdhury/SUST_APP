import 'package:fluent_ui/fluent_ui.dart' as fluent;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sust_app/components/database_models/common_model.dart';
import 'package:sust_app/components/database_models/course/course_model.dart';
import 'package:sust_app/components/profile_model.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Routine extends StatefulWidget {
  const Routine({super.key});

  @override
  State<Routine> createState() => _RoutineState();
}

class _RoutineState extends State<Routine> {
  Future<List<ListModel>> loadTakenCourses() async {
    return CourseModel.takenCourse(
        Provider.of<ProfileModel>(context, listen: false).id!, 12, 2019);
  }

  @override
  void initState() {
    super.initState();
    takenCourses = loadTakenCourses();
  }

  late Future<List<ListModel>> takenCourses;

  @override
  Widget build(BuildContext context) {
    return fluent.ScaffoldPage(
      header: const fluent.PageHeader(
        title: Text('Routine'),
      ),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
              flex: 1,
              child: Column(
                children: [
                  Text(
                    '${DateTime.now().hour}:${DateTime.now().minute}',
                    style: const TextStyle(fontSize: 40),
                  ),
                  Text('${DateTime.now().day}/${DateTime.now().month}'),
                  Expanded(child: Container()),
                  const Text('Courses'),
                  const Text('Sunday'),
                  const Text('Monday'),
                  const Text('Tuesday'),
                  const Text('Wednesday'),
                  const Text('Thursday'),
                  const Text('Friday'),
                  const Text('Saturday'),
                ],
              )),
          Flexible(
            flex: 3,
            child: SfCalendar(
              view: CalendarView.week,
              firstDayOfWeek: DateTime.now().weekday,
              dataSource: MeetingDataSource(_getDataSource()),
              timeSlotViewSettings: TimeSlotViewSettings(
                startHour: 8,
                endHour: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Meeting> _getDataSource() {
    final List<Meeting> meetings = <Meeting>[];
    final DateTime today = DateTime.now();
    final DateTime startTime =
        DateTime(today.year, today.month, today.day, 9, 0, 0);
    final DateTime endTime = startTime.add(const Duration(hours: 2));
    meetings.add(Meeting(
        'Conference', startTime, endTime, const Color(0xFF0F8644), false));

    meetings.add(Meeting(
        'Conference',
        startTime,
        startTime.add(const Duration(hours: 3)),
        const Color(0xFF0F8644),
        false));
    return meetings;
  }
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].from;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].to;
  }

  @override
  String getSubject(int index) {
    return appointments![index].eventName;
  }

  @override
  Color getColor(int index) {
    return appointments![index].background;
  }

  @override
  bool isAllDay(int index) {
    return appointments![index].isAllDay;
  }
}

class Meeting {
  Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);

  String eventName;
  DateTime from;
  DateTime to;
  Color background;
  bool isAllDay;
}
