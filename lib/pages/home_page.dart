import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:rxdart/rxdart.dart';

class MyHomePage extends HookWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BehaviorSubject<String> subject = useMemoized(() => BehaviorSubject<String>(), [key]);
    useEffect(() => subject.close, [subject]);
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder<String>(
          stream: subject.stream.distinct().debounceTime(const Duration(seconds: 1)),
          initialData: "Please start typing",
          builder: (context, snapshot) {
            return Text(snapshot.requireData);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: TextField(onChanged: subject.sink.add),
      ),
    );
  }
}
