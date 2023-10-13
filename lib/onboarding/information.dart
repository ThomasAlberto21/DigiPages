import 'package:digipages/welcome.dart';
import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  const Information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color blue = const Color(0xff2563eb);
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Stack(
          children: [
            const SizedBox(height: 100.0),
            Positioned(
              top: MediaQuery.of(context).size.height / 4,
              left: MediaQuery.of(context).size.width / 2 - 150,
              child: Image.asset(
                "images/information.png",
                height: 300,
                width: 300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "Informasi Lengkap",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                      "Dapatkan informasi tentang detail barang , status , keterangan dan lokasi barang yang ingin dipesan.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(height: 60.0),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 50.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: (CircleBorder(
                                  side: BorderSide(
                                    color: blue,
                                    width: 2.0,
                                  ),
                                )),
                              ),
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: blue,
                                ),
                                padding: const EdgeInsets.all(15.0),
                                onPressed: null,
                                iconSize: 30.0,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Welcome(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: blue,
                                shape: (const CircleBorder()),
                              ),
                              child: const IconButton(
                                icon: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                ),
                                padding: EdgeInsets.all(15.0),
                                onPressed: null,
                                iconSize: 30.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
