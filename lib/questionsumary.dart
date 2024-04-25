// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class Questionsumary extends StatefulWidget {
  List<Map<String, Object>> summarydata;
  Questionsumary(

      // ignore: non_constant_identifier_names
      this.summarydata,
      {super.key});

  @override
  State<Questionsumary> createState() => _QuestionsumaryState();
}

class _QuestionsumaryState extends State<Questionsumary> {
  Color indexcolor = Color.fromARGB(255, 34, 191, 73);

  @override
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
            children: widget.summarydata.map(
          (data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: indexcolor,
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 30),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          child: Center(
                              child: Text(
                            data['question'] as String,
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          data['correct_answer'] as String,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 7, 192, 224)),
                        ),
                        Text(
                          data['user_answer'] as String,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 137, 58, 151),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ).toList()),
      ),
    );
  }
}
