import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Yemek Tarifi'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
    var ekranBilgisi=MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
        
            SizedBox(
              width: ekranGenisligi,
                child: Image.asset("resimler/köfte.jpeg")
            ),
            Row(
              children: [
               Expanded(
                 child: SizedBox(
                   height: ekranGenisligi/8,
                   child: TextButton(
                       child:Yazi("Beğen",ekranGenisligi/25),
                     onPressed: (){
                         print("Beğenildi");
                     },
                     style: const ButtonStyle(
                       backgroundColor: MaterialStatePropertyAll<Color>(Colors.orange),
                     )
                   ),
                 ),
               ),
                Expanded(
                  child: SizedBox(
                    height: ekranGenisligi/8,
                    child: TextButton(
                        child:Yazi("Yorum Yap",ekranGenisligi/25),
                        onPressed: (){
                          print("Yorum yapıldı");
                        },
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(Colors.deepOrangeAccent),
                        )
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:  EdgeInsets.all(ekranYuksekligi/100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Köfte",
                    style: TextStyle(
                    color: Colors.deepOrangeAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: ekranGenisligi/20,
                    ),
                  ),
                  Row(children: [
                    Yazi("Izgara üzerinde pişirmeye uygun",ekranGenisligi/25),
                    Spacer(),
                    Yazi("26 Mart",ekranGenisligi/25),
                  ],
        
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(ekranYuksekligi/100),
              child: Yazi("Derin bir kaba soğan rendelenir.Üzerine yumurta, ince kıyılmış maydanoz rendelenmiş sarımsak, baharatlar, tuz, ekmek içi veya galeta unu eklenir."
                  "Güzelce yoğrulur.Pürüzsüz bir hale gelince köftemizi yarım saat buzdolabında dinlendirilir.Daha sonra ceviz büyüklüğünde parçalar koparıp elimizle sekil verip yapışmaz bir tavada kızartalım."
                  "Yanına patates ve biber kızartıp servis edebilirsiniz.Afiyet olsun :)", ekranGenisligi/25),
            ),
          ],
        
        ),
      )

    );

  }
}

class Yazi extends StatelessWidget {
  String icerik;
  double yaziBoyutu;


  Yazi(this.icerik, this.yaziBoyutu);

  @override
  Widget build(BuildContext context) {
    return Text(icerik,style: TextStyle(fontSize: yaziBoyutu),);
  }
}

