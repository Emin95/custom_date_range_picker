import 'package:custom_date_range_picker/custom_date_range_picker.dart';
import 'package:custom_date_range_picker/l10n/generated/date_range_picker_localizations.dart';
import 'package:examples/l10n/generated/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.purple,
      ),
      localizationsDelegates: const [
        AppLocalization.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        DateRangePickerLocalization.delegate,
      ],
      supportedLocales: const [
        Locale('ru', 'RU'),
        Locale('az', 'AZ'),
        Locale('en', 'US'),
      ],
      locale: const Locale('ru'),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime? startDate;
  DateTime? endDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Date Range Picker",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 18, bottom: 16),
        child: Material(
          color: Colors.transparent,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Choose a date Range',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    '${startDate != null ? DateFormat("dd, MMM").format(startDate!) : '-'} / ${endDate != null ? DateFormat("dd, MMM").format(endDate!) : '-'}',
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final now = DateTime.now();

          showCustomDateRangePicker(
            context,
            dismissible: false,
            minimumDate: now.copyWith(year: now.year - 100),
            maximumDate: now,
            backgroundColor: Color.fromRGBO(100, 21, 26, 1),
            primaryColor: Color.fromRGBO(255, 56, 80, 1),
            startDate: now,
            endDate: now,
            onApplyClick: (start, end) {},
            onCancelClick: () {},
          );
        },
        tooltip: 'choose date Range',
        child: const Icon(Icons.calendar_today_outlined, color: Colors.white),
      ),
    );
  }
}
