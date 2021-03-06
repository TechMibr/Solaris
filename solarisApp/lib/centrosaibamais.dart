import 'package:flutter/material.dart';
import 'package:solareconomy_app/saibamais1.dart';
import 'package:solareconomy_app/saibamais2.dart';
import 'package:solareconomy_app/saibamais3.dart';
import 'package:solareconomy_app/saibamais4.dart';
import 'package:solareconomy_app/saibamais5.dart';

class CentroSaibaMais extends StatelessWidget {
  const CentroSaibaMais({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0XFFD9985F)),
        toolbarHeight: 80,
        backgroundColor: Color(0XFF012257),
        title: Text(
          'SAIBA MAIS',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child:Image.asset(
                'images/centralsaibamais2.png',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 3),
                child: ConstrainedBox(
                  constraints:
                  BoxConstraints.tightFor(height: 60, width: 320),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Color(0XFF012257)),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  Saibamais1()));
                    },
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: const Text(
                          'COMO A ENERGIA RENOV??VEL PODE TE AJUDAR?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
            Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 3),
                child: ConstrainedBox(
                  constraints:
                  BoxConstraints.tightFor(height: 60, width: 320),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Color(0XFF012257)),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  Saibamais2()));
                    },
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: const Text(
                          'O QUE ?? ENERGIA RENOV??VEL OU ENERGIA LIMPA?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
            Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 3),
                child: ConstrainedBox(
                  constraints:
                  BoxConstraints.tightFor(height: 60, width: 320),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Color(0XFF012257)),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  Saibamais3()));
                    },
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: const Text(
                          'TIPOS DE ENERGIA LIMPA',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
            Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 3),
                child: ConstrainedBox(
                  constraints:
                  BoxConstraints.tightFor(height: 60, width: 320),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Color(0XFF012257)),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  Saibamais4()));
                    },
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: const Text(
                          'PORQUE DEVO INSTALAR UMA FONTE RENOV??VEL DE ENERGIA NA MINHA CASA?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
            Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 3),
                child: ConstrainedBox(
                  constraints:
                  BoxConstraints.tightFor(height: 60, width: 320),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Color(0XFF012257)),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  Saibamais5()));
                    },
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: const Text(
                          'USAR ENERGIA RENOV??VEL PODE SER PERIGOSO?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                )),

          ],
        ),
      ),
    );
  }
}

