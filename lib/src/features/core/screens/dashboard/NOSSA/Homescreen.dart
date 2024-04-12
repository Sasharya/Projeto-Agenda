// ignore_for_file: non_constant_identifier_names

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:testeagenda/src/constants/image_strings.dart';
import 'package:testeagenda/src/features/core/screens/dashboard/NOSSA/Telas de notas/Melhorias.dart';
import 'package:testeagenda/src/features/core/screens/dashboard/NOSSA/Telas%20de%20notas/projetos.dart';
import 'package:testeagenda/src/features/core/screens/dashboard/NOSSA/Telas%20de%20notas/statusatual.dart';
import 'package:testeagenda/src/features/core/screens/dashboard/NOSSA/Telas%20de%20senha/lockFiliais.dart';
import 'package:testeagenda/src/features/core/screens/profile/all_users.dart';
import 'events.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'lockscreen.dart';
import 'package:testeagenda/src/features/core/screens/dashboard/NOSSA/Telas de senha/lockferias.dart';
import 'package:testeagenda/src/features/core/screens/dashboard/NOSSA/Telas de senha/lockfuncionarios.dart';
import 'package:testeagenda/src/features/core/screens/dashboard/NOSSA/Telas de senha/lockhorariodecorte.dart';
import 'package:testeagenda/src/features/core/screens/dashboard/NOSSA/Telas de senha/locknotas.dart';
import 'package:testeagenda/src/features/core/screens/dashboard/NOSSA/Telas de senha/lockorçamento.dart';
import 'package:testeagenda/src/features/core/screens/dashboard/NOSSA/Telas de senha/lockprojetos.dart';
import 'package:testeagenda/src/features/core/screens/dashboard/NOSSA/Telas de senha/lockMelhorias.dart';
import 'Filiais/1026/Ação Tomada/1026açãotext.dart';
import 'Filiais/1026/Gargalos/1026gargalotext.dart';
import 'Filiais/1026/Fatos e Causas/1026fatostext.dart';
import 'Filiais/1028/Gargalos/1028gargalotext.dart';
import 'Filiais/1028/Fatos e Causas/1028fatostext.dart';
import 'Filiais/1028/Ação Tomada/1028açãotext.dart';
import 'Filiais/1029/Ação Tomada/1029açãotext.dart';
import 'Filiais/1029/Fatos e Causas/1029fatostext.dart';
import 'Filiais/1029/Gargalos/1029gargalotext.dart';
import 'Filiais/1030/Gargalos/1030gargalotext.dart';
import 'Filiais/1030/Fatos e Causas/1030fatostext.dart';
import 'Filiais/1030/Ação Tomada/1030açãotext.dart';
import 'Filiais/1031/Ação Tomada/1031açãotext.dart';
import 'Filiais/1031/Fatos e Causas/1031fatostext.dart';
import 'Filiais/1031/Gargalos/1031gargalotext.dart';
import 'Filiais/1032/Gargalos/1032gargalotext.dart';
import 'Filiais/1032/Fatos e Causas/1032fatostext.dart';
import 'Filiais/1032/Ação Tomada/1032açãotext.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF1C1C1C),
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: AppBar(
                backgroundColor: const Color(0xFF1B1D1E).withOpacity(0.6),
                toolbarHeight: 35,
                centerTitle: true,
                title: const Text(
                  'StarSystem',
                  style: TextStyle(fontSize: 30.0, color: Colors.white),
                ),
              ),
            ),
          ),
          preferredSize: const Size(
            double.infinity,
            56.0,
          ),
        ),
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(tWallpaper), fit: BoxFit.cover),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 85),
                    Center(
                      child: Container(
                        width: 375.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFF25252A).withOpacity(0.2),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                              width: 2, color: const Color(0xFF25252A)),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color(0xff333333).withOpacity(0.2),
                          ),
                          onPressed: () {
                            AGENDAA(context);
                          },
                          child: const Text(
                            "Agenda",
                            style:
                                TextStyle(fontSize: 30.0, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 375.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFF25252A).withOpacity(0.2),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                              width: 2, color: const Color(0xFF25252A)),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color(0xff333333).withOpacity(0.2),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => lockFuncionarios()),
                            );
                          },
                          child: const Text(
                            "Equipes",
                            style:
                                TextStyle(fontSize: 30.0, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 375.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFF25252A).withOpacity(0.2),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                              width: 2, color: const Color(0xFF25252A)),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color(0xff333333).withOpacity(0.2),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => lockFerias()));
                          },
                          child: const Text(
                            "Férias",
                            style:
                                TextStyle(fontSize: 30.0, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 375.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFF25252A).withOpacity(0.2),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                              width: 2, color: const Color(0xFF25252A)),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color(0xff333333).withOpacity(0.2),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => lockFiliais()));
                          },
                          child: const Text(
                            "Filiais",
                            style:
                                TextStyle(fontSize: 30.0, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 375.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFF25252A).withOpacity(0.2),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                              width: 2, color: const Color(0xFF25252A)),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color(0xff333333).withOpacity(0.2),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => lockCorte()));
                          },
                          child: const Text(
                            "Horários de Corte",
                            style:
                                TextStyle(fontSize: 30.0, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 375.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFF25252A).withOpacity(0.2),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                              width: 2, color: const Color(0xFF25252A)),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color(0xff333333).withOpacity(0.2),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => lockMelhorias()));
                          },
                          child: const Text(
                            "Melhorias",
                            style:
                                TextStyle(fontSize: 30.0, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 375.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFF25252A).withOpacity(0.2),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                              width: 2, color: const Color(0xFF25252A)),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color(0xff333333).withOpacity(0.2),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => lockOrcamento()));
                          },
                          child: const Text(
                            "Orçamento",
                            style:
                                TextStyle(fontSize: 28.0, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 375.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFF25252A).withOpacity(0.2),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                              width: 2, color: const Color(0xFF25252A)),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color(0xff333333).withOpacity(0.2),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => lockProjetos()));
                          },
                          child: const Text(
                            "Projetos",
                            style:
                                TextStyle(fontSize: 30.0, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 375.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFF25252A).withOpacity(0.2),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                              width: 2, color: const Color(0xFF25252A)),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color(0xff333333).withOpacity(0.2),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => lockNotas()));
                          },
                          child: const Text(
                            "5S",
                            style:
                                TextStyle(fontSize: 30.0, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }

//PAGINA DE MELHORIAS
  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Melhorias()));
  }
}

//PAGINA DE AGENDA

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _AGENDA();
}

class _AGENDA extends State<Calendar> {
  DateTime today = DateTime.now();
  late DateTime? _selectedDay;
  Map<DateTime, List<Event>> events = {};

  TextEditingController _eventController = TextEditingController();
  late final ValueNotifier<List<Event>> _selectedEvents;

  @override
  void initState() {
    super.initState();
    _selectedDay = DateTime.now();
    _selectedEvents = ValueNotifier(_getEventsForDay(_selectedDay!));
    _loadEventsFromPrefs();
  }

  @override
  void dispose() {
    _saveEventsToPrefs(); // Save events when the page is disposed
    super.dispose();
  }

  void _loadEventsFromPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? eventsString = prefs.getString('events');
    if (eventsString != null) {
      Map<String, dynamic> decodedEvents = json.decode(eventsString);
      setState(() {
        events = Map<DateTime, List<Event>>.from(
          decodedEvents.map(
            (k, v) => MapEntry(
              DateTime.parse(k),
              List<Event>.from(
                (v as List).map(
                  (i) => Event.fromJson(i),
                ),
              ),
            ),
          ),
        );
      });
      _updateSelectedEvents();
    }
  }

  void _updateSelectedEvents() {
    _selectedEvents.value = _getEventsForDay(_selectedDay!);
  }

  void _saveEventsToPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Map<String, List<Map<String, dynamic>>> serializedEvents =
        events.map((key, value) {
      return MapEntry(
        key.toIso8601String(),
        value.map((e) => e.toJson()).toList(),
      );
    });
    String eventsString = jsonEncode(serializedEvents);
    await prefs.setString('events', eventsString);
  }

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
      _selectedDay = focusedDay;

      _updateSelectedEvents();
    });
  }

  List<Event> _getEventsForDay(DateTime day) {
    return events[day] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        _saveEventsToPrefs(); // Save events when the page is popped
        return true; // Allow the page to be popped
      },
      child: Scaffold(
        backgroundColor: const Color(0xFF1C1C1C),
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: AppBar(
                backgroundColor: const Color(0xFF1B1D1E).withOpacity(0.6),
                toolbarHeight: 35,
                centerTitle: true,
                title: const Text(
                  'Agenda SS',
                  style: TextStyle(fontSize: 30.0, color: Colors.white),
                ),
              ),
            ),
          ),
          preferredSize: const Size(
            double.infinity,
            56.0,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xFF00B0E8),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  scrollable: true,
                  title: const Text("Event Name"),
                  content: Padding(
                    padding: const EdgeInsets.all(8),
                    child: TextField(
                      controller: _eventController,
                    ),
                  ),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        if (_selectedDay != null) {
                          final event = Event(_eventController.text);
                          setState(() {
                            events.update(
                              _selectedDay!,
                              (value) => value..add(event),
                              ifAbsent: () => [event],
                            );
                          });
                          _saveEventsToPrefs(); // Save events when an event is added
                          _eventController.clear();
                          Navigator.of(context).pop();
                          _updateSelectedEvents();
                        }
                      },
                      child: const Text("Send"),
                    )
                  ],
                );
              },
            );
          },
        ),
        body: Container(
          decoration: const BoxDecoration(
            image:
                DecorationImage(image: AssetImage(tPost61), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 75,
              ),
              Center(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                  child: TableCalendar(
                    headerStyle: const HeaderStyle(
                        formatButtonVisible: false,
                        titleCentered: true,
                        titleTextStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        )),
                    locale: "pt_BR",
                    selectedDayPredicate: (day) => isSameDay(day, today),
                    focusedDay: DateTime.now(),
                    firstDay: DateTime.utc(2010, 01, 01),
                    daysOfWeekStyle: const DaysOfWeekStyle(
                        weekendStyle: TextStyle(
                          color: Colors.white70,
                          fontSize: 20,
                        ),
                        weekdayStyle:
                            TextStyle(color: Colors.white, fontSize: 20)),
                    daysOfWeekHeight: 50,
                    calendarStyle: CalendarStyle(
                      defaultTextStyle: const TextStyle(
                          color: Color(0xFF00B0E8), fontSize: 22),
                      weekNumberTextStyle:
                          const TextStyle(color: Colors.pink, fontSize: 23),
                      weekendTextStyle: const TextStyle(
                          color: Color(0xFF8AD3FF), fontSize: 23),
                      outsideTextStyle:
                          const TextStyle(color: Colors.white, fontSize: 23),
                      todayTextStyle:
                          const TextStyle(color: Colors.white70, fontSize: 23),
                      selectedTextStyle:
                          const TextStyle(color: Colors.white70, fontSize: 23),
                      defaultDecoration: BoxDecoration(
                        color: const Color(0xFF33303F).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      weekendDecoration: BoxDecoration(
                        color: const Color(0xFF2E2D44).withOpacity(0.3),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      outsideDecoration: BoxDecoration(
                        color: const Color(0xFF33303F).withOpacity(0.45),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      todayDecoration: BoxDecoration(
                        color: const Color(0xFF141318).withOpacity(0.7),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      selectedDecoration: BoxDecoration(
                        color: const Color(0xFF817D98).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                    ),
                    lastDay: DateTime.utc(2030, 01, 01),
                    onDaySelected: _onDaySelected,
                    eventLoader: _getEventsForDay,
                  ),
                ),
              ),
              Expanded(
                child: ValueListenableBuilder<List<Event>>(
                  valueListenable: _selectedEvents,
                  builder: (context, value, _) {
                    return ListView.builder(
                      itemCount: value.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 4),
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: ListTile(
                            onTap: () => print(""),
                            title: Text('${value[index]}'),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void AGENDAA(BuildContext context) {
  print("Navigating to Agenda");
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const Calendar()));
}

//PAGINA DE EQUIPES
void _EQUIPES(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const EQUIPES()));
}

class EQUIPES extends StatelessWidget {
  const EQUIPES({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      appBar: AppBar(
        backgroundColor: const Color(0xFF00B0E8),
        toolbarHeight: 75,
        centerTitle: true,
        title: const Text(
          'Equipes',
          style: TextStyle(fontSize: 45.0),
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/logo.png"), fit: BoxFit.scaleDown),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Container(
                width: 380.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: const Color(0xFF303030),
                  borderRadius: BorderRadius.circular(41),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xff333333),
                      Color(0xff333333),
                    ],
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xfd3919b),
                      offset: Offset(-7.0, -7.0),
                      blurRadius: 7,
                      spreadRadius: 0.0,
                    ),
                    BoxShadow(
                      color: Color(0xff101419),
                      offset: Offset(7.0, 7.0),
                      blurRadius: 7,
                      spreadRadius: 0.0,
                    ),
                  ],
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff333333),
                  ),
                  onPressed: () {
                    _ADMINS(context);
                  },
                  child: const Text(
                    "Admins",
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: 380.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: const Color(0xFF303030),
                  borderRadius: BorderRadius.circular(41),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xff333333),
                      Color(0xff333333),
                    ],
                  ),
                  boxShadow: [
                    const BoxShadow(
                      color: Color(0xfd3919b),
                      offset: Offset(-7.0, -7.0),
                      blurRadius: 7,
                      spreadRadius: 0.0,
                    ),
                    const BoxShadow(
                      color: Color(0xff101419),
                      offset: Offset(7.0, 7.0),
                      blurRadius: 7,
                      spreadRadius: 0.0,
                    ),
                  ],
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff333333),
                  ),
                  onPressed: () {
                    _SUPERVISORES(context);
                  },
                  child: const Text(
                    "Supervisores",
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: 380.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: const Color(0xFF303030),
                  borderRadius: BorderRadius.circular(41),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xff333333),
                      Color(0xff333333),
                    ],
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xfd3919b),
                      offset: Offset(-7.0, -7.0),
                      blurRadius: 7,
                      spreadRadius: 0.0,
                    ),
                    BoxShadow(
                      color: Color(0xff101419),
                      offset: Offset(7.0, 7.0),
                      blurRadius: 7,
                      spreadRadius: 0.0,
                    ),
                  ],
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff333333),
                  ),
                  onPressed: () {
                    _COLABORADORES(context);
                  },
                  child: const Text(
                    "Colaboradores",
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//PAGINA ADMINS

void _ADMINS(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const ADMINS()));
}

class ADMINS extends StatelessWidget {
  const ADMINS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      appBar: AppBar(
        backgroundColor: const Color(0xFF00B0E8),
        toolbarHeight: 100,
        centerTitle: true,
        title: const Text(
          'Admins',
          style: TextStyle(fontSize: 50.0),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/logo.png"), fit: BoxFit.scaleDown),
        ),
      ),
    );
  }
}

//PAGINA SUPERVISORES

void _SUPERVISORES(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const SUPERVISORES()));
}

class SUPERVISORES extends StatelessWidget {
  const SUPERVISORES({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      appBar: AppBar(
        backgroundColor: const Color(0xFF00B0E8),
        toolbarHeight: 100,
        centerTitle: true,
        title: const Text(
          'Supervisores',
          style: TextStyle(fontSize: 50.0),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/logo.png"), fit: BoxFit.scaleDown),
        ),
      ),
    );
  }
}

//PAGINA COLABORADORES

void _COLABORADORES(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const COLABORADORES()));
}

class COLABORADORES extends StatelessWidget {
  const COLABORADORES({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      appBar: AppBar(
        backgroundColor: const Color(0xFF00B0E8),
        toolbarHeight: 100,
        centerTitle: true,
        title: const Text(
          'Colaboradores',
          style: TextStyle(fontSize: 40.0),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/logo.png"), fit: BoxFit.scaleDown),
        ),
      ),
    );
  }
}

//PAGINA DE FÉRIAS

void _FERIAS(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const FERIAS()));
}

class FERIAS extends StatelessWidget {
  const FERIAS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              backgroundColor: const Color(0xFF1B1D1E).withOpacity(0.6),
              toolbarHeight: 35,
              centerTitle: true,
              title: const Text(
                'Férias',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
        ),
        preferredSize: const Size(
          double.infinity,
          56.0,
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(tWallpaper), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}

//PAGINA DE HORARIOS
void _HORARIOS(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const HORARIOS()));
}

class HORARIOS extends StatelessWidget {
  const HORARIOS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              backgroundColor: const Color(0xFF1B1D1E).withOpacity(0.6),
              toolbarHeight: 35,
              centerTitle: true,
              title: const Text(
                'Horários de Corte',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
        ),
        preferredSize: const Size(
          double.infinity,
          56.0,
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(tWallpaper), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}

//PAGINA DE ORCAMENTOS
void _ORCAMENTOS(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const ORCAMENTOS()));
}

class ORCAMENTOS extends StatelessWidget {
  const ORCAMENTOS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              backgroundColor: const Color(0xFF1B1D1E).withOpacity(0.6),
              toolbarHeight: 35,
              centerTitle: true,
              title: const Text(
                'Orçamento',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
        ),
        preferredSize: const Size(
          double.infinity,
          56.0,
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(tWallpaper), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
// PAGINA DE PROJETOS

void _PROJETOS(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const PROJETOS()));
}

class PROJETOS extends StatelessWidget {
  const PROJETOS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xFF1C1C1C),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              backgroundColor: const Color(0xFF1B1D1E).withOpacity(0.6),
              toolbarHeight: 35,
              centerTitle: true,
              title: const Text(
                'Projetos',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
        ),
        preferredSize: const Size(
          double.infinity,
          56.0,
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(tWallpaper), fit: BoxFit.cover),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 85,
                  ),
              Container(
               width: 375.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF25252A).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                      border:
                          Border.all(width: 2, color: const Color(0xFF25252A)),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xff333333).withOpacity(0.2),
                      ),
                  onPressed: () {
                    Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Previsao()));
                  },
                  child: const Text(
                    "Previsão",
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: 375.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF25252A).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                      border:
                          Border.all(width: 2, color: const Color(0xFF25252A)),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xff333333).withOpacity(0.2),
                      ),
                  onPressed: () {
                    Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Status()));
                  },
                  child: const Text(
                    "Status Atual",
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),),);
  }
}

//PAGINA DE PREIVSÃO
void _PREVISAO(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const PREVISAO()));
}

class PREVISAO extends StatelessWidget {
  const PREVISAO({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      appBar: AppBar(
        backgroundColor: const Color(0xFF00B0E8),
        toolbarHeight: 75,
        centerTitle: true,
        title: const Text(
          'Previsão',
          style: TextStyle(fontSize: 45.0),
        ),
      ),
      body: Container(
        child: const TextField(
          style: TextStyle(fontSize: 30.0, color: Colors.white),
          decoration: InputDecoration(
            labelText: 'Procurar Projeto',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}

//PAGINA DE STATUS
void _STATUSATUAL(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const STATUSATUAL()));
}

class STATUSATUAL extends StatelessWidget {
  const STATUSATUAL({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      appBar: AppBar(
        backgroundColor: const Color(0xFF00B0E8),
        toolbarHeight: 75,
        centerTitle: true,
        title: const Text(
          'Status Atual',
          style: TextStyle(fontSize: 45.0),
        ),
      ),
      body: Container(
        child: const TextField(
          style: TextStyle(fontSize: 30.0, color: Colors.white),
          decoration: InputDecoration(
            labelText: 'Procurar Projeto',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}

//PAGINA DE 5S
void _SANTO(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const SANTO()));
}

class SANTO extends StatelessWidget {
  const SANTO({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              backgroundColor: const Color(0xFF1B1D1E).withOpacity(0.6),
              toolbarHeight: 35,
              centerTitle: true,
              title: const Text(
                '5S',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
        ),
        preferredSize: const Size(
          double.infinity,
          56.0,
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(tWallpaper), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}

//PAGINA DE FILIAIS
void _FILIAIS(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const FILIAIS()));
}

class FILIAIS extends StatelessWidget {
  const FILIAIS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              backgroundColor: const Color(0xFF1B1D1E).withOpacity(0.6),
              toolbarHeight: 35,
              centerTitle: true,
              title: const Text(
                'Filiais',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
        ),
        preferredSize: const Size(
          double.infinity,
          56.0,
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(tWallpaper), fit: BoxFit.cover),
          ),
          child: SingleChildScrollView(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
              child: Center(
                  child: Column(
                children: [
                  const SizedBox(height: 85),
                  Container(
                    width: 375.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF25252A).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                      border:
                          Border.all(width: 2, color: const Color(0xFF25252A)),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xff333333).withOpacity(0.2),
                      ),
                      onPressed: () {
                        _FILIAL1026(context);
                      },
                      child: const Text(
                        "1026",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Container(
                    width: 375.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF25252A).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                      border:
                          Border.all(width: 2, color: const Color(0xFF25252A)),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xff333333).withOpacity(0.2),
                      ),
                      onPressed: () {
                        _FILIAL1028(context);
                      },
                      child: const Text(
                        "1028",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Container(
                    width: 375.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF25252A).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                      border:
                          Border.all(width: 2, color: const Color(0xFF25252A)),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xff333333).withOpacity(0.2),
                      ),
                      onPressed: () {
                        _FILIAL1029(context);
                      },
                      child: const Text(
                        "1029",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 210,
                  ),
                  const SizedBox(height: 25),
                  Container(
                    width: 375.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF25252A).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                      border:
                          Border.all(width: 2, color: const Color(0xFF25252A)),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xff333333).withOpacity(0.2),
                      ),
                      onPressed: () {
                        _FILIAL1030(context);
                      },
                      child: const Text(
                        "1030",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Container(
                    width: 375.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF25252A).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                      border:
                          Border.all(width: 2, color: const Color(0xFF25252A)),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xff333333).withOpacity(0.2),
                      ),
                      onPressed: () {
                        _FILIAL1031(context);
                      },
                      child: const Text(
                        "1031",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Container(
                    width: 375.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF25252A).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                      border:
                          Border.all(width: 2, color: const Color(0xFF25252A)),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xff333333).withOpacity(0.2),
                      ),
                      onPressed: () {
                        _FILIAL1032(context);
                      },
                      child: const Text(
                        "1032",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )),
            ),
          ),
        ),
      ),
    );
  }
}

//PAGINA DA FILIAL 1026
void _FILIAL1026(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const FILIAL1026()));
}

class FILIAL1026 extends StatelessWidget {
  const FILIAL1026({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              backgroundColor: const Color(0xFF1B1D1E).withOpacity(0.6),
              toolbarHeight: 35,
              centerTitle: true,
              title: const Text(
                'Filial 1026',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
        ),
        preferredSize: const Size(
          double.infinity,
          56.0,
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(tWallpaper), fit: BoxFit.cover),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 85,
                  ),
                  Container(
                    width: 375.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF25252A).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                      border:
                          Border.all(width: 2, color: const Color(0xFF25252A)),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xff333333).withOpacity(0.2),
                      ),
                      onPressed: () {
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Gargalos1026()));
                      },
                      child: const Text(
                        "Gargalos",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 375.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF25252A).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                      border:
                          Border.all(width: 2, color: const Color(0xFF25252A)),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xff333333).withOpacity(0.2),
                      ),
                      onPressed: () {
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Fatos1026()));
                      },
                      child: const Text(
                        "Fatos e Causa",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 375.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF25252A).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                      border:
                          Border.all(width: 2, color: const Color(0xFF25252A)),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xff333333).withOpacity(0.2),
                      ),
                      onPressed: () {
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Acao1026()));
                      },
                      child: const Text(
                        "Ação Tomada",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
//PAGINA DOS GARGALOS

void _gargalos(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const gargalos()));
}

class gargalos extends StatelessWidget {
  const gargalos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              backgroundColor: const Color(0xFF1B1D1E).withOpacity(0.6),
              toolbarHeight: 35,
              centerTitle: true,
              title: const Text(
                'Principais gargalos',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
        ),
        preferredSize: const Size(
          double.infinity,
          56.0,
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(tWallpaper), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
//PAGINA DOS FATOS

void _fatos(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const fatos()));
}

class fatos extends StatelessWidget {
  const fatos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              backgroundColor: const Color(0xFF1B1D1E).withOpacity(0.6),
              toolbarHeight: 35,
              centerTitle: true,
              title: const Text(
                'Fatos e Causas',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
        ),
        preferredSize: const Size(
          double.infinity,
          56.0,
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(tWallpaper), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}

//PAGINA DAS AÇÕES TOMADAS

void _acao(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const acao()));
}

class acao extends StatelessWidget {
  const acao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              backgroundColor: const Color(0xFF1B1D1E).withOpacity(0.6),
              toolbarHeight: 35,
              centerTitle: true,
              title: const Text(
                'Ações tomadas',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
        ),
        preferredSize: const Size(
          double.infinity,
          56.0,
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(tWallpaper), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}

//PAGINA DA FILIAL 1028
void _FILIAL1028(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const FILIAL1028()));
}

class FILIAL1028 extends StatelessWidget {
  const FILIAL1028({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              backgroundColor: const Color(0xFF1B1D1E).withOpacity(0.6),
              toolbarHeight: 35,
              centerTitle: true,
              title: const Text(
                'Filial 1028',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
        ),
        preferredSize: const Size(
          double.infinity,
          56.0,
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(tWallpaper), fit: BoxFit.cover),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 85,
                  ),
                  Container(
                    width: 375.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF25252A).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                      border:
                          Border.all(width: 2, color: const Color(0xFF25252A)),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xff333333).withOpacity(0.2),
                      ),
                      onPressed: () {
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Gargalos1028()));
                      },
                      child: const Text(
                        "Gargalos",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 375.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF25252A).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                      border:
                          Border.all(width: 2, color: const Color(0xFF25252A)),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xff333333).withOpacity(0.2),
                      ),
                      onPressed: () {
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Fatos1028()));
                      },
                      child: const Text(
                        "Fatos e Causa",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 375.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF25252A).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                      border:
                          Border.all(width: 2, color: const Color(0xFF25252A)),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xff333333).withOpacity(0.2),
                      ),
                      onPressed: () {
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Acao1028()));
                      },
                      child: const Text(
                        "Ação Tomada",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
//PAGINA DOS GARGALOS

void _gargalos1(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const gargalos1()));
}

class gargalos1 extends StatelessWidget {
  const gargalos1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              backgroundColor: const Color(0xFF1B1D1E).withOpacity(0.6),
              toolbarHeight: 35,
              centerTitle: true,
              title: const Text(
                'Principais gargalos',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
        ),
        preferredSize: const Size(
          double.infinity,
          56.0,
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(tWallpaper), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
//PAGINA DOS FATOS

void _fatos1(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const fatos1()));
}

class fatos1 extends StatelessWidget {
  const fatos1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              backgroundColor: const Color(0xFF1B1D1E).withOpacity(0.6),
              toolbarHeight: 35,
              centerTitle: true,
              title: const Text(
                'Fatos e Causas',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
        ),
        preferredSize: const Size(
          double.infinity,
          56.0,
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(tWallpaper), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}

//PAGINA DAS AÇÕES TOMADAS

void _acao1(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const acao1()));
}

class acao1 extends StatelessWidget {
  const acao1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              backgroundColor: const Color(0xFF1B1D1E).withOpacity(0.6),
              toolbarHeight: 35,
              centerTitle: true,
              title: const Text(
                'Ações tomadas',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
        ),
        preferredSize: const Size(
          double.infinity,
          56.0,
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(tWallpaper), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}

//PAGINA DA FILIAL 1029
void _FILIAL1029(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const FILIAL1029()));
}

class FILIAL1029 extends StatelessWidget {
  const FILIAL1029({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              backgroundColor: const Color(0xFF1B1D1E).withOpacity(0.6),
              toolbarHeight: 35,
              centerTitle: true,
              title: const Text(
                'Filial 1029',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
        ),
        preferredSize: const Size(
          double.infinity,
          56.0,
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(tWallpaper), fit: BoxFit.cover),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 85,
                  ),
                  Container(
                    width: 375.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF25252A).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                      border:
                          Border.all(width: 2, color: const Color(0xFF25252A)),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xff333333).withOpacity(0.2),
                      ),
                      onPressed: () {
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Gargalos1029()));
                      },
                      child: const Text(
                        "Gargalos",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 375.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF25252A).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                      border:
                          Border.all(width: 2, color: const Color(0xFF25252A)),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xff333333).withOpacity(0.2),
                      ),
                      onPressed: () {
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Fatos1029()));
                      },
                      child: const Text(
                        "Fatos e Causa",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 375.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF25252A).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                      border:
                          Border.all(width: 2, color: const Color(0xFF25252A)),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xff333333).withOpacity(0.2),
                      ),
                      onPressed: () {
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Acao1029()));
                      },
                      child: const Text(
                        "Ação Tomada",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
//PAGINA DOS GARGALOS

void _gargalos2(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const gargalos2()));
}

class gargalos2 extends StatelessWidget {
  const gargalos2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              backgroundColor: const Color(0xFF1B1D1E).withOpacity(0.6),
              toolbarHeight: 35,
              centerTitle: true,
              title: const Text(
                'Principais gargalos',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
        ),
        preferredSize: const Size(
          double.infinity,
          56.0,
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(tWallpaper), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}

//PAGINA DOS FATOS

void _fatos2(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const fatos2()));
}

class fatos2 extends StatelessWidget {
  const fatos2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              backgroundColor: const Color(0xFF1B1D1E).withOpacity(0.6),
              toolbarHeight: 35,
              centerTitle: true,
              title: const Text(
                'Fatos e Causas',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
        ),
        preferredSize: const Size(
          double.infinity,
          56.0,
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(tWallpaper), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}

//PAGINA DAS AÇÕES TOMADAS

void _acao2(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const acao2()));
}

class acao2 extends StatelessWidget {
  const acao2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              backgroundColor: const Color(0xFF1B1D1E).withOpacity(0.6),
              toolbarHeight: 35,
              centerTitle: true,
              title: const Text(
                'Ações tomadas',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
        ),
        preferredSize: const Size(
          double.infinity,
          56.0,
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(tWallpaper), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}

//PAGINA DA FILIAL 1030
void _FILIAL1030(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const FILIAL1030()));
}

class FILIAL1030 extends StatelessWidget {
  const FILIAL1030({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              backgroundColor: const Color(0xFF1B1D1E).withOpacity(0.6),
              toolbarHeight: 35,
              centerTitle: true,
              title: const Text(
                'Filial 1030',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
        ),
        preferredSize: const Size(
          double.infinity,
          56.0,
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(tWallpaper), fit: BoxFit.cover),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 85,
                  ),
                  Container(
                    width: 375.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF25252A).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                      border:
                          Border.all(width: 2, color: const Color(0xFF25252A)),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xff333333).withOpacity(0.2),
                      ),
                      onPressed: () {
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Gargalos1030()));
                      },
                      child: const Text(
                        "Gargalos",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 375.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF25252A).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                      border:
                          Border.all(width: 2, color: const Color(0xFF25252A)),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xff333333).withOpacity(0.2),
                      ),
                      onPressed: () {
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Fatos1030()));
                      },
                      child: const Text(
                        "Fatos e Causa",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 375.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF25252A).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                      border:
                          Border.all(width: 2, color: const Color(0xFF25252A)),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xff333333).withOpacity(0.2),
                      ),
                      onPressed: () {
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Acao1030()));
                      },
                      child: const Text(
                        "Ação Tomada",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
//PAGINA DOS GARGALOS

void _gargalos3(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const gargalos3()));
}

class gargalos3 extends StatelessWidget {
  const gargalos3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              backgroundColor: const Color(0xFF1B1D1E).withOpacity(0.6),
              toolbarHeight: 35,
              centerTitle: true,
              title: const Text(
                'Principais gargalos',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
        ),
        preferredSize: const Size(
          double.infinity,
          56.0,
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(tWallpaper), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
//PAGINA DOS FATOS

void _fatos3(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const fatos3()));
}

class fatos3 extends StatelessWidget {
  const fatos3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              backgroundColor: const Color(0xFF1B1D1E).withOpacity(0.6),
              toolbarHeight: 35,
              centerTitle: true,
              title: const Text(
                'Fatos e Causas',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
        ),
        preferredSize: const Size(
          double.infinity,
          56.0,
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(tWallpaper), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}

//PAGINA DAS AÇÕES TOMADAS

void _acao3(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const acao3()));
}

class acao3 extends StatelessWidget {
  const acao3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              backgroundColor: const Color(0xFF1B1D1E).withOpacity(0.6),
              toolbarHeight: 35,
              centerTitle: true,
              title: const Text(
                'Ações tomadas',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
        ),
        preferredSize: const Size(
          double.infinity,
          56.0,
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(tWallpaper), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}

//PAGINA DA FILIAL 1031
void _FILIAL1031(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const FILIAL1031()));
}

class FILIAL1031 extends StatelessWidget {
  const FILIAL1031({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              backgroundColor: const Color(0xFF1B1D1E).withOpacity(0.6),
              toolbarHeight: 35,
              centerTitle: true,
              title: const Text(
                'Filial 1031',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
        ),
        preferredSize: const Size(
          double.infinity,
          56.0,
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(tWallpaper), fit: BoxFit.cover),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 85,
                  ),
                  Container(
                    width: 375.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF25252A).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                      border:
                          Border.all(width: 2, color: const Color(0xFF25252A)),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xff333333).withOpacity(0.2),
                      ),
                      onPressed: () {
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Gargalos1031()));
                      },
                      child: const Text(
                        "Gargalos",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 375.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF25252A).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                      border:
                          Border.all(width: 2, color: const Color(0xFF25252A)),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xff333333).withOpacity(0.2),
                      ),
                      onPressed: () {
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Fatos1031()));
                      },
                      child: const Text(
                        "Fatos e Causa",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 375.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF25252A).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                      border:
                          Border.all(width: 2, color: const Color(0xFF25252A)),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xff333333).withOpacity(0.2),
                      ),
                      onPressed: () {
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Acao1031()));
                      },
                      child: const Text(
                        "Ação Tomada",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
//PAGINA DOS GARGALOS

void _gargalos4(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const gargalos4()));
}

class gargalos4 extends StatelessWidget {
  const gargalos4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              backgroundColor: const Color(0xFF1B1D1E).withOpacity(0.6),
              toolbarHeight: 35,
              centerTitle: true,
              title: const Text(
                'Principais gargalos',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
        ),
        preferredSize: const Size(
          double.infinity,
          56.0,
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(tWallpaper), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
//PAGINA DOS FATOS

void _fatos4(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const fatos4()));
}

class fatos4 extends StatelessWidget {
  const fatos4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              backgroundColor: const Color(0xFF1B1D1E).withOpacity(0.6),
              toolbarHeight: 35,
              centerTitle: true,
              title: const Text(
                'Fatos e causas',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
        ),
        preferredSize: const Size(
          double.infinity,
          56.0,
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(tWallpaper), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}

//PAGINA DAS AÇÕES TOMADAS

void _acao4(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const acao4()));
}

class acao4 extends StatelessWidget {
  const acao4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              backgroundColor: const Color(0xFF1B1D1E).withOpacity(0.6),
              toolbarHeight: 35,
              centerTitle: true,
              title: const Text(
                'Ações tomadas',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
        ),
        preferredSize: const Size(
          double.infinity,
          56.0,
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(tWallpaper), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}

//PAGINA DA FILIAL 1032
void _FILIAL1032(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const FILIAL1032()));
}

class FILIAL1032 extends StatelessWidget {
  const FILIAL1032({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              backgroundColor: const Color(0xFF1B1D1E).withOpacity(0.6),
              toolbarHeight: 35,
              centerTitle: true,
              title: const Text(
                'Filial 1032',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
        ),
        preferredSize: const Size(
          double.infinity,
          56.0,
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(tWallpaper), fit: BoxFit.cover),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 85,
                  ),
                  Container(
                    width: 375.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF25252A).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                      border:
                          Border.all(width: 2, color: const Color(0xFF25252A)),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xff333333).withOpacity(0.2),
                      ),
                      onPressed: () {
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Gargalos1032()));
                      },
                      child: const Text(
                        "Gargalos",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 375.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF25252A).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                      border:
                          Border.all(width: 2, color: const Color(0xFF25252A)),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xff333333).withOpacity(0.2),
                      ),
                      onPressed: () {
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Fatos1032()));
                      },
                      child: const Text(
                        "Fatos e Causa",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 375.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF25252A).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                      border:
                          Border.all(width: 2, color: const Color(0xFF25252A)),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xff333333).withOpacity(0.2),
                      ),
                      onPressed: () {
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Acao1032()));
                      },
                      child: const Text(
                        "Ação Tomada",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
//PAGINA DOS GARGALOS

void _gargalos5(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const gargalos5()));
}

class gargalos5 extends StatelessWidget {
  const gargalos5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              backgroundColor: const Color(0xFF1B1D1E).withOpacity(0.6),
              toolbarHeight: 35,
              centerTitle: true,
              title: const Text(
                'Principais gargalos',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
        ),
        preferredSize: const Size(
          double.infinity,
          56.0,
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(tWallpaper), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
//PAGINA DOS FATOS

void _fatos5(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const fatos5()));
}

class fatos5 extends StatelessWidget {
  const fatos5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              backgroundColor: const Color(0xFF1B1D1E).withOpacity(0.6),
              toolbarHeight: 35,
              centerTitle: true,
              title: const Text(
                'Fatos e Causas',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
        ),
        preferredSize: const Size(
          double.infinity,
          56.0,
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(tWallpaper), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}

//PAGINA DAS AÇÕES TOMADAS

void _acao5(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const acao5()));
}

class acao5 extends StatelessWidget {
  const acao5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              backgroundColor: const Color(0xFF1B1D1E).withOpacity(0.6),
              toolbarHeight: 35,
              centerTitle: true,
              title: const Text(
                'Ações Tomadas',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
        ),
        preferredSize: const Size(
          double.infinity,
          56.0,
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(tWallpaper), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}

class MyNotepad extends StatelessWidget {
  const MyNotepad({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Meu Bloco de Notas'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const TextField(
                  maxLines: null,
                  decoration: InputDecoration(
                    hintText: 'Digite suas notas aqui...',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
