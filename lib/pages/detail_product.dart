import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:slicing_page/theme.dart';

const _listTableName = [
  "Dimensi",
  "Volume",
  "Net Weight",
  "Gross Weight",
];

const _listValues = [
  {
    "title": "HOISTING MACHINE, NMX08",
    "material": "KM472472486",
    "dimension": "L: 533\nW: 47\nH: 30",
    "volume": "0.81 m3",
    "net": "144 kg",
    "weight": "158",
    "count": "1 Pcs",
  },
  {
    "title": "HOISTING MACHINE, NMX08",
    "material": "KM472472486",
    "dimension": "L: 533\nW: 47\nH: 30",
    "volume": "0.81 m3",
    "net": "144 kg",
    "weight": "158",
    "count": "1 Pcs",
  },
  {
    "title": "HOISTING MACHINE, NMX08",
    "material": "KM472472486",
    "dimension": "L: 533\nW: 47\nH: 30",
    "volume": "0.81 m3",
    "net": "144 kg",
    "weight": "158",
    "count": "1 Pcs",
  },
  {
    "title": "HOISTING MACHINE, NMX08",
    "material": "KM472472486",
    "dimension": "L: 533\nW: 47\nH: 30",
    "volume": "0.81 m3",
    "net": "144 kg",
    "weight": "158",
    "count": "1 Pcs",
  },
  {
    "title": "HOISTING MACHINE, NMX08",
    "material": "KM472472486",
    "dimension": "L: 533\nW: 47\nH: 30",
    "volume": "0.81 m3",
    "net": "144 kg",
    "weight": "158",
    "count": "1 Pcs",
  },
];

class DetailProduct extends StatefulWidget {
  const DetailProduct({super.key});

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(statusBarColor: primaryColor),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 12),
              Stack(
                // mainAxisSize: MainAxisSize.max,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: IconButton(
                        onPressed: Navigator.of(context).pop,
                        icon: const Icon(
                          Icons.chevron_left,
                          size: 34,
                        )),
                  ),
                  const Center(
                      child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      "B 1056 RV",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: secondaryColor,
                      ),
                    ),
                  )),
                  const SizedBox(),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Items",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      "6 PCKG",
                    )
                  ],
                ),
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: List.generate(
                      _listValues.length,
                      (index) => Card(
                            color: Colors.grey.shade100,
                            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const CircleAvatar(
                                          backgroundColor: primaryColor,
                                          child: Icon(
                                            Icons.check,
                                            color: Colors.white,
                                          )),
                                      const SizedBox(width: 6),
                                      SizedBox(
                                        height: 60,
                                        width: MediaQuery.of(context).size.width * .5,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              _listValues[index]["title"]!,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(height: 2),
                                            RichText(
                                                text: TextSpan(children: [
                                              const TextSpan(
                                                  text: "Material",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                  )),
                                              const TextSpan(text: '     '),
                                              TextSpan(
                                                  text: _listValues[index]["material"]!,
                                                  style: TextStyle(
                                                    color: Colors.grey.shade500,
                                                    fontSize: 12,
                                                  )),
                                            ]))
                                          ],
                                        ),
                                      ),
                                      const Spacer(),
                                      Text("${_listValues[index]["count"]!}"),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: List.generate(
                                        _listTableName.length,
                                        (index) => SizedBox(
                                              width: MediaQuery.of(context).size.width * .20,
                                              child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  _listTableName[index],
                                                  style: const TextStyle(color: secondaryColor, fontSize: 12),
                                                ),
                                              ),
                                            )),
                                  ),
                                  const SizedBox(height: 4),
                                  Material(
                                    color: secondaryColor,
                                    child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: List.generate(
                                              _listTableName.length,
                                              (i) => SizedBox(
                                                    width: MediaQuery.of(context).size.width * .19,
                                                    child: Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: Text(
                                                        _listValues.elementAt(index).values.elementAt(i),
                                                        style: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10,
                                                        ),
                                                      ),
                                                    ),
                                                  )),
                                        )),
                                  )
                                ],
                              ),
                            ),
                          )),
                ),
              )),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "See All",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
