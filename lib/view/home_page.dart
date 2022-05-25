import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice_image_keybord/provider/progress_provider.dart';
import 'package:practice_image_keybord/view/result_page.dart';

class HomePage extends ConsumerWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("検索画面"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            const Text(
              "ホテルを探す",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TextField(
                controller: _controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "例）京都"),
              ),
            ),
            const SizedBox(height: 120),
            SizedBox(
              width: 220,
              child: ElevatedButton(onPressed: () => _toSend(context, ref), child: Text("送信")),
            ),
          ],
        ),
      ),
    );
  }

  _toSend(BuildContext context, WidgetRef ref) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => ResultPage()),);
    ref.read(inputWordProvider.notifier).state = _controller.text;
  }
}
