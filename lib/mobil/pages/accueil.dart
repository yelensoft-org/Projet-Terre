import 'package:Art_Eshop/mobil/models/couleur.dart';
import 'package:Art_Eshop/mobil/models/dalog.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Accueil extends StatefulWidget {
  const Accueil({super.key});

  @override
  State<Accueil> createState() => _ProduitsState();
}

class _ProduitsState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Couleurs.orange,
        toolbarHeight: 0,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Container(
          height: 70,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Couleurs.orange,
              borderRadius:
                  const BorderRadius.only(bottomLeft: Radius.circular(40))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                  onTap: () {
                    Popup().dialogLang(context);
                  },
                  child: SvgPicture.asset('assets/icons/google_translate.svg')),
              const Text(
                "Ousmato Toure",
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const CircleAvatar(
                backgroundImage: AssetImage("assets/images/profil.png"),
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          // decoration:  BoxDecoration( border: Border),
          child: TextField(
            decoration: InputDecoration(
                prefixIconColor: Couleurs.orange,
                prefixIcon: const Icon(Icons.search),
                hintText: "Recherche",
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                contentPadding: const EdgeInsets.all(0)),
          ),
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10.0, bottom: 10.0),
                child: const Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ]),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 20,
              ),
              Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  // color: Colors.amber,
                  border: Border.all(width: 1, color: Couleurs.orange),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  // color: Colors.amber,
                  border: Border.all(width: 1, color: Couleurs.orange),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  // color: Colors.amber,
                  border: Border.all(width: 1, color: Couleurs.orange),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  // color: Colors.amber,
                  border: Border.all(width: 1, color: Couleurs.orange),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  // color: Colors.amber,
                  border: Border.all(width: 1, color: Couleurs.orange),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 20.0,
            ),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Card(
                // color: Couleurs.orange,
                elevation: 3,

                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Couleurs.orange, width: 1)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 3,

                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        // decoration: BoxDecoration(
                        //   border: Border.all(width: 1, color: Couleurs.orange),
                        //   borderRadius:
                        //       const BorderRadius.all(Radius.circular(10)),
                        // ),
                        child: Image.asset("assets/images/plover.png"),
                      ),
                      // Image.asset("assets/images/plover.png"),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        // height: 40,
                        decoration: BoxDecoration(
                            color: Couleurs.orange,
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ]),
    );
  }
}
