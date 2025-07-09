import 'package:palette_generator/palette_generator.dart';
import 'package:burc_uygulamasi/model/burc.dart';
import 'package:flutter/material.dart';

class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;
  const BurcDetay({super.key, required this.secilenBurc});

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Color appBarRengi = Colors.transparent;

  late PaletteGenerator _generator;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    appBarRenginiBul();
  }

  void appBarRenginiBul() async {
    _generator = await PaletteGenerator.fromImageProvider(
      AssetImage("resimler/${widget.secilenBurc.burcBuyukResim}"),
    );
    setState(() {
      appBarRengi = _generator.dominantColor!.color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //taşıcağı için bunu kullandık ilk etapta
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: appBarRengi,
            expandedHeight: 250,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("${widget.secilenBurc.burcAdi} Burcu ve Özellikleri"),

              background: Image.asset(
                "resimler/${widget.secilenBurc.burcBuyukResim}",
                fit: BoxFit.cover,
              ),
            ),
          ),
          //dikkat eğer Cusstom içinde normaql widget kullanmak istiyorsanız
          SliverToBoxAdapter(
            child: Container(
              child: Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(8),
                child: SingleChildScrollView(
                  child: Text(
                    widget.secilenBurc.burcDetay,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
