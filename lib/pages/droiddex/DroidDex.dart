import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/droiddex/PokemonList.dart';

class DroidDex extends StatefulWidget {
  const DroidDex({super.key});

  @override
  State<DroidDex> createState() => _DroidDexState();
}

class _DroidDexState extends State<DroidDex> {
  int indexPage = 0;

  Widget getCurrentPage() {
    switch (indexPage) {
      case 0:
        return PokemonList();
      default:
        return PokemonList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffD2232A),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 64),
                  child: Image(
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fill,
                    image: const AssetImage('assets/barra de relevo.png'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30, left: 11),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 14),
                        child: const Image(
                            image: AssetImage('assets/botão de voz.png')),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 8),
                          child: const Image(
                              image: AssetImage('assets/leds.png'))),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 136.5, left: 5),
                  child: Stack(
                    children: [
                      Container(
                        
                        margin:
                            const EdgeInsets.only(left: 22, top: 26, right: 27),
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * .54,
                        child: getCurrentPage(),
                      ),
                      IgnorePointer(
                        child: Image(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * .64,
                            fit: BoxFit.fill,
                            image:
                                const AssetImage('assets/tela completa.png')),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 447.5),
                          padding: const EdgeInsets.only(left: 42, right: 25),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image(image: AssetImage('assets/botão on.png')),
                              Image(
                                  image:
                                      AssetImage('assets/botão de menu.png')),
                            ],
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 632, left: 7),
                  child: const Image(
                      image: AssetImage('assets/botão de seleção.png')),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 648, left: 78),
                  child: const Image(
                      image:
                          AssetImage('assets/botão da camera principal.png')),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 648, left: 143),
                  child: const Image(
                      image: AssetImage('assets/botão da camera traseira.png')),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 676, left: 75),
                  child: const Image(
                      image: AssetImage('assets/telinha de seleção.png')),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 643, left: 232),
                  child: const Image(
                      image: AssetImage(
                          'assets/direcionais com fundo completos.png')),
                ),
              ],
            )
          ],
        ));
  }
}
