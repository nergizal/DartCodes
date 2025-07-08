import 'package:burc_uygulamasi/model/burc.dart';
import 'package:flutter/material.dart';

class BurcDetay extends StatelessWidget {
  final Burc secilenBurc;
  const BurcDetay({super.key, required this.secilenBurc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //taşıcağı için bunu kullandık ilk etapta
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("${secilenBurc.burcAdi} Burcu ve Özellikleri"),

              background: Image.asset(
                "resimler/${secilenBurc.burcBuyukResim}",
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
                    secilenBurc.burcDetay,
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
