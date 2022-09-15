import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/build_form/view/widget/build_form.dart';
import 'package:product_app/filter/view/method/dropdown_button.dart';
import 'package:product_app/filter/view/new_src.dart';
import 'package:product_app/realestate_screen/view/commission_screen.dart';

class FilterListScreen extends StatefulWidget {
  const FilterListScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<FilterListScreen> createState() => _FilterListScreenState();
}

class _FilterListScreenState extends State<FilterListScreen> {
  String? numb;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Dropdown'),
      ),
      body: Column(
        children: [
          //const AccumulatorWidget(),
          Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
              right: 8.0,
              left: 8.0,
            ),
            child: MyDropDownButton(
              buttonColor: Colors.white,
              hint: 'City/Province',
              listItems: const [
                {
                  'label': 'phnom penh',
                  'value': '1',
                },
                {
                  'label': 'banteay meanchey',
                  'value': '2',
                },
                {
                  'label': 'battambang',
                  'value': '3',
                },
                {
                  'label': 'kampong cham',
                  'value': '4',
                },
                {
                  'label': 'kampong chhnang',
                  'value': '5',
                },
                {
                  'label': 'kampong speu',
                  'value': '6',
                },
                {
                  'label': 'kampong thom',
                  'value': '7',
                },
                {
                  'label': 'kampot',
                  'value': '8',
                },
                {
                  'label': 'kandal',
                  'value': '9',
                },
                {
                  'label': 'koh kong',
                  'value': '10',
                },
                {
                  'label': 'kratié',
                  'value': '11',
                },
                {
                  'label': 'mondulkiri',
                  'value': '12',
                },
                {
                  'label': 'preah vihear',
                  'value': '13',
                },
                {
                  'label': 'prey veng',
                  'value': '14',
                },
                {
                  'label': 'pursat',
                  'value': '15',
                },
                {
                  'label': 'ratanakiri',
                  'value': '16',
                },
                {
                  'label': 'siem reap',
                  'value': '17',
                },
                {
                  'label': 'preah sihanouk',
                  'value': '18',
                },
                {
                  'label': 'stung treng',
                  'value': '19',
                },
                {
                  'label': 'svay rieng',
                  'value': '20',
                },
                {
                  'label': 'takéo',
                  'value': '21',
                },
                {
                  'label': 'oddar meanchey',
                  'value': '22',
                },
                {
                  'label': 'kep',
                  'value': '23',
                },
                {
                  'label': 'pailin',
                  'value': '24',
                },
                {
                  'label': 'tboung khmum',
                  'value': '25',
                },
              ],
              onChanged: (value) {
                setState(() {
                  // numb = int.parse(value['value']);
                  numb = value['value'];
                });
              },
            ),
          ),
          Text('$numb'),
          const SizedBox(
            height: 8,
          ),
          Column(
            children: [
              MyDropDownButton(
                buttonColor: Colors.black12,
                hint: 'Khan/District',
                listItems: switchDistrict('$numb'),
                onChanged: (value) {},
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 8.0,
              left: 8.0,
            ),
            child: MyDropDownButton(
              buttonColor: Colors.black12,
              hint: 'Sangkat/Commune',
              listItems: const [
                {
                  'label': 'ឡូតិ៍កែង',
                  'value': '1',
                },
                {
                  'label': 'ឡូតិ៍កណ្តាល',
                  'value': '2',
                },
              ],
              onChanged: (value) {
                debugPrint(value['value']);
              },
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Price'),
                    buildForm(
                      hint: 'Minimum',
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildForm(
                      hint: 'Maximum',
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 8.0,
              left: 8.0,
            ),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: [
                      const Text('View'),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.line_style),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.list),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.apps),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 100,
        width: double.infinity,
        decoration: const BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              // SizedBox(
              //   height: AppSize.s8,
              // ),
              CustomButton(
                onTap: () {
                  Get.to(() => const NewScreen());
                },
                text: 'Apply Filter',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

switchDistrict(String number) {
  switch (number) {
    case '1':
      return ppKhanList;
    case '2':
      return tkList;
  }
  return ppKhanList;
}

List<Map<String, dynamic>> ppKhanList = [
  {
    'label': 'Chamkar Mon',
    'value': '1',
  },
  {
    'label': 'Doun Penh',
    'value': '2',
  },
  {
    'label': 'Prampir Makara',
    'value': '3',
  },
  {
    'label': 'Tuol Kouk',
    'value': '4',
  },
  {
    'label': 'Dangkao',
    'value': '5',
  },
  {
    'label': 'Mean Chey',
    'value': '6',
  },
  {
    'label': '	Russey Keo',
    'value': '7',
  },
  {
    'label': 'Sen Sok',
    'value': '8',
  },
  {
    'label': 'Pou Senchey',
    'value': '9',
  },
  {
    'label': 'Chroy Changvar',
    'value': '10',
  },
  {
    'label': 'Prek Pnov',
    'value': '11',
  },
  {
    'label': 'Chbar Ampov',
    'value': '12',
  },
  {
    'label': '	Boeng Keng Kang',
    'value': '13',
  },
  {
    'label': 'Kamboul',
    'value': '14',
  },
];

List<Map<String, dynamic>> btbList = [
  {
    'label': 'Banan',
    'value': '1',
  },
  {
    'label': 'Thma Koul',
    'value': '2',
  },
  {
    'label': 'Battambang municipality ',
    'value': '3',
  },
  {
    'label': 'Bavel',
    'value': '4',
  },
  {
    'label': 'Ek Phnom',
    'value': '5',
  },
  {
    'label': 'Moung Ruessei',
    'value': '6',
  },
  {
    'label': 'Rotanak Mondol ',
    'value': '7',
  },
  {
    'label': 'Sangkae',
    'value': '8',
  },
  {
    'label': 'Samlout',
    'value': '9',
  },
  {
    'label': 'Sampov Loun',
    'value': '10',
  },
  {
    'label': 'Phnum Proek',
    'value': '11',
  },
  {
    'label': 'Kamrieng',
    'value': '12',
  },
  {
    'label': 'Koas Krala',
    'value': '13',
  },
  {
    'label': 'Rukhak Kiri',
    'value': '14',
  },
];

List<Map<String, dynamic>> kpcList = [
  {
    'label': 'Batheay',
    'value': '1',
  },
  {
    'label': 'Chamkar Leu',
    'value': '2',
  },
  {
    'label': 'Cheung Prey',
    'value': '3',
  },
  {
    'label': 'Kampong Cham municipality',
    'value': '4',
  },
  {
    'label': 'Kampong Siem',
    'value': '5',
  },
  {
    'label': 'Kang Meas',
    'value': '6',
  },
  {
    'label': 'Koh Sotin',
    'value': '7',
  },
  {
    'label': 'Prey Chhor',
    'value': '8',
  },
  {
    'label': 'Srey Santhor',
    'value': '9',
  },
  {
    'label': 'Stueng Trang',
    'value': '10',
  },
];

List<Map<String, dynamic>> kcList = [
  {
    'label': 'Baribour',
    'value': '1',
  },
  {
    'label': 'Chol Kiri',
    'value': '2',
  },
  {
    'label': 'Kampong Chhnang municipality',
    'value': '3',
  },
  {
    'label': 'Kampong Leaeng',
    'value': '4',
  },
  {
    'label': 'Kampong Tralach',
    'value': '5',
  },
  {
    'label': 'Rolea Bier',
    'value': '6',
  },
  {
    'label': 'Sameakki Mean Chey',
    'value': '7',
  },
  {
    'label': 'Tuek Phos',
    'value': '8',
  },
];

List<Map<String, dynamic>> ksList = [
  {
    'label': 'Basedth',
    'value': '1',
  },
  {
    'label': 'Chbar Mon municipality',
    'value': '2',
  },
  {
    'label': 'Kong Pisei',
    'value': '3',
  },
  {
    'label': 'Aoral',
    'value': '4',
  },
  {
    'label': 'Odongk',
    'value': '5',
  },
  {
    'label': 'Phnom Sruoch',
    'value': '6',
  },
  {
    'label': 'Samraong Tong',
    'value': '7',
  },
  {
    'label': 'Thpong',
    'value': '8',
  },
];

List<Map<String, dynamic>> ktList = [
  {
    'label': 'Baray',
    'value': '1',
  },
  {
    'label': 'Kampong Svay',
    'value': '2',
  },
  {
    'label': 'Stueng Saen municipality',
    'value': '3',
  },
  {
    'label': 'Prasat Balangk',
    'value': '4',
  },
  {
    'label': 'Prasat Sambour',
    'value': '5',
  },
  {
    'label': 'Sandaan',
    'value': '6',
  },
  {
    'label': 'Santuk',
    'value': '7',
  },
  {
    'label': 'Stoung',
    'value': '8',
  },
  {
    'label': 'Taing Kouk',
    'value': '9',
  },
];

List<Map<String, dynamic>> kpList = [
  {
    'label': 'Angkor Chey',
    'value': '1',
  },
  {
    'label': 'Banteay Meas',
    'value': '2',
  },
  {
    'label': 'Chhuk',
    'value': '3',
  },
  {
    'label': 'Chum Kiri',
    'value': '4',
  },
  {
    'label': 'Dang Tong',
    'value': '5',
  },
  {
    'label': 'Kampong Trach',
    'value': '6',
  },
  {
    'label': 'Tuek Chhou',
    'value': '7',
  },
  {
    'label': 'Kampot municipality',
    'value': '8',
  },
];

List<Map<String, dynamic>> kdList = [
  {
    'label': 'Kandal Stueng',
    'value': '1',
  },
  {
    'label': 'Kien Svay',
    'value': '2',
  },
  {
    'label': 'Khsach Kandal',
    'value': '3',
  },
  {
    'label': 'Kaoh Thum',
    'value': '4',
  },
  {
    'label': 'Leuk Daek',
    'value': '5',
  },
  {
    'label': 'Lvea Aem',
    'value': '6',
  },
  {
    'label': 'Mukh Kampul',
    'value': '7',
  },
  {
    'label': 'Angk Snuol',
    'value': '8',
  },
  {
    'label': 'Ponhea Lueu',
    'value': '9',
  },
  {
    'label': 'Sang',
    'value': '10',
  },
  {
    'label': 'Ta Khmau municipality',
    'value': '11',
  },
];

List<Map<String, dynamic>> kepList = [
  {
    'label': 'Damnak Changaeur',
    'value': '1',
  },
  {
    'label': 'Kep municipality',
    'value': '2',
  },
];

List<Map<String, dynamic>> kkList = [
  {
    'label': 'Botum Sakor',
    'value': '1',
  },
  {
    'label': 'Kiri Sakor',
    'value': '2',
  },
  {
    'label': 'Khemara Phoumin municipality',
    'value': '3',
  },
  {
    'label': 'Smach Mean Chey',
    'value': '4',
  },
  {
    'label': 'Mondol Seima',
    'value': '5',
  },
  {
    'label': 'Srae Ambel',
    'value': '6',
  },
  {
    'label': 'Thma Bang',
    'value': '7',
  },
];

List<Map<String, dynamic>> krList = [
  {
    'label': 'Chhloung',
    'value': '1',
  },
  {
    'label': 'Kratié municipality',
    'value': '2',
  },
  {
    'label': 'Preaek Prasab',
    'value': '3',
  },
  {
    'label': 'Sambour',
    'value': '4',
  },
  {
    'label': 'Snuol',
    'value': '5',
  },
  {
    'label': 'Chetr Borei',
    'value': '6',
  },
];

List<Map<String, dynamic>> mdkList = [
  {
    'label': 'Kaev Seima',
    'value': '1',
  },
  {
    'label': 'Kaoh Nheaek',
    'value': '2',
  },
  {
    'label': 'Ou Reang',
    'value': '3',
  },
  {
    'label': 'Pechr Chenda',
    'value': '4',
  },
  {
    'label': 'Saen Monourom municipality',
    'value': '5',
  },
];

List<Map<String, dynamic>> odmList = [
  {
    'label': 'Anlong Veaeng',
    'value': '1',
  },
  {
    'label': 'Banteay Ampil',
    'value': '2',
  },
  {
    'label': 'Chong Kal',
    'value': '3',
  },
  {
    'label': 'Samraong municipality',
    'value': '4',
  },
  {
    'label': 'Trapeang Prasat',
    'value': '5',
  },
];

List<Map<String, dynamic>> plList = [
  {
    'label': 'Pailin municipality',
    'value': '1',
  },
  {
    'label': 'Sala Krau',
    'value': '2',
  },
];

List<Map<String, dynamic>> pvList = [
  {
    'label': 'Chey Saen',
    'value': '1',
  },
  {
    'label': 'Chhaeb',
    'value': '2',
  },
  {
    'label': 'Choam Khsant',
    'value': '3',
  },
  {
    'label': 'Kuleaen',
    'value': '4',
  },
  {
    'label': 'Rovieng',
    'value': '5',
  },
  {
    'label': 'Sangkum Thmei',
    'value': '6',
  },
  {
    'label': 'Tbaeng Mean Chey',
    'value': '7',
  },
  {
    'label': 'Preah Vihear municipality',
    'value': '8',
  },
];

List<Map<String, dynamic>> psList = [
  {
    'label': 'Bakan',
    'value': '1',
  },
  {
    'label': 'Kandieng',
    'value': '2',
  },
  {
    'label': 'Krakor',
    'value': '3',
  },
  {
    'label': 'Phnum Kravanh',
    'value': '4',
  },
  {
    'label': 'Pursat municipality',
    'value': '5',
  },
  {
    'label': 'Veal Veaeng',
    'value': '6',
  },
  {
    'label': 'Talou Sen Chey',
    'value': '7',
  },
];

List<Map<String, dynamic>> prvList = [
  {
    'label': 'Ba Phnum',
    'value': '1',
  },
  {
    'label': 'Kamchay Mear',
    'value': '2',
  },
  {
    'label': 'Kampong Trabaek',
    'value': '3',
  },
  {
    'label': 'Kanhchriech',
    'value': '4',
  },
  {
    'label': 'Me Sang',
    'value': '5',
  },
  {
    'label': 'Peam Chor',
    'value': '6',
  },
  {
    'label': 'Peam Ro',
    'value': '7',
  },
  {
    'label': 'Pea Reang',
    'value': '8',
  },
  {
    'label': 'Preah Sdach',
    'value': '9',
  },
  {
    'label': 'Prey Veaeng municipality',
    'value': '10',
  },
  {
    'label': 'Pou Rieng',
    'value': '1Sithor Kandal1',
  },
  {
    'label': '',
    'value': '12',
  },
  {
    'label': '',
    'value': '13',
  },
];

List<Map<String, dynamic>> tkList = [
  {
    'label': 'Angkor Borei',
    'value': '1',
  },
  {
    'label': 'Bati',
    'value': '2',
  },
  {
    'label': '	Bourei Cholsar',
    'value': '3',
  },
  {
    'label': 'Kiri Vong',
    'value': '4',
  },
  {
    'label': 'Koh Andaet',
    'value': '5',
  },
  {
    'label': 'Prey Kabbas',
    'value': '6',
  },
  {
    'label': 'Samraŏng',
    'value': '7',
  },
  {
    'label': 'Doun Kaev Municipality',
    'value': '8',
  },
  {
    'label': 'Tram Kak',
    'value': '9',
  },
  {
    'label': 'Treang',
    'value': '10',
  },
];
