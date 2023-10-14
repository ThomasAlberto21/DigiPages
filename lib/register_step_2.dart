import 'package:digipages/login.dart';
import 'package:digipages/verification.dart';
import 'package:flutter/material.dart';

class RegisterStep2 extends StatelessWidget {
  const RegisterStep2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color blue = const Color(0xff2563eb);

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Register",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  const Text(
                    "Aplikasi belanja online terpercaya. Daftar sekarang dan dapatkan diskon 50%",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 50.0),
                  const AddressField(),
                  const SizedBox(height: 15.0),
                  const PostalCodeField(),
                  const SizedBox(height: 15.0),
                  const CountryOption(),
                  const SizedBox(height: 15.0),
                  const ProvinceOption(),
                  const SizedBox(height: 15.0),
                  const CityOption(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 40.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Verification(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(blue),
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                            horizontal: 140,
                            vertical: 18.0,
                          ),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                      child: const Text(
                        "Register",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AddressField extends StatefulWidget {
  const AddressField({Key? key}) : super(key: key);

  @override
  State<AddressField> createState() => _AddressFieldState();
}

class PostalCodeField extends StatefulWidget {
  const PostalCodeField({Key? key}) : super(key: key);

  @override
  State<PostalCodeField> createState() => _PostalCodeFieldState();
}

class CountryOption extends StatefulWidget {
  const CountryOption({Key? key}) : super(key: key);

  @override
  State<CountryOption> createState() => _CountryOptionState();
}

class ProvinceOption extends StatefulWidget {
  const ProvinceOption({Key? key}) : super(key: key);

  @override
  State<ProvinceOption> createState() => _ProvinceOptionState();
}

class CityOption extends StatefulWidget {
  const CityOption({Key? key}) : super(key: key);

  @override
  State<CityOption> createState() => _CityOptionState();
}

class _AddressFieldState extends State<AddressField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Alamat',
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        prefixIcon: Icon(Icons.home),
      ),
    );
  }
}

class _PostalCodeFieldState extends State<PostalCodeField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Kode Pos',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        prefixIcon: Icon(Icons.local_library_outlined),
      ),
    );
  }
}

class _CountryOptionState extends State<CountryOption> {
  String _selectedCountry = 'Indonesia';

  final List<String> _countries = [
    'Indonesia',
    'Malaysia',
    'Singapura',
    'Thailand',
    'Vietnam',
    'Filipina',
    'Laos',
    'Myanmar',
    'Brunei Darussalam',
    'Kamboja',
    'Timor Leste',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10.0),
        DropdownButtonFormField(
          value: _selectedCountry,
          decoration: const InputDecoration(
            labelText: 'Negara',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            prefixIcon: Icon(Icons.flag),
          ),
          onChanged: (newValue) {
            setState(() {
              _selectedCountry = newValue.toString();
            });
          },
          items: _countries.map((country) {
            return DropdownMenuItem(
              value: country,
              child: Text(country),
            );
          }).toList(),
        ),
        const SizedBox(height: 10.0)
      ],
    );
  }
}

class _ProvinceOptionState extends State<ProvinceOption> {
  String _selectedProvince = 'Jawa Timur';

  final List<String> _provinces = [
    "Aceh",
    "Sumatera Utara",
    "Sumatera Barat",
    "Riau",
    "Jambi",
    "Sumatera Selatan",
    "Bangka Belitung",
    "Bengkulu",
    "Lampung",
    "DKI Jakarta",
    "Jawa Barat",
    "Jawa Tengah",
    "Daerah Istimewa Yogyakarta",
    "Jawa Timur",
    "Kalimantan Barat",
    "Kalimantan Tengah",
    "Kalimantan Selatan",
    "Kalimantan Timur",
    "Sulawesi Utara",
    "Sulawesi Tengah",
    "Sulawesi Selatan",
    "Sulawesi Tenggara",
    "Gorontalo",
    "Maluku",
    "Maluku Utara",
    "Papua",
    "Papua Barat",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10.0),
        DropdownButtonFormField(
          value: _selectedProvince,
          decoration: const InputDecoration(
            labelText: 'Provinsi',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            prefixIcon: Icon(Icons.account_balance_rounded),
          ),
          onChanged: (newValue) {
            setState(() {
              _selectedProvince = newValue.toString();
            });
          },
          items: _provinces.map((country) {
            return DropdownMenuItem(
              value: country,
              child: Text(country),
            );
          }).toList(),
        ),
        const SizedBox(height: 10.0)
      ],
    );
  }
}

class _CityOptionState extends State<CityOption> {
  String _selectedCity = 'Jakarta';

  final List<String> _citys = [
    "Jakarta",
    "Bandung",
    "Surabaya",
    "Medan",
    "Semarang",
    "Makassar",
    "Palembang",
    "Jogja",
    "Denpasar",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10.0),
        DropdownButtonFormField(
          value: _selectedCity,
          decoration: const InputDecoration(
            labelText: 'Kota',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            prefixIcon: Icon(Icons.location_city),
          ),
          onChanged: (newValue) {
            setState(() {
              _selectedCity = newValue.toString();
            });
          },
          items: _citys.map((country) {
            return DropdownMenuItem(
              value: country,
              child: Text(country),
            );
          }).toList(),
        ),
        const SizedBox(height: 10.0)
      ],
    );
  }
}
