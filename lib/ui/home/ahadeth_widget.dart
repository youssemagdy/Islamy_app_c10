import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/ui/home/ahadeth_title.dart';
import 'package:islamy_app/ui/home/ahadth_model.dart';

class AhadethWidget extends StatefulWidget
{
  @override
  State<AhadethWidget> createState() => _AhadethWidgetState();
}

class _AhadethWidgetState extends State<AhadethWidget>
{
  @override
  Widget build(BuildContext context)
  {
    if (allAhadeth.isEmpty)
    {
      loadAhadethFile();
    }
    return Column(
      children: [
        Expanded(child: Image.asset('assets/image/ahadeth_image.png',)),
        Container(
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.symmetric(
                horizontal: BorderSide(
                  color: Theme.of(context).primaryColor,
                  width: 2,
                ),
            ),
          ),
            child: const Text('Ahadeth', style: TextStyle(fontSize: 24),)
        ),
        Expanded(
          flex: 3,
            child: allAhadeth.isEmpty
                ?const Center(child: CircularProgressIndicator(),)
                :ListView.separated(
                itemBuilder: (context, index) => AhadethTitleItem(hadeth: allAhadeth[index]),
                separatorBuilder: (context, index){
                return Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(5),
                  height: 2,
                  color: Theme.of(context).primaryColor,
                 );
                },
                itemCount: allAhadeth.length,
            ),
        ),
      ],
    );
  }
  List<AhadthModel> allAhadeth = [];
  void loadAhadethFile() async
  {
    String ahadethContant = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> ahadethlist = ahadethContant.trim().split('#');
    for (int i = 0; i < ahadethlist.length; i++)
    {
      List<String> oneAhadth = ahadethlist[i].trim().split('\n');
      String ahdethTitle = oneAhadth[0];
      oneAhadth.removeAt(0);
      String ahdethContent = oneAhadth.join(' ');
      allAhadeth.add(AhadthModel(ahdethTitle, ahdethContent));

    }
    setState(()
    {
    });
  }
}
