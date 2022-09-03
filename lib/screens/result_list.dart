import 'package:bmi_calculator/database/database.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class ResultList extends StatefulWidget {
  const ResultList({Key? key}) : super(key: key);

  @override
  _ResultListState createState() => _ResultListState();
}

class _ResultListState extends State<ResultList> {
  late AppDatabase database;

  @override
  Widget build(BuildContext context) {
    database = Provider.of<AppDatabase>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF0A0E21),
        title: Text('HISTORY'),
      ),
      body: FutureBuilder<List<ResultData>>(
        future: _getResultFromDatabase(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<ResultData>? resultList = snapshot.data;
            if (resultList != null) {
              if (resultList.isEmpty) {
                return Center(
                  child: Text(
                    'You have no calculations yet',
                    textAlign: TextAlign.center,
                  ),
                );
              } else {
                return resultListUI(resultList);
              }
            }
          } else if (snapshot.hasError) {
            return Center(
                child: Text(
              snapshot.error.toString(),
            ));
          }
          return Center(
            child: Text(
              'Click on add button to add new note',
            ),
          );
        },
      ),
    );
  }

  Future<List<ResultData>> _getResultFromDatabase() async {
    return await database.getResultList();
  }

  Widget resultListUI(List<ResultData> resultList) {
    return ListView.builder(
      itemCount: resultList.length,
      itemBuilder: (context, index) {
        final result = resultList[index];
        return ListTile(
          title: Text(result.bmi + " - " + result.resultText),
          subtitle: Text(DateFormat("dd MMM yyyy - hh:mm:ss a").format(result.createdAt)),
        );
      },
    );
  }
}
