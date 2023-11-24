import 'package:art_eshop/desktop/controller/artisan_controller.dart';
import 'package:art_eshop/desktop/pages/ajout_admin.dart';
import 'package:art_eshop/desktop/pages/detail_artisan.dart';
import 'package:art_eshop/mobil/models/Artisan_Entity.dart';
import 'package:art_eshop/mobil/models/couleur.dart';
import 'package:art_eshop/mobil/services/artisan_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListArtisan extends StatefulWidget {
  const ListArtisan({super.key});

  @override
  State<ListArtisan> createState() => _ListArtisanState();
}

class _ListArtisanState extends State<ListArtisan> {
  ArtisanProvider service = ArtisanProvider();
  final bool _isShow = false;
  final bool _isShow2 = false;

  @override
  Widget build(BuildContext context) {
    final artisanController = context.watch<ArtisanController>();
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.all(20),
                    width: 800,
                    // decoration:  BoxDecoration( border: Border),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIconColor: Couleurs.orange,
                          prefixIcon: const Icon(Icons.search),
                          hintText: "Recherche",
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          contentPadding: const EdgeInsets.all(0)),
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(8),
                    onTap: () {
                      // popup.dialogAjoutAdmin(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AjoutArtisan()));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 40),
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Couleurs.orange,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: Couleurs.blanc,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Ajouter",
                            style: TextStyle(
                              color: Couleurs.blanc,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          FutureBuilder<List<Artisan>>(
            future: artisanController.mesArtisans,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              }

              if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              print('je snaphot data ${snapshot.data}');
              return Expanded(
                flex: 6,
                child: ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: 1,
                  // itemCount: _DataSource(context).rowCount,
                  itemBuilder: (BuildContext context, int index) {
                    return PaginatedDataTable(
                      header: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                                textAlign: TextAlign.center,
                                'Liste des Artisans',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                )),
                            const SizedBox(
                              width: 20,
                            ),
                            Visibility(
                              visible: _isShow,
                              child: InkWell(
                                child: Container(
                                  width: 100,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Couleurs.orange,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Center(
                                    child: Text(
                                      "Active",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Couleurs.blanc, fontSize: 17),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Visibility(
                              visible: _isShow2,
                              child: InkWell(
                                child: Container(
                                  width: 100,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Couleurs.orange,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Center(
                                    child: Text(
                                      "Desactiver",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Couleurs.blanc, fontSize: 17),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      rowsPerPage: 7,
                      columns: const [
                        DataColumn(
                            label: Text('Photo',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold))),
                        DataColumn(
                            label: Text('Nom',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold))),
                        DataColumn(
                            label: Text('Prenom',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold))),
                        DataColumn(
                            label: Text('Telephone',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold))),
                        DataColumn(
                            label: Text('Status',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold))),
                        DataColumn(
                            label: Text('Details',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold))),
                      ],
                      source: _DataSource(snapshot.data!),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _DataSource extends DataTableSource {
  _DataSource(List<Artisan> artisanList) {
    // List<Artisan> artisans = artisanList;
    _rows = artisanList;
  }

  List<Artisan> _rows = <Artisan>[];
  int _selectedCount = 0;

  @override
  DataRow? getRow(int index) {
    assert(index >= 0);
    if (index >= _rows.length) return null;
    final row = _rows[index];
    return DataRow.byIndex(
      index: index,
      selected: row.selected,
      onSelectChanged: (value) {
        if (row.selected != value) {
          _selectedCount += value! ? 1 : -1;
          assert(_selectedCount >= 0);
          row.selected = value;
          notifyListeners();
        }
      },
      cells: [
        DataCell(
          SizedBox(
            height: 200,
            width: 200,
            child: CircleAvatar(
              radius: 200,
              backgroundColor: Couleurs.gri,
              child: ClipOval(
                child: Image.network(
                  "http://127.0.0.1/${row.photo!}",
                  fit: BoxFit.cover,
                  height: 200,
                  width: 200,
                  // scale: 1, // Vous pouvez ajuster l'échelle selon vos besoins
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    } else {
                      return Center(
                        child: CircularProgressIndicator(
                          color: Couleurs.orange,
                        ),
                      );
                    }
                  },
                  errorBuilder: (BuildContext context, Object error,
                      StackTrace? stackTrace) {
                    return const Icon(Icons.error, color: Colors.red);
                  },
                ),
              ),
            ),
          ),
        ),
        DataCell(Text(row.nom!)),
        DataCell(Text(row.prenom!)),
        DataCell(Text(row.telephone!)),
        DataCell((row.active!)
            ? const Icon(
                Icons.verified_user,
                color: Colors.green,
              )
            : const Icon(Icons.cancel, color: Colors.red)),
        DataCell(Builder(builder: (context) {
          return IconButton(
            icon: const Icon(Icons.remove_red_eye),
            onPressed: () {
              print('maudit row ${row}');
              context.read<ArtisanController>().currentArtisan = row;
              context.read<ArtisanController>().gotoDetails();
            },
          );
        })),
      ],
    );
  }

  @override
  int get rowCount => _rows.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => _selectedCount;
}
