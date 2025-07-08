/* 
-MaterialApp projeninbel kemiği olduğunu dah önce söykemiştik. bunu ispatlamanın en güzel örneği rotalardır.
MaterialPageRoute sınıfı MaterialApp olmadan çalışmaz.

-Ben rotalara niye ihtiyaç duyarım? Ben her sayfa geçişinde MaterialPageRoute sınıfını çağırıyor, bu performans açısından iyi değil.
Bu yüzden rotaları kullnamka daha performanslıdır.
-Rota kullanmanın iki yolu vardır. Bir tanesi standart olan diğeri gelişmiş olan.
-Aralarındaki fark biri sadece sayfa geçişini sağlar.
-Diğeri ise hem sayfa geçişini hem de veri aktarımını sağlar ama daha karmaşıktır.
-Rotaları tanımlamak için MaterialApp içerisindeki routes parametresi kullanılır ve bizden bir map ister içine rota ister.


-Eğer ana rotayı tanımlamak istersek / işarerti ile tanımlarız:
"/": (context)=> ResPaghe(),

Eğer bunu yapıyorsanız artık diğer rotaların başına bu slash hep konmalıdır:

"/yellowPage": (context)=> YellowPage(),
"/greenpage": (context)=> GrrenPage(),

ayrıca bu kök dizinini kullanacaksanız artık materialApp de home parametresini kullanamzsınız ya da yorum satırına almalısnız.


-Eğer bu roatada herhangi bir yanlış yol olursa çalışan özel bir parametre vardır bu da materialApp içerisindedir routesın bittiği
yere şunu tanımlıyoruz tabi daha ööncesinde bir hata sayfası oluşturduk.
onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context)=> HataSayfasi());
      },

OnGenerate Route:
Yine Materialapp içerisinde bulunur.
onGenerateRoute adında bir parametresi vardır.
Bunun önceki konudan farkı sadece sayfa açma işlemini değil aynı zamanda veri aktarımı yapamk için de kullanılabildiği için daha fazla işimize yarar
Ben MaterialApp in içini doldurmak istemiyorum. O yüzde farklı bir dosya oluşturup orda bu işlemi tanımlayıp materialApp de çağırıcam.




OnGenerate route yardımıyla

1/Sayfaya gşdecek oln butonun olduğu sayfada veri oluşturulur.
2)Verinin gideceği sayfada kurucusunda alınacak veri için hazırlık yapılır.
3) Rota yönetiminin olduğu sayfada (route_genertor) veri verinin gideceği sayfay gönderilir.
4) anasayfadaki veriyi gönderen butona şu yazılır:
Navigator.of(context).pushNamed("/greenPage", arguments:name)

Sonuç olarak veri göndeirmi tamamlanır.

 */