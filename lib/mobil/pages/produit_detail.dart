import 'package:art_eshop/mobil/models/couleur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProduitDetail extends StatefulWidget {
  const ProduitDetail({super.key});

  @override
  State<ProduitDetail> createState() => _ProduitDetailState();
}

class _ProduitDetailState extends State<ProduitDetail> {
  bool active = true;
  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(239, 245, 242, 242),
      appBar: AppBar(
        backgroundColor: Couleurs.orange,
        //  backgroundColor: Color.fromARGB(255, 216, 214, 214),
        elevation: 0,
        leading: Container(
            // margin:const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  'assets/icons/back.svg',
                  color: Colors.white,
                ),
              ],
            )),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            width: MediaQuery.of(context).size.width,
            height: 450,
            child: Image.asset('assets/images/plover.png', fit: BoxFit.fill),
          ),
          Container(
            padding: const EdgeInsets.only(right: 20, bottom: 8, left: 20),
            // height: 40,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      _modalDetail();
                      // showBottomSheet(context: context, builder: (context) =>Container())
                    },
                    child: SvgPicture.asset(
                      'assets/icons/telecharger.svg',
                      height: 30,
                    )),
                SvgPicture.asset(
                  'assets/icons/telecharger.svg',
                  height: 30,
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }

  void _modalDetail() {
    showModalBottomSheet(
        
        backgroundColor: Colors.transparent,
        barrierColor: Colors.transparent,
        context: context,
        builder: (_) {
          return // ::::::::::::::::::::::::::::::::;detail de l'image
              Container(
            padding: const EdgeInsets.all(10),
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Couleurs.gri),
                color: Couleurs.blanc,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    // :::::::::::::::::::::::nom
                    Container(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: const Text(
                        "Grand-Boubou",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Name",
                        style: TextStyle(color: Couleurs.orange),
                      ),
                    ),
                    // ::::::::::::::::::::::::;;;panier
                    Container(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: const Text(
                        "Grand-Boubou",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Name",
                        style: TextStyle(color: Couleurs.orange),
                      ),
                    ),
                    // ::::::::::::::::::::::::::::;tail
                    Container(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: const Text(
                        "Grand-Boubou",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(width: 1, color: Couleurs.gri)),
                            child: Center(
                              child: Text(
                                "N",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Couleurs.orange),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Name",
                            style: TextStyle(color: Couleurs.orange),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Name",
                            style: TextStyle(color: Couleurs.orange),
                          ),
                        ],
                      ),
                    ),
                    // :::::::::::::::::::::::::::culture
                    Container(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: const Text(
                        "Grand-Boubou",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Name",
                        style: TextStyle(color: Couleurs.orange),
                      ),
                    ),
                    // :::::::::::::::::::::description
                    Container(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: const Text(
                        "Grand-Boubou",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Name",
                        style: TextStyle(color: Couleurs.orange),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Switch(
                      // This bool value toggles the switch.
                      value: active,
                      thumbIcon: thumbIcon,
                      activeColor: Couleurs.orange,
                      onChanged: (bool value) {
                        // This is called when the user toggles the switch.
                        setState(() {
                          active = value;
                        });
                      },
                    )
                  ],
                )
              ],
            ),
          );
        });
  }
}
