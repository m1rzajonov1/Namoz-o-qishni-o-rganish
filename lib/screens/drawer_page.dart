import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  double? sizeIcon;
  MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    sizeIcon = MediaQuery.of(context).size.width * 0.08;

    return Drawer(
      backgroundColor: Colors.grey[850],
      child: Column(
        children: [
          DrawerHeader(
            child: Expanded(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 1,
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 52,
                      foregroundImage: AssetImage(
                          "assets/images/cute-muslim-kids-cartoon_1366-593.jpg"),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: AutoSizeText(
                        "Namoz o'qishni o'rganish",
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.width * 0.047),
                      ),
                    ))
                  ],
                ),
              ),
            ),
          ),
          myDrawerCard(
            'Ilova haqida',
            Icon(Icons.lightbulb_outline, size: sizeIcon),
          ),
          myDrawerCard(
              "Tanlanganlar",
              Icon(
                Icons.favorite,
                size: sizeIcon,
              )),
          const Divider(),
          myDrawerCard(
              "Biz telegramda!",
              Icon(
                Icons.send_outlined,
                size: sizeIcon,
              )),
          const Divider(),
          const Spacer(),
          myDrawerCard(
              "Settings",
              Icon(
                Icons.settings,
                size: sizeIcon,
              ))
        ],
      ),
    );
  }

  Card myDrawerCard(String title, Icon icon) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: ListTile(
        onTap: () {},
        leading: icon,
        title: Text(
          title,
          style: const TextStyle(fontSize: 15, color: Colors.white),
        ),
      ),
    );
  }
}
