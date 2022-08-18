import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('គម្រោងទី១២'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: Get.width,
                height: Get.height * .30,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://scontent.fpnh4-1.fna.fbcdn.net/v/t39.30808-6/295642000_604264958044329_7487903951630159379_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=4hFan0gRH0cAX-aahW8&_nc_ht=scontent.fpnh4-1.fna&oh=00_AT_zDKuIuHUEkgZ1NWPSotREEV6bzokLTcmm4UHKeXkO4A&oe=63032068'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              RichText(
                softWrap: true,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'ដីលក់ (ប្លង់រឹង L-Map) ជាប់ផ្លូវ 15ម៉ែត្រ​ 122 ម៉ែត្រពីទន្លេ ឡានអាចចូលដល់ក្បាលដី ម្ចាស់ដើម តម្លៃល្អ\n✅លក់តម្លៃ | Sale Price: \$150,000\n✅ទំហំដីសរុប | Land size: 1620m2\n✅ក្បាលដីជាប់ផ្លូវ | Frontage: 22m\n📍ទីតាំងពីតំបន់អភិវឌ្ឍន៍លីយ៉ុងផាត់ (13km ជាង): ភូមិកំពង់អុស ឃុំកំពង់អុស ស្រុកពញាឮ ខេត្តកណ្តាល.. ចូលមើលទីតាំង &ដីថ្មីៗ​ សូម Subscribe Channel \n👇តេឡេក្រាម សូមចុចទីនេះ \nhttps://t.me/neakprekaproperty\nTel: 077 875 346/ 010 480 223 (Telegram)\nទាក់ទងមក #អ្នកប្រឹក្សា-Neak Preksa Properties',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: Get.width,
                height: Get.height * .30,
                child: const DecoratedBox(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://scontent.fpnh4-1.fna.fbcdn.net/v/t39.30808-6/295642000_604264958044329_7487903951630159379_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=4hFan0gRH0cAX-aahW8&_nc_ht=scontent.fpnh4-1.fna&oh=00_AT_zDKuIuHUEkgZ1NWPSotREEV6bzokLTcmm4UHKeXkO4A&oe=63032068'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: Get.width * .30,
                    height: Get.height * .10,
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://scontent.fpnh4-1.fna.fbcdn.net/v/t39.30808-6/295642000_604264958044329_7487903951630159379_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=4hFan0gRH0cAX-aahW8&_nc_ht=scontent.fpnh4-1.fna&oh=00_AT_zDKuIuHUEkgZ1NWPSotREEV6bzokLTcmm4UHKeXkO4A&oe=63032068'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Get.width * .30,
                    height: Get.height * .10,
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://scontent.fpnh4-1.fna.fbcdn.net/v/t39.30808-6/295642000_604264958044329_7487903951630159379_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=4hFan0gRH0cAX-aahW8&_nc_ht=scontent.fpnh4-1.fna&oh=00_AT_zDKuIuHUEkgZ1NWPSotREEV6bzokLTcmm4UHKeXkO4A&oe=63032068'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Get.width * .30,
                    height: Get.height * .10,
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://scontent.fpnh4-1.fna.fbcdn.net/v/t39.30808-6/295642000_604264958044329_7487903951630159379_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=4hFan0gRH0cAX-aahW8&_nc_ht=scontent.fpnh4-1.fna&oh=00_AT_zDKuIuHUEkgZ1NWPSotREEV6bzokLTcmm4UHKeXkO4A&oe=63032068'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
