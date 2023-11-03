import 'package:Art_Eshop/desktop/pages/artisan.dart';
import 'package:Art_Eshop/desktop/pages/bloc/sidebar_menu_bloc/sidebar_menu_bloc.dart';
import 'package:Art_Eshop/desktop/pages/bloc/sidebar_menu_bloc/sidebar_menu_event.dart';
import 'package:Art_Eshop/desktop/pages/bloc/sidebar_menu_bloc/sidebar_menu_state.dart';
import 'package:Art_Eshop/desktop/pages/produit.dart';
import 'package:Art_Eshop/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:animated_tree_view/animated_tree_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SidebarMenu extends StatelessWidget {
  const SidebarMenu({Key? key}) : super(key: key);
  
  Widget buildSidebarContent(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => SidebarMenuBloc()
              ..add(FetchSidebarMenuEvent(menu: "Dashboard")),
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Dashboard"),
          ),
          backgroundColor: const Color(0xFFe2e1e4),
          body: BlocBuilder<SidebarMenuBloc, SidebarMenuState>(
            builder: (context, state) {
              if (state is SidebarMenuSuccess) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: const Color.fromARGB(255, 67, 67, 194),
                      width: 250,
                      child: Column(
                        children: [
                          // Widget at the top side of the sidebar (preference).
                          // Container(
                          //   color: const Color(0xFF171719),
                          //   width: 250,
                          //   child: const Padding(
                          //     padding: EdgeInsets.only(
                          //       top: 15,
                          //       left: 12,
                          //       right: 12,
                          //       bottom: 15,
                          //     ),
                          //     child: Column(
                          //       crossAxisAlignment: CrossAxisAlignment.start,
                          //       children: [
                          //         // Text(
                          //         //   "SidebarMenu",
                          //         //   style: TextStyle(
                          //         //     color: Colors.white,
                          //         //     fontSize: 20,
                          //         //     fontWeight: FontWeight.bold,
                          //         //   ),
                          //         // ),
                          //       ],
                          //     ),
                          //   ),
                          // ),
                          // Sidebar menu widget
                          Expanded(
                            child: Container(
                              color: const Color.fromARGB(255, 53, 53, 184),
                              child: TreeView.simple(
                                tree: menuTree,
                                indentation: const Indentation(width: 0),
                                // expansionIndicatorBuilder: (context, node) {
                                //   return ChevronIndicator.rightDown(
                                //     alignment: Alignment.centerLeft,
                                //     tree: node,
                                //     color: Colors.white,
                                //     icon: Icons.home,
                                //   );
                                // },
                                onItemTap: (item) {
                                  BlocProvider.of<SidebarMenuBloc>(context).add(
                                      FetchSidebarMenuEvent(menu: item.key));
                                      //  Navigator.pop(context);
                                },
                                builder: (context, node) {
                                  final isSelected = state.menu == node.key;
                                  final isExpanded = node.isExpanded;
                                  return MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: Container(
                                      color: node.level >= 2 || isExpanded
                                          ? const Color(
                                              0xFF313136) // For coloring the background of child nodes
                                          : const Color.fromARGB(
                                              255, 80, 26, 1),
                                      height:
                                          42, // Padding between one menu and another.
                                      width: 250,
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: node.level >= 2
                                            ? const EdgeInsets.only(
                                                left:
                                                    27) // Padding for the children of the node
                                            : const EdgeInsets.only(left: 0),
                                        child: Container(
                                          width: 250,
                                          height:
                                              45, // The size dimension of the active button
                                          alignment: Alignment.centerLeft,
                                          decoration: BoxDecoration(
                                            color: isSelected
                                                ? node.isLeaf
                                                    ? const Color.fromARGB(
                                                        255,
                                                        211,
                                                        133,
                                                        15) // The color for the active node.
                                                    : null
                                                : null,
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(
                                                50,
                                              ),
                                              bottomLeft: Radius.circular(
                                                50,
                                              ),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              left: 25,
                                            ),
                                            child: node.level >= 2
                                                ? Text(
                                                    node.key,
                                                    style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14,
                                                    ),
                                                  )
                                                : Row(
                                                    children: [
                                                      Icon(
                                                        node.data,
                                                        size: 20,
                                                        color: Colors.white,
                                                      ),
                                                      const SizedBox(
                                                        width: 6,
                                                      ),
                                                      Text(
                                                        node.key,
                                                        style: const TextStyle(
                                                          color: Colors. white,
                                                          fontSize: 14,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ScreensView(menu: state.menu),
                    ),
                  ],
                );
              } else if (state is SidebarMenuError) {
                return const Center(
                  child: Text(
                    "An error has occurred. Please try again later.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                );
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (Responsive.isTablet(context)) {
      // Si l'écran est de taille tablette, affiche le Sidebar dans un Drawer
      return Scaffold(
        
        appBar: AppBar(
          title: const Text("Dashboard"),
        ),
        drawer:  buildSidebarContent(context),
        
      );
    } else {
      // Sinon, affiche le Sidebar comme précédemment
      return buildSidebarContent(context);
    }
  }
}

final menuTree = TreeNode.root()
  ..addAll(
    [
      TreeNode(key: "Dashboard", data: Icons.dashboard),
      TreeNode(key: "Artisan", data: Icons.description),
      // ..addAll([
      //   TreeNode(key: "Dart"),
      //   TreeNode(key: "Flutter"),
      // ]),
      TreeNode(key: "Produits", data: Icons.cable),
      // ..addAll([
      //   TreeNode(key: "Animated Tree View"),
      //   TreeNode(key: "Flutter BLoC"),
      //   TreeNode(key: "Material"),
      // ]),
      TreeNode(key: "Analytics", data: Icons.analytics),
      TreeNode(key: "Collection", data: Icons.collections_bookmark),
      // ..addAll([
      //   TreeNode(key: "Framework"),
      //   TreeNode(key: "Technology"),
      // ]),
      TreeNode(key: "Settings", data: Icons.settings),
    ],
  );

class ScreensView extends StatelessWidget {
  final String menu;
  const ScreensView({Key? key, required this.menu}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (menu) {
      case 'Produits':
        page = const Produits();
        // pages = const Center(
        //   child: Text(
        //     "Dashboard Page",
        //     style: TextStyle(
        //       color: Color(0xFF171719),
        //       fontSize: 22,
        //     ),
        //   ),
        // );
        break;
      case 'Artisan':
        page = const Artisan();
        // page = const Center(

        //   child: Text(
        //     "Dart Page",
        //     style: TextStyle(
        //       color: Color(0xFF171719),
        //       fontSize: 22,
        //     ),
        //   ),
        // );
        break;
      default:
        page = const Center(
          child: Text(
            "Other Page",
            style: TextStyle(
              color: Color(0xFF171719),
              fontSize: 22,
            ),
          ),
        );
    }
    return page;
  }
}
