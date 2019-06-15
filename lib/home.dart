import 'package:flutter/material.dart';
import 'package:food_list/model/food.dart';
import 'detail.dart';
class Home extends StatelessWidget {

  static String tag = '/home';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Food List'),
        elevation: 0.0,
      ),
      body:
      Column(
        children: <Widget>[
          new Expanded(child: GridView.count(crossAxisCount: 2,
            padding: EdgeInsets.all(8.0),
            childAspectRatio: 8.0 / 9.0,
            children: _buildListFood(context,_dataFood()),
          ))
        ],
      ),
    );
  }


  List<Card> _buildListFood(BuildContext context,List<Food> data) {
    ThemeData themeData = Theme.of(context);
    List<Card> cards = List.generate(data.length,
            (int index) =>
        Card(
          color: Colors.white,
          child:
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, Detail.tag,arguments: data[index]);
                },
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 18.0/15.0,
                      child:
                      Image.asset(data[index].imgUrl,fit: BoxFit.cover,height: double.infinity,width: double.infinity),
                    ),
                    SizedBox(height: 5.0,),
                    Text(data[index].name,style: themeData.textTheme.title)
                  ],
                ),
              ),

        )
    );

    return cards;
  }

  List<Food>_dataFood(){
    Food food1 = Food("Bika Ambon", 'assets/bikaambon.jpg', 'Bika ambon adalah sejenis penganan asal Indonesia. Terbuat dari bahan-bahan seperti telur, gula, dan santan, bika ambon umumnya dijual dengan rasa pandan, meskipun kini juga tersedia rasa-rasa lainnya seperti durian, keju, dan cokelat. Bika ambon biasanya dapat bertahan dalam kondisi terbaik selama sekitar empat hari karena setelah itu kue tersebut mulai mengeras.');
    Food food2 = Food('Bubur Sagu', 'assets/bubursagu.jpg', 'Salah satu kreasi makanan yang menggunakan bahan baku dari tepung sagu adalah olahan bubur sagu. Bubur sagu mempunyai cita rasa yang enak dengan tekstur bubur yang kenyal.');
    Food food3 = Food('Gohu Ikan', 'assets/gohuikan.jpg', 'Berbahan dasar ikan Tuna atau Cakalang mentah, Gohu Ikan juga sering disebut Sashimi Ternate oleh beberapa orang. Cara membuat makanan ini pun sangat sederhana dan mudah untuk dilakukan. Biasanya Ikan Tuna atau Cakalang dipotong menyerupai dadu, dicuci kemudian dilumuri dengan garam dan perasan lemon.');
    Food food4 = Food('Iga Penyet', 'assets/igapenyet.jpg', 'Iga penyet adalah masakan Indonesia — lebih tepatnya masakan Jawa Timur — yang terdiri dari daging iga sapi goreng yang disajikan dengan sambal terasi yang pedas.');
    Food food5 = Food('Kangkung','assets/kangkung.jpg','Masakan sayura dengan bahan dasar Kangkung');
    Food food6 = Food('Lumpia','assets/lumpia.jpg','Lumpia yang dikenal oleh orang Indonesia merupakan lafal Bahasa Hokkian. Lumpia terdiri dari lembaran tipis tepung gandum yang dijadikan sebagai pembungkus isian yang umumnya adalah rebung, telur, sayuran segar, daging, atau makanan laut.');
    Food food7 = Food('Martabak','assets/martabak.jpg',
      'Marabak merupakan sajian yang biasa ditemukan di Arab Saudi Di Indonesia ada dua jenis martabak, yaitu martabak asin/telur yang terbuat dari campuran telur dan daging serta martabak manis');
    Food food8 = Food('Nasi Goreng','assets/nasigoreng.jpg','Nasi goreng merupakan sajian nasi yang digoreng dalam sebuah wajan atau penggorengan menghasilkan cita rasa berbeda karena dicampur dengan bumbu-bumbu seperti bawang putih, bawang merah, merica dan kecap manis. Selain itu, ditambahkan bahan-bahan pelengkap seperti telur, sayur-sayuran, makanan laut, atau daging.');
    Food food9 = Food('Nasi Gudeng','assets/nasigudeg.jpg','Gudeg adalah makanan khas Yogyakarta dan Jawa Tengah yang terbuat dari nangka muda yang dimasak dengan santan. Perlu waktu berjam-jam untuk membuat masakan ini. Warna coklat biasanya dihasilkan oleh daun jati yang dimasak bersamaan');
    Food food10 = Food('Nasi Langit', 'assets/nasilangit.jpg', 'Varian nasi dengan beberapa rempah rempah');
    Food food11 = Food('Pisang Goreng','assets/pisanggoreng.jpg','makanan ringan yang banyak ditemui di Indonesia, Singapura dan Malaysia. Makanan ini dibuat dari buah pisang');
    Food food12 = Food('Sate','assets/sate.jpg','Sate adalah makanan yang terbuat dari daging yang dipotong kecil-kecil dan ditusuk sedemikian rupa dengan tusukan lidi tulang daun kelapa atau bambu kemudian dipanggang menggunakan bara arang kayu');
    Food food13 = Food('Selat solo', 'assets/selatsolo.jpg','adalah sebuah hidangan khas Jawa yang memiliki pengaruh hidangan Eropa dan berasal dari kota Solo, Jawa Tengah');
    Food food14 = Food('Soto Banjar','assets/sotobanjar.jpg','Soto Banjar adalah soto khas suku Banjar, Kalimantan Selatan dengan bahan utama ayam dan beraroma harum rempah-rempah seperti kayu manis, biji pala, dan cengkeh. Soto berisi daging ayam yang sudah disuwir-suwir, dengan tambahan perkedel atau kentang rebus, rebusan telur, dan ketupa');
    Food food15 = Food('Sup Konro','assets/supkonro.jpg','Sup Konro adalah masakan sup iga sapi khas Indonesia yang berasal dari tradisi Bugis dan Makassar.');
    List<Food> data = new List();
    data.add(food1);
    data.add(food2);
    data.add(food3);
    data.add(food4);
    data.add(food5);
    data.add(food6);
    data.add(food7);
    data.add(food8);
    data.add(food9);
    data.add(food10);
    data.add(food11);
    data.add(food12);
    data.add(food13);
    data.add(food14);
    data.add(food15);

    return data;
  }
}
