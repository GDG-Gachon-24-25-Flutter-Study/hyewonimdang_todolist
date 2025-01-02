import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:todolist/Calendar/month.dart';
import 'package:todolist/Calendar/week.dart';
import 'package:todolist/addTodoList.dart';
import 'package:todolist/component/todoList.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ko', 'KR'),
        Locale('en', 'US'),
      ],
      locale: const Locale('ko', 'KR'),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text("2024년 12월"),
            const SizedBox(width: 8),
            IconButton(
              icon: const Icon(Icons.keyboard_arrow_down),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(16.0),
                    ),
                  ),
                  builder: (context) => Month(),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.more_horiz),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const WeekWidget(),
          const TodoListWidget(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final RenderBox overlay =
              Overlay.of(context).context.findRenderObject() as RenderBox;
          final RelativeRect position = RelativeRect.fromSize(
            Rect.fromLTWH(0, overlay.size.height - 80, overlay.size.width, 80),
            overlay.size,
          );

          showMenu(
            context: context,
            position: position,
            items: [
              PopupMenuItem(
                value: '할 일 생성',
                child: Text('할 일 생성'),
              ),
              PopupMenuItem(
                value: 'Option 2',
                child: Text('Option 2'),
              ),
            ],
          ).then((value) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddTodoList(),
              ),
            );
          });
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    );
  }
}
